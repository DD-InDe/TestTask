using System.Text.Json;
using Grpc.Net.Client;
using GrpcClient;
using GrpcClient.Models;

try
{
    using var channel = GrpcChannel.ForAddress("http://host.docker.internal");

    Stream config = File.OpenRead("../../../Resources/config.json");
    JsonSerializerOptions options = new JsonSerializerOptions() { PropertyNameCaseInsensitive = true };

    var client = new DataV1.DataV1Client(channel);
    AppSettings? settings = JsonSerializer.Deserialize<AppSettings>(config, options);

    if (settings != null)
    {
        if (settings.RecordsInPacket != 4)
        {
            throw new ArgumentException(
                "Извините, в пакете может быть только 4 записи. \"recordsInPacket:\" config.json");
        }

        int packetNum = Convert.ToInt32(File.ReadAllText("../../../Resources/packageinfo.txt"));

        Packet packet = new Packet();
        Random random = new();
        
        for (int i = 0; i < settings.TotalPackets; i++)
        {
            packet.Data.Add(new Data
            {
                Decimal1 = random.Next(int.MinValue,int.MaxValue),
                Decimal2 = random.Next(int.MinValue,int.MaxValue),
                Decimal3 = random.Next(int.MinValue,int.MaxValue),
                Decimal4 = random.Next(int.MinValue,int.MaxValue)
            });
        }

        Request request = new Request()
        {
            PacketTimeStamp = DateTime.Now.ToString("s"),
            PacketSeqNum = packetNum,
            NRecords = packet.Data.Count,
            PacketData = packet
        };
        var reply = await client.PostDataAsync(request);
    }

    throw new NullReferenceException("Проверьте файл config.json на наличие ошибок");
}
catch (Exception exception)
{
    Console.WriteLine($"Ошибка: {exception.Message}");
}