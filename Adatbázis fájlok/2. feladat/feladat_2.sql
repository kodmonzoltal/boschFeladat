-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Ápr 23. 12:33
-- Kiszolgáló verziója: 10.4.11-MariaDB
-- PHP verzió: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `feladat_2`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `car`
--

CREATE TABLE `car` (
  `id` int(10) NOT NULL,
  `brand` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `car`
--

INSERT INTO `car` (`id`, `brand`, `model`) VALUES
(1, 'Opel', 'Vectra'),
(2, 'Opel', 'Astra'),
(3, 'Fiat', '126'),
(4, 'Fiat', 'Seicento'),
(5, 'Suzuki', 'Swift'),
(6, 'Ford', 'fiesta'),
(7, 'Ford', 'Mondeo'),
(8, 'Volkswagen', 'Arteon');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nem` tinyint(4) DEFAULT NULL,
  `szemelyi_igazolvany_szam` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `user`
--

INSERT INTO `user` (`id`, `name`, `nem`, `szemelyi_igazolvany_szam`) VALUES
(1, 'Kozma Imre', NULL, NULL),
(2, 'Máté Benjamin', NULL, NULL),
(3, 'Miksa Ármin', NULL, NULL),
(4, 'Oláh Adrián', NULL, NULL),
(5, 'Lakatos Kevin', NULL, NULL),
(6, 'Kovács Erik', NULL, NULL),
(7, 'Kis Domonkos', NULL, NULL),
(8, 'Borbély Valentin', NULL, NULL),
(9, 'Zobor Rudolf', NULL, NULL),
(10, 'Faragó Gergo', NULL, NULL),
(11, 'Molnár Alexander', NULL, NULL),
(12, 'Bács Zsombor', NULL, NULL),
(13, 'Varga Bendegúz', NULL, NULL),
(14, 'Szilágyi Bertalan', NULL, NULL),
(15, 'Dudás Ferenc', NULL, NULL),
(16, 'Mezei Nándor', NULL, NULL),
(17, 'Soós Gyula', NULL, NULL),
(18, 'Váradi Jakab', NULL, NULL),
(19, 'Balázs Szilveszter', NULL, NULL),
(20, 'Hajdú Benjámin', NULL, NULL),
(21, 'Orosz Róbert', NULL, NULL),
(22, 'Kerekes László', NULL, NULL),
(23, 'Kende Áron', NULL, NULL),
(24, 'Takács Martin', NULL, NULL),
(25, 'Tamás Vilmos', NULL, NULL),
(26, 'Lakatos Miklós', NULL, NULL),
(27, 'Apród Barna', NULL, NULL),
(28, 'Balázs Norbert', NULL, NULL),
(29, 'Péter Donát', NULL, NULL),
(30, 'Barta Noel', NULL, NULL),
(31, 'Egyed Ármin', NULL, NULL),
(32, 'Novák Benedek', NULL, NULL),
(33, 'Tamás Csanád', NULL, NULL),
(34, 'Soós Antal', NULL, NULL),
(35, 'Bakos Barnabás', NULL, NULL),
(36, 'Gáspár Levente', NULL, NULL),
(37, 'Simon András', NULL, NULL),
(38, 'Balogh Kálmán', NULL, NULL),
(39, 'Fülöp Krisztián', NULL, NULL),
(40, 'Budai Jakab', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_car`
--

CREATE TABLE `user_car` (
  `user` int(10) NOT NULL,
  `car` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `user_car`
--

INSERT INTO `user_car` (`user`, `car`) VALUES
(1, 2),
(1, 4),
(1, 6),
(2, 5),
(3, 1),
(3, 3),
(4, 2),
(5, 1),
(5, 5),
(6, 7),
(8, 2),
(10, 4),
(11, 4),
(12, 2),
(13, 3),
(14, 2),
(15, 5),
(17, 6),
(18, 2),
(19, 3),
(20, 4),
(21, 7),
(22, 2),
(23, 2),
(25, 1),
(25, 2),
(26, 6),
(28, 5),
(29, 3),
(30, 3),
(31, 1),
(32, 3),
(33, 5),
(34, 1),
(35, 3),
(37, 7),
(38, 4),
(39, 4),
(40, 2),
(1, 8),
(3, 8),
(4, 8),
(5, 8),
(6, 8),
(7, 8),
(8, 8),
(9, 8);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user_car`
--
ALTER TABLE `user_car`
  ADD KEY `FK_user_id_idx` (`user`),
  ADD KEY `FK_car_id_idx` (`car`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `car`
--
ALTER TABLE `car`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `user_car`
--
ALTER TABLE `user_car`
  ADD CONSTRAINT `FK_car_id` FOREIGN KEY (`car`) REFERENCES `car` (`id`),
  ADD CONSTRAINT `FK_user_id` FOREIGN KEY (`user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
