using Grpc.Core;

namespace GrpcService.Services;

public class DataService : Data.DataBase
{
    private readonly ILogger<DataService> _logger;

    public DataService(ILogger<DataService> logger) => _logger = logger;

    public override Task<Reply> PostData(Request request, ServerCallContext context)
    {
        // int lastId =  
        
        foreach (var packet in request.Packets)
        {
            
        }
        var d = 1;
        return Task.FromResult(new Reply());
    }
}