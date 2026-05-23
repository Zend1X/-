-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 23 2026 г., 08:35
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `medical_organization`
--

-- --------------------------------------------------------

--
-- Структура таблицы `appointments`
--

CREATE TABLE `appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_name` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `desired_date` datetime DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `doctor_id` int(10) UNSIGNED DEFAULT NULL,
  `service_id` int(10) UNSIGNED DEFAULT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `appointments`
--

INSERT INTO `appointments` (`id`, `patient_name`, `phone`, `email`, `desired_date`, `comment`, `doctor_id`, `service_id`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'Смирнов Алексей', '+79991112233', 'smirnov@mail.ru', '2024-12-20 10:00:00', 'Повышенное давление, нужна консультация', 2, 4, 1, '2024-12-15 02:00:00', '2026-05-16 09:28:28'),
(2, 'Иванова Мария', '+79992223344', 'ivanova@mail.ru', '2024-12-21 14:00:00', 'Ребенку 3 года, кашель, температура', 4, 10, 2, '2024-12-16 03:30:00', '2026-05-16 09:28:28'),
(3, 'Петров Дмитрий', '+79993334455', 'petrov@mail.ru', '2024-12-22 11:00:00', 'Боли в спине, нужна консультация невролога', 3, 8, 3, '2024-12-17 04:00:00', '2026-05-16 09:28:28'),
(4, 'Кузнецова Ольга', '+79994445566', 'kuznetsova@mail.ru', '2024-12-19 09:00:00', 'Плановая проверка зрения', 6, 14, 4, '2024-12-14 01:00:00', '2026-05-16 09:28:28'),
(5, 'Соколов Андрей', '+79995556677', 'sokolov@mail.ru', '2024-12-18 15:00:00', 'Консультация перед операцией', 5, 12, 5, '2024-12-10 07:00:00', '2026-05-16 09:28:28'),
(6, 'Попова Елена', '+79996667788', 'popova@mail.ru', '2024-12-23 12:00:00', 'Профилактический осмотр', 1, 3, 1, '2024-12-18 02:00:00', '2026-05-16 09:28:28'),
(7, 'Волков Сергей', '+79997778899', 'volkov@mail.ru', '2024-12-24 16:00:00', 'Боль в животе после еды', 8, 18, 1, '2024-12-18 03:00:00', '2026-05-16 09:28:28'),
(8, 'Морозова Анна', '+79998889900', 'morozova@mail.ru', '2024-12-25 10:00:00', 'Нужна консультация эндокринолога', 7, 16, 2, '2024-12-19 04:00:00', '2026-05-16 09:28:28'),
(9, 'Белов Дмитрий', '+79990001122', 'belov@mail.ru', '2024-12-26 13:00:00', 'Лечение кариеса', 12, 20, 1, '2024-12-19 05:00:00', '2026-05-16 09:28:28'),
(10, 'Федорова Татьяна', '+79991110000', 'fedorova@mail.ru', '2024-12-27 11:00:00', 'Ежегодный профилактический осмотр', 1, 3, 1, '2024-12-20 02:00:00', '2026-05-16 09:28:28'),
(11, 'Никитка', '+79964591436', 'snowbord1999.com@gmail.com', '2026-05-23 16:30:00', '', 1, 1, 5, '2026-05-16 09:30:45', '2026-05-16 09:48:41'),
(12, 'Петр', '+79964591436', 'snowbord1999.com@gmail.com', '2026-05-19 09:58:00', 'Боли в животе', 1, 1, 1, '2026-05-16 11:56:06', '2026-05-16 11:56:06'),
(13, 'Тестовый', '+70000000000', 'testmail@mail.ru', '2026-05-21 14:44:00', 'Тестовая запись', 1, 1, 4, '2026-05-16 14:45:12', '2026-05-16 14:46:07'),
(14, 'Пётр', '+79964591436', 'snowbord1999.com@gmail.com', '2026-05-29 10:50:00', '', 2, NULL, 1, '2026-05-22 15:51:06', '2026-05-22 15:51:06'),
(15, 'Тестовый', '+71234567890', 'testmail@mail.ru', '2026-05-25 08:35:00', 'Тестовая запись на прием', 1, NULL, 1, '2026-05-22 18:32:58', '2026-05-22 18:32:58'),
(16, 'test', '+71234567890', 'testmail@mail.ru', '2026-05-29 09:15:00', 'test appointment', 1, 1, 1, '2026-05-22 19:10:31', '2026-05-22 19:10:31');

