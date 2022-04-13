-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 13 2022 г., 14:46
-- Версия сервера: 10.4.22-MariaDB
-- Версия PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `MedianaTask`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `articleText` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `articleText`, `user_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Рабочие китайской компании устроили забастовку в Жамбылской области', '<p>Д<strong>орожные рабочие устроили забастовку на строящейся магистрали Мерке - Бурылбайтал в Жамбылской области.</strong> Люди требуют повышения заработной платы и улучшения условий труда. Об этом говорится в сюжете телеканала&nbsp;<a href=\"https://inbusiness.kz/ru/last/v-zhambylskoj-oblasti-dorozhniki-otkazalis-vyhodit-na-rabotu\" target=\"_blank\" rel=\"noopener\">Atameken Business</a>, передает&nbsp;<a href=\"https://tengrinews.kz/\" target=\"_blank\" rel=\"noopener\">Tengrinews.kz</a>.</p>\r\n<p>По словам бастующих, вот уже три года иностранная китайская компания выплачивает им минимальную заработную плату. Более 80 рабочих обратились за помощью к Президенту Казахстана, они отказались выходить на работу пока руководство не выполнит все их требования.</p>', 1, '202204122327photo_393753.png', '2022-04-12 17:27:25', '2022-04-12 17:27:25'),
(2, 'В WhatsApp появится новая функция - СМИ', '<p>В WhatsApp решили ввести возможность рисовать прямо в приложении мессенджера, передает&nbsp;<a href=\"https://tengrinews.kz/\" target=\"_blank\" rel=\"noopener\">Tengrinews.kz</a>&nbsp;со ссылкой на&nbsp;<a href=\"https://wabetainfo.com/whatsapp-beta-for-ios-22-8-0-73-whats-new/\" target=\"_blank\" rel=\"nofollow noopener\">WABetaInfo</a>.</p>\r\n<p>Согласно данным портала, в приложении имеются инструменты для рисования. Их набор будет расширен в свежем обновлении. На данный момент в приложении доступен только один карандаш. Однако скоро пользователи смогут рисовать прямо на изображениях, их можно будет редактировать с помощью заметки.&nbsp;</p>\r\n<p>WhatsApp уже распространяет изменения среди некоторых бета-тестеров, установивших последние обновления бета-версии WhatsApp для iOS, в частности обновление WhatsApp beta for iOS 22.8.0.73.</p>\r\n<p>Отмечается, что новое обновление приложения существенно расширит набор инструментов. Появятся три новых значка для карандаша, а также инструмент размытия. Опцию тестируют в бета-сборке для iOS, которая доступна в некоторых регионах мира.&nbsp;</p>\r\n<p>Ранее в WhatsApp&nbsp;<a href=\"https://tengrinews.kz/internet/v-whatsapp-poyavitsya-novaya-funktsiya-465622/\" target=\"_blank\" rel=\"noopener\">появился</a>&nbsp;новый раздел, посвященный сообществам.</p>', 1, '202204122330photo_393722.jpeg', '2022-04-12 17:30:01', '2022-04-12 17:30:01'),
(3, '\"Вильярреал\" сенсационно выбил \"Баварию\" из Лиги чемпионов', '<p>Вечером во вторник, 12 апреля, состоялся ответный матч четвертьфинала Лиги чемпионов по футболу между мюнхенской \"Баварией\" и испанским \"Вильярреалом\" , передает&nbsp;<a href=\"https://tengrinews.kz/\" target=\"_blank\" rel=\"noopener\">Tengrinews.kz</a>.Игра завершилась вничью - 1:1. В составе хозяев отличился Роберт Левандовский (52-я минута), у гостей мяч забил Саму Чуквуэзе (88). Первая игра в Испании завершилась победой \"Вильярреала\" - 1:0.</p>\r\n<p>Таким образом, по итогам двух встреч \"Бавария\", которая считалась одним из фаворитов, оказалась за бортом турнира. В полуфинале Лиги чемпионов \"Вильярреал\" сыграет с победителем пары \"Бенфика\" - \"Ливерпуль\".</p>\r\n<p>\"Вильярреал\" вышел в стадию 1/2 финала Лиги чемпионов впервые с 2006 года.&nbsp;Тогда \"желтая субмарина\" сумела пройти на стадии 1/8 финала \"Глазго Рейнджерс\" за счет правила выездного гола с общим счетом 3:3 по сумме двух матчей. В 1/4 финала \"Вильярреал\" также за счет гола на выезде прошел \"Интер\" со счетом 2:2 по сумме двух встреч. В 1/2 финала команда не сумела пройти лондонский \"Арсенал\".</p>', 1, '202204122331photo_393756.jpeg', '2022-04-12 17:31:10', '2022-04-12 17:31:10'),
(4, 'Вооруженный конфликт вспыхнул на кыргызско-таджикской границе', '<p>Очередной конфликт с применением оружия произошел вечером 12 апреля на границе Кыргызстана и Таджикистана, передает корреспондент&nbsp;<a href=\"https://tengrinews.kz/\" target=\"_blank\" rel=\"noopener\">Tengrinews.kz</a>.</p>\r\n<p>По данным пресс-службы Пограничной службы ГКНБ Кыргызстана, инцидент вспыхнул в местности Селкана Лейлекского района Баткенской области, где нес службу кыргызский пограничный наряд.</p>\r\n<p>\"На сопредельной территории появились таджикские пограничники, которые, увидев кыргызских военнослужащих, продолжили двигаться к условной линии госграницы. Требования кыргызских пограничников остановиться и отойти от линии границы на свою территорию пограничный наряд Таджикистана проигнорировал и пересек границу, зайдя на территорию Кыргызстана вглубь на 20 метров. В целях недопущения прохождения таджикских пограничников вглубь территории пограничный наряд ПС ГКНБ КР произвел предупредительные выстрелы в воздух\", - сообщили в пресс-службе ведомства.</p>\r\n<p>Сообщается, что пограничники Таджикистана в ответ открыли огонь по кыргызским пограничникам. В результате этой перестрелки раненых и пострадавших с кыргызской стороны не было.</p>\r\n<p>Однако позже, возникла повторная перестрелка, в ходе которой пострадал кыргызстанский военнослужащий. Также сообщается, что ранены двое таджикских военнослужащих.&nbsp;</p>\r\n<p>\"Около 21.17 в ходе переговоров между пограничными представителями Кыргызстана и Таджикистана, прибывшие на место инцидента в качестве усиления пограничники Таджикистана открыли огонь по военнослужащим ПС ГКНБ Кыргызстана.</p>\r\n<p>Завязалась повторная перестрелка, которая длилась около 30 минут. В ходе повторной перестрелки был ранен военнослужащий ПС ГКНБ КР. Далее таджикская сторона начала обстрел кыргызского села Достук из минометов\", - проинформировала погранслужба ГКНБ КР.&nbsp;Отмечается, что минометный обстрел прекратился в 22:15 часов по местному времени.&nbsp;</p>', 1, '202204122332photo_393754.jpeg', '2022-04-12 17:32:07', '2022-04-12 17:32:07');

-- --------------------------------------------------------

--
-- Структура таблицы `article_tag`
--

CREATE TABLE `article_tag` (
  `article_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `article_tag`
