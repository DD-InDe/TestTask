using System.Text.Json;
using Grpc.Net.Client;
using GrpcClient;
using GrpcClient.Models;

try
{
    Stream config = File.OpenRead("Resources/config.json");
    JsonSerializerOptions options = new JsonSerializerOptions() { PropertyNameCaseInsensitive = true };

    AppSettings? settings = JsonSerializer.Deserialize<AppSettings>(config, options);
    config.Close();
    
    if (settings != null)
    {
        string pathPackageInfoFile = "data/file.txt";

        using var channel = GrpcChannel.ForAddress($"{settings.GrpcServerAddress}:{settings.GrpcServerPort}");
        var client = new DataV1.DataV1Client(channel);

        int packetNum = Convert.ToInt32(File.ReadAllText(pathPackageInfoFile)) + 1;


        Random random = new();

        for (int i = 0; i < settings.TotalPackets; i++)
        {
            Packet packet = new Packet();
            for (int j = 0; j < settings.RecordsInPacket; j++)
            {
                packet.Data.Add(new Data
                {
                    Decimal1 = random.Next(int.MinValue, int.MaxValue),
                    Decimal2 = random.Next(int.MinValue, int.MaxValue),
                    Decimal3 = random.Next(int.MinValue, int.MaxValue),
                    Decimal4 = random.Next(int.MinValue, int.MaxValue)
                });
            }

            Request request = new Request()
            {
                PacketTimeStamp = DateTime.Now.ToString("s"),
                PacketSeqNum = packetNum,
                NRecords = packet.Data.Count,
                PacketData = packet
            };
            packetNum++;
            File.WriteAllText(pathPackageInfoFile,packetNum.ToString());
            
            var reply = await client.PostDataAsync(request);
            Console.WriteLine($"Статус {i} пакета: {reply.StatusCode}");

            await Task.Delay(TimeSpan.FromSeconds(settings.TimeInterval));
        }
    }
    else
        throw new NullReferenceException("Проверьте файл config.json на наличие ошибок");
}
catch (Exception exception)
{
    Console.WriteLine($"Ошибка: {exception.Message}");
}