-- --------------------------------------------------------

--
-- Структура таблицы `appointment_statuses`
--

CREATE TABLE `appointment_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `appointment_statuses`
--

INSERT INTO `appointment_statuses` (`id`, `code`, `name`, `description`) VALUES
(1, 'new', 'Новая', 'Заявка только что создана'),
(2, 'processing', 'В обработке', 'Заявка рассматривается сотрудником'),
(3, 'confirmed', 'Подтверждена', 'Приём подтверждён'),
(4, 'rejected', 'Отклонена', 'Заявка отклонена'),
(5, 'completed', 'Завершена', 'Приём состоялся');

-- --------------------------------------------------------

--
-- Структура таблицы `doctors`
--

CREATE TABLE `doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `experience` int(10) UNSIGNED DEFAULT 0 COMMENT 'Стаж работы в годах',
  `specialization_id` int(10) UNSIGNED NOT NULL,
  `is_published` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `doctors`
--

INSERT INTO `doctors` (`id`, `last_name`, `first_name`, `middle_name`, `photo`, `bio`, `experience`, `specialization_id`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'Иванов', 'Александр', 'Петрович', 'images/doctors/doctor_1778926442_6a08436ac505e.jpg', 'Опытный терапевт с 20-летним стажем. Проводит комплексную диагностику и лечение широкого спектра заболеваний. Регулярно повышает квалификацию на международных конференциях.', 20, 1, 1, '2026-05-16 09:28:27', '2026-05-16 10:14:02'),
(2, 'Петрова', 'Елена', 'Сергеевна', 'images/doctors/doctor_1778926487_6a08439706a99.jpg', 'Врач-кардиолог высшей категории. Специализируется на диагностике и лечении ишемической болезни сердца, артериальной гипертензии, нарушений ритма сердца.', 15, 2, 1, '2026-05-16 09:28:27', '2026-05-16 10:14:47'),
(3, 'Сидоров', 'Михаил', 'Александрович', 'images/doctors/doctor_1778926526_6a0843be19c60.jpg', 'Невролог с обширным опытом лечения заболеваний центральной и периферической нервной системы. Использует современные методы диагностики.', 12, 3, 1, '2026-05-16 09:28:27', '2026-05-16 10:15:26'),
(4, 'Козлова', 'Анна', 'Владимировна', 'images/doctors/doctor_1778926454_6a08437610eff.jpg', 'Детский врач с большим опытом работы. Умеет находить подход к каждому ребенку. Специализируется на профилактике и лечении детских заболеваний.', 10, 4, 1, '2026-05-16 09:28:27', '2026-05-16 10:14:14'),
(5, 'Морозов', 'Дмитрий', 'Игоревич', 'images/doctors/doctor_1778926477_6a08438d8af6b.jpg', 'Хирург высшей квалификационной категории. Выполняет плановые и экстренные операции. Владеет современными методиками малоинвазивной хирургии.', 18, 6, 1, '2026-05-16 09:28:27', '2026-05-16 10:14:37'),
(6, 'Волкова', 'Мария', 'Андреевна', 'images/doctors/doctor_1778926431_6a08435f1c223.jpg', 'Врач-офтальмолог. Проводит диагностику и лечение заболеваний глаз, подбор очков и контактных линз. Использует современное оборудование.', 8, 5, 1, '2026-05-16 09:28:27', '2026-05-16 10:13:51'),
(7, 'Соколов', 'Андрей', 'Николаевич', 'images/doctors/doctor_1778926648_6a0844387bb6b.jpg', 'Эндокринолог. Специализируется на лечении сахарного диабета, заболеваний щитовидной железы, нарушений обмена веществ.', 14, 7, 1, '2026-05-16 09:28:27', '2026-05-16 10:17:28'),
(8, 'Белова', 'Ольга', 'Дмитриевна', 'images/doctors/doctor_1778926419_6a08435341b9d.jpg', 'Гастроэнтеролог. Проводит диагностику и лечение заболеваний желудочно-кишечного тракта. Выполняет эндоскопические исследования.', 11, 8, 1, '2026-05-16 09:28:27', '2026-05-16 10:13:39'),
(9, 'Кузнецов', 'Сергей', 'Павлович', 'images/doctors/doctor_1778926463_6a08437fbf967.jpg', 'Дерматолог. Занимается диагностикой и лечением кожных заболеваний, удалением новообразований.', 9, 9, 1, '2026-05-16 09:28:27', '2026-05-16 10:14:23'),
(10, 'Попова', 'Татьяна', 'Игоревна', 'images/doctors/doctor_1778926499_6a0843a353b3f.jpg', 'Гинеколог высшей категории. Проводит профилактические осмотры, диагностику и лечение гинекологических заболеваний.', 16, 10, 1, '2026-05-16 09:28:27', '2026-05-16 10:14:59'),
(11, 'Смирнов', 'Игорь', 'Васильевич', 'images/doctors/doctor_1778926548_6a0843d4878cc.jpg', 'Уролог. Специализируется на лечении заболеваний мочеполовой системы у мужчин и женщин.', 13, 11, 1, '2026-05-16 09:28:27', '2026-05-16 10:15:48'),
(12, 'Федорова', 'Наталья', 'Алексеевна', 'images/doctors/doctor_1778926628_6a08442467e8d.jpg', 'Стоматолог-терапевт. Проводит лечение кариеса, пульпита, периодонтита. Использует современные пломбировочные материалы.', 7, 12, 1, '2026-05-16 09:28:27', '2026-05-16 10:17:08');

