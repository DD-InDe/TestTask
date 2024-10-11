namespace GrpcClient.Models;

public class AppSettings
{
    public int TotalPackets { get; set; }
    public int RecordsInPacket { get; set; }
    public string GrpcServerAddress { get; set; }
    public int GrpcServerPort { get; set; }
}