using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace GrpcService.Models;

public class GrpcData
{
    [Key, Column(Order = 0)] public int PacketSeqNum { get; set; }

    [Key, Column(Order = 1)] public int RecordSeqNum { get; set; }

    public DateTime PacketTimeStamp { get; set; }

    public DateTime RecordTimeStamp { get; set; }

    public Decimal Decimal1 { get; set; }
    public Decimal Decimal2 { get; set; }
    public Decimal Decimal3 { get; set; }
    public Decimal Decimal4 { get; set; }
}