-- --------------------------------------------------------

--
-- Структура таблицы `doctor_services`
--

CREATE TABLE `doctor_services` (
  `doctor_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `doctor_services`
--

INSERT INTO `doctor_services` (`doctor_id`, `service_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 8),
(3, 9),
(4, 10),
(4, 11),
(5, 12),
(5, 13),
(6, 14),
(6, 15),
(7, 1),
(7, 2),
(7, 16),
(7, 17),
(8, 1),
(8, 16),
(8, 17),
(8, 18),
(12, 20),
(12, 21),
(12, 22);

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` text NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `phone`, `email`, `subject`, `message`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'Николаев Павел', '+79991234567', 'nikolaev@mail.ru', 'Запись на приём', 'Здравствуйте! Хотел бы записаться на прием к кардиологу на следующей неделе. Удобное время - вторая половина дня.', 1, '2024-12-15 03:00:00', '2026-05-16 09:28:28'),
(2, 'Семенова Ирина', '+79992345678', 'semenova@mail.ru', 'Вопрос по услугам', 'Подскажите, пожалуйста, делаете ли вы УЗИ сердца и сколько это стоит? Нужно ли направление от врача?', 2, '2024-12-16 07:00:00', '2026-05-16 09:28:28'),
(3, 'Григорьев Алексей', '+79993456789', 'grigoriev@mail.ru', 'Предложение', 'Предлагаю сотрудничество по поставке медицинского оборудования. Готов предоставить каталог и специальные цены.', 3, '2024-12-17 02:00:00', '2026-05-16 09:28:28'),
(4, 'Васильева Екатерина', '+79994567890', 'vasilieva@mail.ru', 'Жалоба', 'Вчера была на приеме у терапевта. Пришлось ждать 40 минут, хотя запись была на 10:00. Прошу принять меры.', 4, '2024-12-18 04:00:00', '2026-05-16 09:28:28'),
(5, 'Михайлов Сергей', '+79995678901', 'mihailov@mail.ru', 'Другое', 'Интересует возможность прохождения медосмотра для получения водительских прав. Какие документы нужны?', 2, '2024-12-19 08:00:00', '2026-05-16 09:28:28');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback_statuses`
--

