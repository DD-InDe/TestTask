using Grpc.Core;
using GrpcService.Models;
using Microsoft.EntityFrameworkCore;

namespace GrpcService.Services;

public class DataService(ILogger<DataService> logger, GrpcDbContext dbContext) : DataV1.DataV1Base
{
    private readonly ILogger<DataService> _logger = logger;

    public override async Task<Reply> PostData(Request request, ServerCallContext context)
    {
        try
        {
            List<GrpcData> dataList = new List<GrpcData>();
            int i = 1;
            DateTime packetTimeStamp = DateTime.SpecifyKind(Convert.ToDateTime(request.PacketTimeStamp), DateTimeKind.Utc);

            foreach (var packet in request.PacketData.Data)
            {
                GrpcData data = new GrpcData()
                {
                    PacketSeqNum = request.PacketSeqNum,
                    RecordSeqNum = i,
                    Decimal1 = Convert.ToDecimal(packet.Decimal1),
                    Decimal2 = Convert.ToDecimal(packet.Decimal2),
                    Decimal3 = Convert.ToDecimal(packet.Decimal3),
                    Decimal4 = Convert.ToDecimal(packet.Decimal4),
                    PacketTimeStamp = packetTimeStamp,
                    RecordTimeStamp = DateTime.SpecifyKind(DateTime.Now, DateTimeKind.Utc)
                };

                i++;
                dataList.Add(data);
            }

            await dbContext.GrpcData.AddRangeAsync(dataList);
            await dbContext.SaveChangesAsync();
            
            return await Task.FromResult(new Reply(){StatusCode = 200});
        }
        catch (Exception e)
        {
            Console.WriteLine(e);
            throw;
        }
    }
}