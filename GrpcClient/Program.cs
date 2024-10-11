string dt = DateTime.Now.ToString("s");

Console.WriteLine(dt);
Console.WriteLine(Convert.ToDateTime(dt).ToString("HH:mm:ss"));