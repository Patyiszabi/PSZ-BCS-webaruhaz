using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using MySqlConnector;

namespace PSZ_BCS_webaruhaz
{
    internal class Program
    {

        static void Main(string[] args)
        {
            MySqlConnection kapcsolat;
            var builder = new MySqlConnectionStringBuilder
            {
                Server = "127.0.0.1",
                UserID = "root",
                Password = "mysql"

            };

            kapcsolat = new MySqlConnection(builder.ConnectionString);
            kapcsolat.Open();

            var parancs = kapcsolat.CreateCommand();
            parancs.CommandText = "DROP DATABASE IF EXISTS webaruhaz;" +
                "CREATE DATABASE webaruhaz CHARACTER SET utf8 Collate utf8_hungarian_ci;" +
                "USE webaruhaz";
            parancs.ExecuteNonQuery();



            parancs.CommandText = "CREATE TABLE adatok (" +
              "id INT NOT NULL PRIMARY KEY AUTO_INCREMENT," +
              "tipus VARCHAR(50)," +
              "kep VARCHAR(200)," +
              "gyarto VARCHAR(50)," +
              "termek_model VARCHAR(50)," +
              "ar INT," +
              "leiras VARCHAR(100)," +
              "technikai_ertek VARCHAR(100))";
            parancs.ExecuteNonQuery();


            parancs.CommandText = "INSERT INTO adatok (tipus, kep, gyarto, termek_model, ar, leiras, technikai_ertek) VALUES " +
               "('Bluetooth fülhallgató', 'https://localhost:7024/images/airpods.png','Apple', 'Airpods Pro Gen 2', 99990, 'Aktív zajszűréssel és adaptív átviteli móddal rendelkező prémium fülhallgató', 'Chip: Apple H2 processzor, Üzemidő: Akár 6 óra, Védettség: IP54')," +
                "('Gaming Monitor', 'https://localhost:7024/images/monitor.png', 'Samsung', 'Odyssey G5 G50D', 114900, 'Gyors frissítésű, éles képet adó monitor versenyszerű játékokhoz', 'Frissítés: 180 Hz, Panel: IPS, Felbontás: 2560 x 1440')," +
                "('Külső SSD', 'https://localhost:7024/images/ssd.png', 'Samsung', 'T7 Shield 1TB', 42500, 'Ütésálló, gumírozott külső borítással ellátott nagy sebességű adattároló', 'Olvasási sebesség: 1050 MB/s, Csatlakozó: USB 3.2 Gen 2, Védettség: IP65')," +
                "('Wi-Fi Router', 'https://images.euronics.hu/product_images/800x600/resize/333_49ar7t79.jpg?v=3', 'TP-Link', 'Archer AX55', 31900, 'Modern Wi-Fi 6 szabványt támogató router stabil és gyors vezeték nélküli hálózathoz', 'Sebesség: 3000 Mbps, Szabvány: Wi-Fi 6, Portok: 5x Gigabit')," +
                "('Videókártya', 'https://localhost:7024/images/videokartya.png', 'ASUS', 'Dual GeForce RTX 4060 OC 8GB', 139000, 'Kompakt, kétventilátoros grafikus kártya kiváló 1080p játékélményhez', 'Memória: 8GB GDDR6, Magórajel: 2535 MHz (OC), Technológia: DLSS 3')";


            parancs.ExecuteNonQuery();

        }
    }
}
