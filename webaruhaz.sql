-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2026. Már 29. 16:14
-- Kiszolgáló verziója: 8.0.45
-- PHP verzió: 8.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `webaruhaz`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `adatok`
--

CREATE TABLE `adatok` (
  `id` int NOT NULL,
  `tipus` varchar(50) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `kep` varchar(200) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `gyarto` varchar(50) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `termek_model` varchar(50) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `ar` int DEFAULT NULL,
  `leiras` varchar(100) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `technikai_ertek` varchar(100) COLLATE utf8mb3_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `adatok`
--

INSERT INTO `adatok` (`id`, `tipus`, `kep`, `gyarto`, `termek_model`, `ar`, `leiras`, `technikai_ertek`) VALUES
(1, 'Bluetooth fülhallgató', 'images/airpods.png', 'Apple', 'Airpods Pro Gen 2', 99990, 'Aktív zajszűréssel és adaptív átviteli móddal rendelkező prémium fülhallgató', 'Chip: Apple H2 processzor, Üzemidő: Akár 6 óra, Védettség: IP54'),
(2, 'Gaming Monitor', 'images/monitor.png', 'Samsung', 'Odyssey G5 G50D', 114900, 'Gyors frissítésű, éles képet adó monitor versenyszerű játékokhoz', 'Frissítés: 180 Hz, Panel: IPS, Felbontás: 2560 x 1440'),
(3, 'Külső SSD', 'images/ssd.png', 'Samsung', 'T7 Shield 1TB', 42500, 'Ütésálló, gumírozott külső borítással ellátott nagy sebességű adattároló', 'Olvasási sebesség: 1050 MB/s, Csatlakozó: USB 3.2 Gen 2, Védettség: IP65'),
(4, 'Wi-Fi Router', 'images/wifi_router.png', 'TP-Link', 'Archer AX55', 31900, 'Modern Wi-Fi 6 szabványt támogató router stabil és gyors vezeték nélküli hálózathoz', 'Sebesség: 3000 Mbps, Szabvány: Wi-Fi 6, Portok: 5x Gigabit'),
(5, 'Videókártya', 'images/videokartya.png', 'ASUS', 'Dual GeForce RTX 4060 OC 8GB', 139000, 'Kompakt, kétventilátoros grafikus kártya kiváló 1080p játékélményhez', 'Memória: 8GB GDDR6, Magórajel: 2535 MHz (OC), Technológia: DLSS 3');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `adatok`
--
ALTER TABLE `adatok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `adatok`
--
ALTER TABLE `adatok`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
