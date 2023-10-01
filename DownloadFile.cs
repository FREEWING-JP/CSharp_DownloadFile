using System;
using System.Net;

namespace DownloadFile
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length < 2) return;

            string url = args[0];
            string fileName = args[1];

            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

            WebClient wc = new WebClient();
            wc.DownloadFile(new Uri(url), fileName);
            wc.Dispose();
        }
    }
}