CREATE TABLE `feedback_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `feedback_statuses`
--

INSERT INTO `feedback_statuses` (`id`, `code`, `name`, `description`) VALUES
(1, 'new', 'Новое', 'Обращение только что получено'),
(2, 'processing', 'В обработке', 'Обращение рассматривается'),
(3, 'answered', 'Отвечено', 'Дан ответ на обращение'),
(4, 'closed', 'Закрыто', 'Обращение закрыто');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(300) NOT NULL,
  `announce` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `announce`, `body`, `image`, `published_at`, `author_id`, `is_visible`, `created_at`, `updated_at`) VALUES
(1, 'Открытие нового отделения', 'Мы рады сообщить об открытии нового кардиологического отделения', 'С радостью сообщаем, что в нашем медицинском центре открылось новое кардиологическое отделение, оснащенное самым современным оборудованием.\r\n\r\nТеперь пациентам доступны:\r\n- ЭКГ покоя и с нагрузкой\r\n- Суточное мониторирование ЭКГ\r\n- УЗИ сердца\r\n- Консультации кардиолога высшей категории\r\n\r\nЖдем вас по адресу: ул. Медицинская, 15.', 'images/news/1778925672_IMG_20250211_125255.jpg', '2024-12-01 10:00:00', NULL, 1, '2026-05-16 09:28:28', '2026-05-16 10:01:12'),
(2, 'Профилактика гриппа и ОРВИ', 'Советы врача: как защитить себя и близких от простуды', 'С наступлением холодного времени года возрастает риск заболевания гриппом и ОРВИ. Наши специалисты подготовили рекомендации по профилактике:\r\n\r\n1. Своевременная вакцинация\r\n2. Регулярное мытье рук\r\n3. Проветривание помещений\r\n4. Полноценное питание и витамины\r\n5. Избегание мест большого скопления людей\r\n\r\nБудьте здоровы!', 'images/news/1778925681_ef8d4e5be11c6e26496010cf82356f58.6a856ca6cd9ae14d34cf1b572b5935db.jpg', '2024-12-05 09:00:00', NULL, 1, '2026-05-16 09:28:28', '2026-05-16 10:01:21'),
(3, 'Новое оборудование', 'Установлен современный МРТ-томограф', 'Наш медицинский центр продолжает модернизацию оборудования. Установлен новый магнитно-резонансный томограф экспертного класса.\r\n\r\nПреимущества:\r\n- Высокое качество изображения\r\n- Быстрое сканирование\r\n- Комфортные условия для пациента\r\n- Широкий спектр исследований\r\n\r\nЗапись на исследование по телефону или через сайт.', 'images/news/1778925687_ef8d4e5be11c6e26496010cf8235.jpg', '2024-12-10 11:00:00', NULL, 1, '2026-05-16 09:28:28', '2026-05-16 10:01:27'),
(4, 'Акция на стоматологические услуги', 'Скидка 20% на профессиональную чистку зубов', 'Только до конца месяца! Скидка 20% на профессиональную гигиену полости рта.\r\n\r\nВ услугу входит:\r\n- Удаление зубного камня ультразвуком\r\n- Удаление мягкого налета AirFlow\r\n- Полировка зубов\r\n- Реминерализующая терапия\r\n\r\nЗапишитесь уже сегодня!', 'images/news/1778925697_i.jpg', '2024-12-15 08:00:00', NULL, 1, '2026-05-16 09:28:28', '2026-05-16 10:01:37'),
(5, 'График работы в праздники', 'Информация о работе центра в новогодние праздники', 'Уважаемые пациенты! Обратите внимание на график работы в праздничные дни:\r\n\r\n31 декабря: 9:00 - 15:00\r\n1 января: выходной\r\n2-6 января: 10:00 - 17:00\r\n7 января: выходной\r\nС 8 января: обычный режим работы\r\n\r\nС наступающим Новым годом!', 'images/news/1778925705_rezhim-v-prazdniki-1536x968-1.jpg', '2024-12-18 12:00:00', NULL, 1, '2026-05-16 09:28:28', '2026-05-16 10:01:45'),
(6, 'Школа здоровья', 'Приглашаем на бесплатные лекции', 'В нашем центре стартует проект \"Школа здоровья\". Каждую субботу в 12:00 проводятся бесплатные лекции:\r\n\r\n- Здоровое питание\r\n- Профилактика сердечно-сосудистых заболеваний\r\n- Уход за кожей\r\n- Женское здоровье\r\n- Детское здоровье\r\n\r\nРасписание уточняйте на сайте или по телефону.', 'images/news/1778925718_r2r2r2r.jpg', '2024-12-20 10:00:00', NULL, 1, '2026-05-16 09:28:28', '2026-05-16 10:01:58');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_name` varchar(200) NOT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `review_text` text NOT NULL,
  `doctor_id` int(10) UNSIGNED DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `patient_name`, `rating`, `review_text`, `doctor_id`, `is_approved`, `created_at`) VALUES
