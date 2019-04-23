-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 23 2019 г., 22:39
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `booklog`
--

CREATE TABLE `booklog` (
  `book_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date_taked` date NOT NULL,
  `date_returned` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `booklog`
--

INSERT INTO `booklog` (`book_id`, `student_id`, `date_taked`, `date_returned`) VALUES
(1, 1, '2019-02-04', '2019-03-14'),
(1, 2, '2019-04-01', '2019-04-16'),
(4, 3, '2019-03-11', '2019-04-22'),
(5, 1, '2019-01-08', '2019-04-22'),
(4, 1, '2019-03-11', '2019-04-17');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` text NOT NULL,
  `publishingOf` text NOT NULL,
  `year` year(4) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `publishingOf`, `year`, `count`) VALUES
(1, 'Книга 1', 'Автор 1', 'СМА', 2019, 10),
(2, 'Книга 2', 'Автор 1', 'СМА', 2010, 5),
(3, 'книга 3', 'Автор 2', 'СМА', 1998, 5),
(4, 'Книга 5', 'Автор 6', 'ПРОФФ', 1997, 85),
(5, 'Книга 6', 'Автор 1', 'ПРОФФ', 2003, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `fio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `fio`) VALUES
(1, 'Витя'),
(2, 'Паша'),
(3, 'Оля'),
(4, 'Надя'),
(5, 'Гриша'),
(6, 'Серёжа'),
(7, 'Стёпа'),
(8, 'Зина');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