--

INSERT INTO `article_tag` (`article_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(28, 2, '2022-04-11 07:32:54', '2022-04-11 07:32:54'),
(28, 3, '2022-04-11 07:32:54', '2022-04-11 07:32:54'),
(28, 4, '2022-04-11 07:32:54', '2022-04-11 07:32:54'),
(29, 2, '2022-04-11 07:34:38', '2022-04-11 07:34:38'),
(29, 3, '2022-04-11 07:34:38', '2022-04-11 07:34:38'),
(29, 4, '2022-04-11 07:34:38', '2022-04-11 07:34:38'),
(36, 2, '2022-04-11 08:20:11', '2022-04-11 08:20:11'),
(36, 3, '2022-04-11 08:20:11', '2022-04-11 08:20:11'),
(38, 2, '2022-04-11 11:55:03', '2022-04-11 11:55:03'),
(38, 3, '2022-04-11 11:55:03', '2022-04-11 11:55:03'),
(40, 2, '2022-04-11 11:56:50', '2022-04-11 11:56:50'),
(40, 3, '2022-04-11 11:56:50', '2022-04-11 11:56:50'),
(40, 4, '2022-04-11 11:56:50', '2022-04-11 11:56:50'),
(40, 4, '2022-04-11 12:02:32', '2022-04-11 12:02:32'),
(40, 2, '2022-04-11 12:02:44', '2022-04-11 12:02:44'),
(41, 2, '2022-04-11 12:05:10', '2022-04-11 12:05:10'),
(41, 3, '2022-04-11 12:05:10', '2022-04-11 12:05:10'),
(41, 2, '2022-04-11 12:05:18', '2022-04-11 12:05:18'),
(42, 2, '2022-04-11 12:08:56', '2022-04-11 12:08:56'),
(31, 3, '2022-04-11 12:17:46', '2022-04-11 12:17:46'),
(49, 3, '2022-04-11 13:57:56', '2022-04-11 13:57:56'),
(48, 2, '2022-04-11 14:04:13', '2022-04-11 14:04:13'),
(48, 4, '2022-04-11 14:04:13', '2022-04-11 14:04:13'),
(50, 2, '2022-04-11 18:21:49', '2022-04-11 18:21:49'),
(50, 4, '2022-04-11 19:04:58', '2022-04-11 19:04:58'),
(51, 2, '2022-04-12 11:17:54', '2022-04-12 11:17:54'),
(51, 4, '2022-04-12 11:17:54', '2022-04-12 11:17:54'),
(52, 2, '2022-04-12 12:14:49', '2022-04-12 12:14:49'),
(52, 9, '2022-04-12 12:14:49', '2022-04-12 12:14:49'),
(53, 3, '2022-04-12 13:26:11', '2022-04-12 13:26:11'),
(53, 10, '2022-04-12 13:26:11', '2022-04-12 13:26:11'),
(54, 2, '2022-04-12 14:31:20', '2022-04-12 14:31:20'),
(1, 2, '2022-04-12 17:27:25', '2022-04-12 17:27:25'),
(1, 9, '2022-04-12 17:27:25', '2022-04-12 17:27:25'),
(2, 3, '2022-04-12 17:30:01', '2022-04-12 17:30:01'),
(2, 9, '2022-04-12 17:30:01', '2022-04-12 17:30:01'),
(2, 10, '2022-04-12 17:30:01', '2022-04-12 17:30:01'),
(3, 4, '2022-04-12 17:31:10', '2022-04-12 17:31:10'),
(3, 9, '2022-04-12 17:31:10', '2022-04-12 17:31:10'),
(4, 2, '2022-04-12 17:32:07', '2022-04-12 17:32:07'),
(4, 9, '2022-04-12 17:57:19', '2022-04-12 17:57:19');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2022_04_07_080928_users_add_isadmin', 1),
(7, '2022_04_08_122318_add_tag_id', 1),
(33, '2014_10_12_000000_create_users_table', 2),
(34, '2014_10_12_100000_create_password_resets_table', 2),
(35, '2019_08_19_000000_create_failed_jobs_table', 2),
(36, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(37, '2022_04_07_190619_create_articles_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'work', '2022-04-11 04:27:13', '2022-04-11 04:27:13'),
(3, 'it', '2022-04-11 04:27:28', '2022-04-11 04:27:28'),
(4, 'sport', '2022-04-11 04:27:32', '2022-04-11 04:27:32'),
(9, 'news', '2022-04-12 12:13:49', '2022-04-12 12:13:49'),
(10, 'technology', '2022-04-12 13:17:54', '2022-04-12 13:17:54'),
(11, 'group', '2022-04-12 15:51:18', '2022-04-12 15:51:18');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$x/GfU2eXhlq/rw5bbhxfzOhN4OHr5xMX7kDGWAvda9gJ6/Hn6LYqu', 1, NULL, NULL, NULL),
(2, 'admin', 'admin@admin.ru', NULL, '$2y$10$x/GfU2eXhlq/rw5bbhxfzOhN4OHr5xMX7kDGWAvda9gJ6/Hn6LYqu', 0, NULL, '2022-04-12 17:19:56', '2022-04-12 17:19:56'),
(3, 'asd', 'asd@asd.asd', NULL, '$2y$10$rOEYc534AztqtcYi/oWgFuq0p/PDJzcU8R75tN4oZj9znofqEWJcy', 0, NULL, '2022-04-12 18:26:41', '2022-04-12 18:26:41');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
