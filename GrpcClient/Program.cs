string url = "http://host.docker.internal:8080/Controller1";
HttpClient client = new HttpClient();

await GetState();

async Task GetState()
{
    try
    {
        var message = await client.GetAsync(url);
        Console.WriteLine(await message.Content.ReadAsStringAsync());
    }
    catch (Exception e)
    {
        await Task.Delay(TimeSpan.FromSeconds(5));
        Console.WriteLine($"Exception: {e.Message}");
        await GetState();
    }
}