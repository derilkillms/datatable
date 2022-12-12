-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Des 2022 pada 04.54
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_datatable`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dl_customer`
--

CREATE TABLE `dl_customer` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dl_customer`
--

INSERT INTO `dl_customer` (`id`, `name`, `country`, `phone`, `address`, `email`) VALUES
(1, 'Myra Soto', 'Austria', '(847) 264-4054', '861-6228 Eget Ave', 'phasellus.elit@outlook.org'),
(2, 'Illana Crawford', 'Norway', '1-597-631-4847', '497-3025 Lectus Road', 'ut@hotmail.edu'),
(3, 'Kevyn Finley', 'South Africa', '1-681-453-5635', 'P.O. Box 376, 5056 Leo. Avenue', 'ornare.fusce@outlook.org'),
(4, 'Jackson Skinner', 'Belgium', '1-418-821-9285', '3045 Non, Ave', 'sem.magna@google.com'),
(5, 'Kelly Acosta', 'Norway', '1-821-194-5542', 'P.O. Box 199, 5478 Eu, Ave', 'sem.pellentesque.ut@protonmail.edu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dl_customer`
--
ALTER TABLE `dl_customer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dl_customer`
--
ALTER TABLE `dl_customer`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