(1, 'Алексей С.', 5, 'Отличный врач! Очень внимательный, всё подробно объяснил. Назначил лечение, которое действительно помогло.', 1, 1, '2024-11-15 03:00:00'),
(2, 'Мария И.', 5, 'Попали к Елене Сергеевне на консультацию. Прекрасный кардиолог! Очень грамотный специалист, успокоила, всё разъяснила.', 2, 1, '2024-11-20 07:00:00'),
(3, 'Дмитрий П.', 4, 'Хороший невролог. Помог с болями в спине. Единственный минус - пришлось немного подождать приёма.', 3, 1, '2024-11-25 04:00:00'),
(4, 'Ольга К.', 5, 'Замечательный педиатр! Ребенок не боится ходить к врачу. Анна Владимировна нашла подход с первого визита.', 4, 1, '2024-12-01 02:00:00'),
(5, 'Сергей В.', 5, 'Делал операцию у Морозова Д.И. Всё прошло отлично! Профессионал своего дела. Спасибо!', 5, 1, '2024-12-05 08:00:00'),
(6, 'Екатерина М.', 4, 'Проверяла зрение. Врач внимательный, оборудование современное. Дали подробные рекомендации.', 6, 1, '2024-12-10 05:00:00'),
(7, 'Павел Н.', 5, 'Очень доволен лечением у Соколова А.Н. Грамотный эндокринолог, помог с проблемами щитовидной железы.', 7, 1, '2024-12-12 03:00:00'),
(8, 'Анна В.', 3, 'В целом неплохо, но ожидание приёма затянулось на 30 минут. Врач хороший, но организация хромает.', 1, 1, '2024-12-15 09:00:00'),
(9, 'Игорь К.', 5, 'Отличная клиника! Был на чистке зубов, всё прошло быстро и безболезненно. Рекомендую!', 12, 1, '2024-12-18 04:00:00'),
(10, 'Татьяна С.', 5, 'Наблюдаюсь у Поповой Т.И. уже несколько лет. Очень грамотный гинеколог, всегда внимательна и тактична.', 10, 1, '2024-12-20 02:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `schedules`
--

CREATE TABLE `schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL,
  `day_of_week` tinyint(3) UNSIGNED NOT NULL COMMENT '1-пн, 2-вт, ..., 7-вс',
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `schedules`
--

INSERT INTO `schedules` (`id`, `doctor_id`, `day_of_week`, `start_time`, `end_time`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '08:00:00', '16:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(2, 1, 2, '08:00:00', '16:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(3, 1, 3, '08:00:00', '16:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(4, 1, 4, '08:00:00', '16:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(5, 1, 5, '08:00:00', '14:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(6, 2, 1, '09:00:00', '17:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(7, 2, 2, '09:00:00', '17:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(8, 2, 3, '09:00:00', '17:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(9, 2, 4, '09:00:00', '17:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(10, 2, 5, '09:00:00', '15:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(11, 3, 1, '10:00:00', '18:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(12, 3, 3, '10:00:00', '18:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(13, 3, 5, '10:00:00', '16:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(14, 4, 1, '08:00:00', '15:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(15, 4, 2, '08:00:00', '15:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(16, 4, 3, '08:00:00', '15:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(17, 4, 4, '08:00:00', '15:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(18, 4, 5, '08:00:00', '13:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(19, 5, 2, '09:00:00', '17:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(20, 5, 4, '09:00:00', '17:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(21, 6, 1, '09:00:00', '18:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(22, 6, 3, '09:00:00', '18:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28'),
(23, 6, 5, '09:00:00', '15:00:00', 1, '2026-05-16 09:28:28', '2026-05-16 09:28:28');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `short_desc` varchar(500) DEFAULT NULL,
  `full_desc` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT 0.00,
  `duration` int(10) UNSIGNED DEFAULT 0 COMMENT 'Продолжительность в минутах',
  `is_published` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `category_id`, `title`, `short_desc`, `full_desc`, `price`, `duration`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 1, 'Первичный прием терапевта', 'Консультация врача-терапевта с осмотром и сбором анамнеза', 'Полный осмотр пациента, сбор жалоб, измерение артериального давления, пульса, сатурации. Назначение плана обследования и лечения.', 2000.00, 30, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(2, 1, 'Повторный прием терапевта', 'Повторная консультация терапевта', 'Оценка результатов обследования, коррекция лечения, динамическое наблюдение.', 1500.00, 20, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(3, 1, 'Профилактический осмотр', 'Комплексный профилактический осмотр', 'Полный осмотр с оценкой состояния здоровья, рекомендации по профилактике заболеваний.', 3000.00, 45, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(4, 2, 'Консультация кардиолога', 'Прием врача-кардиолога с ЭКГ', 'Консультация кардиолога, электрокардиография, расшифровка результатов, назначение лечения.', 2500.00, 40, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(5, 2, 'ЭКГ', 'Электрокардиография', 'Запись электрокардиограммы в 12 отведениях с расшифровкой.', 800.00, 15, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(6, 2, 'Суточное мониторирование ЭКГ', 'Холтеровское мониторирование', 'Суточная запись ЭКГ с последующей расшифровкой и заключением врача.', 3000.00, 1440, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(7, 2, 'УЗИ сердца', 'Эхокардиография', 'Ультразвуковое исследование сердца с допплерографией.', 3500.00, 30, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(8, 3, 'Консультация невролога', 'Прием врача-невролога', 'Осмотр невролога, оценка неврологического статуса, назначение обследования и лечения.', 2500.00, 40, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(9, 3, 'ЭЭГ', 'Электроэнцефалография', 'Исследование биоэлектрической активности головного мозга.', 3000.00, 30, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(10, 4, 'Прием педиатра', 'Консультация детского врача', 'Осмотр ребенка, оценка физического и нервно-психического развития, рекомендации.', 2000.00, 30, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(11, 4, 'Вакцинация', 'Профилактическая вакцинация детей', 'Проведение вакцинации согласно национальному календарю прививок.', 1500.00, 20, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(12, 5, 'Консультация хирурга', 'Прием врача-хирурга', 'Осмотр хирурга, оценка необходимости оперативного вмешательства.', 2500.00, 30, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(13, 5, 'Удаление новообразований', 'Удаление доброкачественных новообразований кожи', 'Иссечение новообразований с гистологическим исследованием.', 5000.00, 30, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(14, 6, 'Проверка зрения', 'Комплексная проверка зрения', 'Определение остроты зрения, подбор очков, проверка глазного дна.', 2000.00, 30, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(15, 6, 'Компьютерная периметрия', 'Исследование полей зрения', 'Автоматизированное исследование полей зрения.', 1500.00, 20, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(16, 7, 'Общий анализ крови', 'Клинический анализ крови', 'Забор крови и проведение общего анализа.', 500.00, 10, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(17, 7, 'Биохимический анализ крови', 'Расширенный биохимический анализ', 'Определение основных биохимических показателей крови.', 2000.00, 10, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(18, 7, 'УЗИ органов брюшной полости', 'Комплексное УЗИ', 'Ультразвуковое исследование печени, желчного пузыря, поджелудочной железы, селезенки.', 2500.00, 30, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(19, 7, 'Рентгенография', 'Рентгеновское исследование', 'Рентгенография органов грудной клетки или других областей.', 1500.00, 15, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(20, 8, 'Лечение кариеса', 'Лечение кариеса зуба', 'Удаление кариозных тканей и пломбирование современными материалами.', 3500.00, 45, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(21, 8, 'Профессиональная чистка', 'Профессиональная гигиена полости рта', 'Удаление зубного налета и камня ультразвуком, полировка зубов.', 3000.00, 40, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(22, 8, 'Отбеливание зубов', 'Профессиональное отбеливание', 'Система отбеливания Zoom, осветление до 8 тонов.', 15000.00, 60, 1, '2026-05-16 09:28:27', '2026-05-16 09:28:27'),
(23, 5, 'Вырез шляпы', 'Ну там шляпу отрежут кароч', 'Ну там шляпу отрежут кароч', 99999999.99, 228, 0, '2026-05-16 09:56:18', '2026-05-16 09:56:18');

-- --------------------------------------------------------

--
-- Структура таблицы `service_categories`
--

CREATE TABLE `service_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `service_categories`
--

INSERT INTO `service_categories` (`id`, `title`, `description`, `sort_order`, `is_active`) VALUES
(1, 'Терапия', 'Консультации терапевта и общая диагностика', 1, 1),
(2, 'Кардиология', 'Диагностика и лечение заболеваний сердца', 2, 1),
(3, 'Неврология', 'Лечение заболеваний нервной системы', 3, 1),
(4, 'Педиатрия', 'Медицинская помощь детям', 4, 1),
(5, 'Хирургия', 'Оперативные вмешательства и манипуляции', 5, 1),
(6, 'Офтальмология', 'Диагностика и лечение заболеваний глаз', 6, 1),
(7, 'Диагностика', 'Лабораторные и инструментальные исследования', 7, 1),
(8, 'Стоматология', 'Лечение и профилактика заболеваний полости рта', 8, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `specializations`
--

CREATE TABLE `specializations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `specializations`
--

INSERT INTO `specializations` (`id`, `title`, `description`, `is_active`) VALUES
(1, 'Терапевт', 'Врач общей практики, занимающийся диагностикой и лечением заболеваний внутренних органов', 1),
(2, 'Кардиолог', 'Специалист по диагностике и лечению заболеваний сердечно-сосудистой системы', 1),
(3, 'Невролог', 'Врач, специализирующийся на заболеваниях нервной системы', 1),
(4, 'Педиатр', 'Детский врач, занимающийся здоровьем детей от рождения до 18 лет', 1),
(5, 'Офтальмолог', 'Специалист по диагностике и лечению заболеваний глаз', 1),
(6, 'Хирург', 'Врач, выполняющий оперативные вмешательства', 1),
(7, 'Эндокринолог', 'Специалист по заболеваниям эндокринной системы', 1),
(8, 'Гастроэнтеролог', 'Врач, лечащий заболевания желудочно-кишечного тракта', 1),
(9, 'Дерматолог', 'Специалист по заболеваниям кожи', 1),
(10, 'Гинеколог', 'Врач, специализирующийся на женском здоровье', 1),
(11, 'Уролог', 'Специалист по заболеваниям мочеполовой системы', 1),
(12, 'Стоматолог', 'Врач, занимающийся лечением зубов и полости рта', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `login` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password_hash`, `is_active`, `last_login`, `created_at`, `updated_at`) VALUES
(4, 'admin', '$2y$10$i9eG6pMHA/KtQwPgg6zumu.vYCDKKkdvgZ/mHp6z1RZRGNLSkEhji', 1, NULL, '2026-05-16 09:43:14', '2026-05-22 15:44:33');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `idx_appointments_status` (`status_id`),
  ADD KEY `idx_appointments_date` (`desired_date`),
  ADD KEY `idx_appointments_doctor` (`doctor_id`);

--
-- Индексы таблицы `appointment_statuses`
--
ALTER TABLE `appointment_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Индексы таблицы `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doctors_specialization` (`specialization_id`),
  ADD KEY `idx_doctors_published` (`is_published`);

--
-- Индексы таблицы `doctor_services`
--
ALTER TABLE `doctor_services`
  ADD PRIMARY KEY (`doctor_id`,`service_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_feedback_status` (`status_id`);

--
-- Индексы таблицы `feedback_statuses`
--
ALTER TABLE `feedback_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `idx_news_published` (`published_at`),
  ADD KEY `idx_news_visible` (`is_visible`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Индексы таблицы `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schedules_doctor` (`doctor_id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_services_category` (`category_id`),
  ADD KEY `idx_services_published` (`is_published`);

--
-- Индексы таблицы `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `appointment_statuses`
--
ALTER TABLE `appointment_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `feedback_statuses`
--
ALTER TABLE `feedback_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `appointment_statuses` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`specialization_id`) REFERENCES `specializations` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `doctor_services`
--
ALTER TABLE `doctor_services`
  ADD CONSTRAINT `doctor_services_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctor_services_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `feedback_statuses` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `service_categories` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
