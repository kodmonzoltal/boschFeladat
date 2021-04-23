-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Ápr 23. 12:12
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
-- Adatbázis: `cars`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `autos`
--

CREATE TABLE `autos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `megnevezes` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `autos`
--

INSERT INTO `autos` (`id`, `megnevezes`, `created_at`, `updated_at`) VALUES
(1, 'Volkswagen Passat', NULL, NULL),
(2, 'Volkswagen Golf', NULL, NULL),
(3, 'Volkswagen Arteon', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `auto_eletkors`
--

CREATE TABLE `auto_eletkors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `megnevezes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2021_04_20_083652_create_autos_table', 1),
(20, '2021_04_20_083711_create_auto_eletkors_table', 1),
(21, '2021_04_20_083739_create_szervizkonyvs_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szervizkonyvs`
--

CREATE TABLE `szervizkonyvs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tulajdonos` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `garancialis` tinyint(1) NOT NULL,
  `eletkor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `szerviz_kezdete` datetime NOT NULL,
  `szerviz_vege` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `szervizkonyvs`
--

INSERT INTO `szervizkonyvs` (`id`, `tulajdonos`, `auto`, `garancialis`, `eletkor`, `szerviz_kezdete`, `szerviz_vege`, `created_at`, `updated_at`) VALUES
(1, 'asd', 'Volkswagen Passat', 1, '0-5', '2021-04-19 18:38:00', NULL, '2021-04-22 15:20:34', '2021-04-22 15:20:34'),
(2, 'asd', 'Volkswagen Passat', 1, '10-', '2021-04-19 18:38:00', NULL, '2021-04-22 15:20:41', '2021-04-22 15:20:41'),
(3, 'ssss', 'Volkswagen Passat', 1, '5-10', '2021-04-22 19:45:00', NULL, '2021-04-22 15:45:24', '2021-04-22 15:45:24'),
(4, 'wq', 'Volkswagen Arteon', 0, '5-10', '2021-03-31 19:45:00', NULL, '2021-04-22 15:45:35', '2021-04-22 15:45:35'),
(5, 'asd', 'Volkswagen Golf', 1, '0-5', '2021-04-03 19:46:00', NULL, '2021-04-22 15:46:37', '2021-04-22 15:46:37'),
(6, 's', 'Volkswagen Passat', 1, '10-', '2021-04-03 19:47:00', NULL, '2021-04-22 15:47:16', '2021-04-22 15:47:16'),
(7, 'asd', 'Volkswagen Arteon', 1, '5-10', '2021-04-08 19:48:00', '2021-04-03 19:47:00', '2021-04-22 15:48:27', '2021-04-22 15:48:27'),
(8, 'asdqqq', 'Volkswagen Arteon', 1, '5-10', '2021-04-16 19:48:00', '2021-04-03 19:47:00', '2021-04-22 15:48:46', '2021-04-22 15:48:46');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `autos`
--
ALTER TABLE `autos`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `auto_eletkors`
--
ALTER TABLE `auto_eletkors`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `szervizkonyvs`
--
ALTER TABLE `szervizkonyvs`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `autos`
--
ALTER TABLE `autos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `auto_eletkors`
--
ALTER TABLE `auto_eletkors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT a táblához `szervizkonyvs`
--
ALTER TABLE `szervizkonyvs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
