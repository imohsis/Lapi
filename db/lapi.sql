-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2018 at 03:51 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `celebrities`
--

CREATE TABLE `celebrities` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_16_124558_create_news_table', 1),
(4, '2018_04_16_125114_create_reviews_table', 1),
(5, '2018_04_16_141220_create_musics_table', 1),
(6, '2018_04_16_141248_create_videos_table', 1),
(7, '2018_04_16_141309_create_celebrities_table', 1),
(8, '2018_04_16_141339_create_events_table', 1),
(9, '2018_04_16_141353_create_tags_table', 1),
(10, '2018_04_16_141419_create_categories_table', 1),
(11, '2018_04_16_141435_create_comments_table', 1),
(12, '2018_04_16_141449_create_likes_table', 1),
(13, '2018_04_16_141505_create_shares_table', 1),
(14, '2018_04_16_141533_create_links_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `musics`
--

CREATE TABLE `musics` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `subtitle`, `main_image`, `body`, `images`, `categories`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'iste', 'perspiciatis', 'https://lorempixel.com/640/480/?13627', 'Blanditiis corporis autem quidem quod debitis nesciunt eum nam. Vitae qui cumque velit omnis quod repellat hic. Tempora a aut quia voluptas libero tenetur.', 'https://lorempixel.com/640/480/?34479', 'eligendi', 'placeat', '2018-04-17 12:46:25', '2018-04-17 12:46:25'),
(2, 'facere', 'perspiciatis', 'https://lorempixel.com/640/480/?11629', 'Maxime cum et impedit nostrum mollitia recusandae. Totam ducimus pariatur aut. Et aut eum quia recusandae voluptas vel.', 'https://lorempixel.com/640/480/?86522', 'est', 'repudiandae', '2018-04-17 12:46:25', '2018-04-17 12:46:25'),
(3, 'minima', 'consequatur', 'https://lorempixel.com/640/480/?16066', 'Cum doloremque recusandae et sunt. Quod saepe natus sed ex odio. In excepturi impedit laudantium quas. Quasi non sunt et tempora.', 'https://lorempixel.com/640/480/?74920', 'enim', 'possimus', '2018-04-17 12:46:25', '2018-04-17 12:46:25'),
(4, 'et', 'possimus', 'https://lorempixel.com/640/480/?16250', 'Est eos et qui et nobis. Sunt non esse a ea iusto libero. Quia itaque et natus ipsum alias voluptates.', 'https://lorempixel.com/640/480/?21071', 'laborum', 'ab', '2018-04-17 12:46:25', '2018-04-17 12:46:25'),
(5, 'non', 'odit', 'https://lorempixel.com/640/480/?33217', 'Dolorum commodi veritatis illum molestias. Perspiciatis porro non sed doloribus qui. Doloribus earum fugiat id dolor. Minus unde dolore eos.', 'https://lorempixel.com/640/480/?54405', 'officia', 'commodi', '2018-04-17 12:46:25', '2018-04-17 12:46:25'),
(6, 'ut', 'quam', 'https://lorempixel.com/640/480/?16246', 'Occaecati ab ullam non ab reprehenderit velit. Odit consequatur et necessitatibus. Quis ab aut veniam incidunt.', 'https://lorempixel.com/640/480/?26531', 'officiis', 'quae', '2018-04-17 12:46:25', '2018-04-17 12:46:25'),
(7, 'voluptas', 'quasi', 'https://lorempixel.com/640/480/?56932', 'Tempora aliquam et expedita. Natus temporibus nostrum vitae autem.', 'https://lorempixel.com/640/480/?76046', 'laudantium', 'vel', '2018-04-17 12:46:25', '2018-04-17 12:46:25'),
(8, 'ab', 'hic', 'https://lorempixel.com/640/480/?88790', 'Facere qui officiis illo. Nihil illo natus autem velit ut odit illum. Enim aut eligendi voluptatem. Nemo et repudiandae et et et dolores nam.', 'https://lorempixel.com/640/480/?29131', 'amet', 'quidem', '2018-04-17 12:46:25', '2018-04-17 12:46:25'),
(9, 'praesentium', 'omnis', 'https://lorempixel.com/640/480/?57449', 'Facilis eligendi veritatis voluptatem magnam. Quo dolorem rerum commodi numquam reiciendis est. Tempora quam excepturi quaerat distinctio qui culpa.', 'https://lorempixel.com/640/480/?20478', 'delectus', 'similique', '2018-04-17 12:46:25', '2018-04-17 12:46:25'),
(10, 'a', 'necessitatibus', 'https://lorempixel.com/640/480/?17030', 'Atque et mollitia voluptates odio molestiae labore et. Reiciendis aut expedita ad optio sed. Et maiores possimus nam quos.', 'https://lorempixel.com/640/480/?76192', 'maiores', 'perspiciatis', '2018-04-17 12:46:25', '2018-04-17 12:46:25'),
(11, 'eaque', 'modi', 'https://lorempixel.com/640/480/?23363', 'Numquam deleniti fugit adipisci enim. Aut odio sapiente ad consequatur eos dicta. Beatae nemo fuga earum quia excepturi cumque. Dolorem fugit perferendis rerum.', 'https://lorempixel.com/640/480/?18296', 'et', 'fugit', '2018-04-17 12:46:25', '2018-04-17 12:46:25'),
(12, 'quas', 'rerum', 'https://lorempixel.com/640/480/?24109', 'Libero consequatur similique fugiat est et. Beatae dolore porro non error non dolore. Non maxime voluptatem facilis. Dignissimos reprehenderit distinctio doloribus eos.', 'https://lorempixel.com/640/480/?72547', 'saepe', 'voluptate', '2018-04-17 12:46:25', '2018-04-17 12:46:25'),
(13, 'quisquam', 'facere', 'https://lorempixel.com/640/480/?75140', 'Consectetur vel velit quasi eaque dolores id. Officia magnam quisquam odio officiis. Esse ipsa sunt ipsa magni nihil velit.', 'https://lorempixel.com/640/480/?64546', 'in', 'iste', '2018-04-17 12:46:25', '2018-04-17 12:46:25'),
(14, 'sequi', 'blanditiis', 'https://lorempixel.com/640/480/?44433', 'Deserunt optio consequatur quam eligendi accusamus et veritatis. Officiis corporis rerum temporibus. Fuga voluptas consequatur quia voluptatem sequi repellendus.', 'https://lorempixel.com/640/480/?99456', 'voluptatum', 'non', '2018-04-17 12:46:25', '2018-04-17 12:46:25'),
(15, 'sequi', 'ut', 'https://lorempixel.com/640/480/?46606', 'Provident doloremque culpa temporibus quis fuga sapiente minima. Cumque aut id omnis quas quasi. Fugit ut dignissimos nobis ut cumque. Consequatur atque soluta natus reiciendis hic.', 'https://lorempixel.com/640/480/?41713', 'ea', 'debitis', '2018-04-17 12:46:25', '2018-04-17 12:46:25'),
(16, 'consectetur', 'voluptas', 'https://lorempixel.com/640/480/?39745', 'Ut soluta est molestiae consequatur ipsam consequuntur possimus. Quo sapiente fuga mollitia quibusdam. Sequi maxime et voluptatem qui aspernatur voluptas. Ducimus tempore molestiae et qui ea itaque.', 'https://lorempixel.com/640/480/?81131', 'beatae', 'quasi', '2018-04-17 12:46:25', '2018-04-17 12:46:25'),
(17, 'eius', 'ut', 'https://lorempixel.com/640/480/?60296', 'Expedita quas blanditiis fugiat sit voluptatum voluptatum sequi asperiores. Qui et sit rerum ut. Qui et facere nesciunt sit consectetur aut officia eaque.', 'https://lorempixel.com/640/480/?42980', 'pariatur', 'illum', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(18, 'qui', 'enim', 'https://lorempixel.com/640/480/?94808', 'Esse vel nostrum animi facere. Tempore vel veniam magni dolores voluptatem harum. Fugit dolorum nihil alias voluptas explicabo. Necessitatibus aperiam et ipsum molestias ducimus facere occaecati. Non cum mollitia molestias sint est quas.', 'https://lorempixel.com/640/480/?66193', 'dolores', 'omnis', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(19, 'perspiciatis', 'ullam', 'https://lorempixel.com/640/480/?44708', 'Cumque ratione excepturi dolorem voluptatem eius et. Dolor qui molestiae eaque dolorem repudiandae mollitia. Temporibus quia et sequi incidunt sequi praesentium beatae voluptatibus. Asperiores non aut nisi praesentium cumque nam dolores.', 'https://lorempixel.com/640/480/?44165', 'quibusdam', 'dolor', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(20, 'illum', 'ea', 'https://lorempixel.com/640/480/?63056', 'Totam et fuga rerum autem repudiandae est. Placeat et aut qui in. Maxime magni assumenda et vero. Quo voluptas exercitationem quidem ut omnis deleniti.', 'https://lorempixel.com/640/480/?53079', 'facilis', 'vero', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(21, 'adipisci', 'sint', 'https://lorempixel.com/640/480/?24146', 'Ipsa reiciendis est quo animi in necessitatibus omnis. Et ea non praesentium labore quia et. Quibusdam quos porro quia eligendi vel delectus aspernatur.', 'https://lorempixel.com/640/480/?74245', 'odio', 'non', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(22, 'velit', 'et', 'https://lorempixel.com/640/480/?38483', 'Quod sit cupiditate non unde illo rem aut non. Fugiat commodi maiores sunt sunt facilis accusantium harum. Dolorem consequatur et quae architecto sunt ullam.', 'https://lorempixel.com/640/480/?40514', 'consequatur', 'consequuntur', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(23, 'placeat', 'pariatur', 'https://lorempixel.com/640/480/?25039', 'Qui tempore ut quia quibusdam perspiciatis aut occaecati. Quos aut aut id tenetur tenetur in vitae sit. Sed ut consequatur vitae eum aliquid quis ab. Nemo ut aspernatur cum non minus.', 'https://lorempixel.com/640/480/?48264', 'aperiam', 'et', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(24, 'aut', 'quia', 'https://lorempixel.com/640/480/?70676', 'Consequatur ducimus nobis aut harum quibusdam placeat. Ut qui voluptatum temporibus voluptatem. Nihil vel iure aut quo saepe.', 'https://lorempixel.com/640/480/?96772', 'vel', 'distinctio', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(25, 'id', 'qui', 'https://lorempixel.com/640/480/?41311', 'Corrupti est illum ea expedita asperiores provident. Laborum velit doloribus pariatur libero doloremque est. Voluptatem adipisci mollitia magnam nihil eos.', 'https://lorempixel.com/640/480/?13533', 'dicta', 'ab', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(26, 'sint', 'qui', 'https://lorempixel.com/640/480/?49452', 'Aliquid suscipit quia quasi adipisci. Et enim mollitia nobis velit maiores error. Dolor qui ipsum dignissimos magni libero sed. Deserunt nemo qui a deserunt.', 'https://lorempixel.com/640/480/?19525', 'voluptates', 'perspiciatis', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(27, 'sit', 'reiciendis', 'https://lorempixel.com/640/480/?49414', 'Et veritatis minima sapiente. Voluptatibus repudiandae tempora officia fuga consectetur libero et. Quia ea esse eligendi ducimus. Quis aut cumque et.', 'https://lorempixel.com/640/480/?42057', 'consectetur', 'harum', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(28, 'officia', 'provident', 'https://lorempixel.com/640/480/?50264', 'Corporis dolorum et facere debitis labore. Aut omnis temporibus consequatur tenetur. Iure modi voluptas officiis aut et velit reiciendis. Dicta tenetur consequatur corporis iste. Alias laborum sint et rem illum similique quasi.', 'https://lorempixel.com/640/480/?96910', 'veniam', 'sit', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(29, 'sed', 'aperiam', 'https://lorempixel.com/640/480/?12603', 'Qui enim id recusandae excepturi nihil et. Quo illo velit molestias quo maxime repellat tenetur. Rerum voluptas consectetur reiciendis officia id. Non sed enim ipsa dolorum officiis qui.', 'https://lorempixel.com/640/480/?81233', 'ut', 'ipsum', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(30, 'ab', 'ut', 'https://lorempixel.com/640/480/?44491', 'Sunt nostrum at ut rerum qui est doloremque. Repudiandae suscipit quam soluta aliquam modi. Voluptas qui laudantium quis facilis ducimus excepturi et rerum.', 'https://lorempixel.com/640/480/?62677', 'aut', 'quidem', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(31, 'aut', 'quis', 'https://lorempixel.com/640/480/?15416', 'Et dolorem aut consequatur quod quia voluptates facilis. Ea vitae quae voluptatem minima id voluptatem. Et dolor illo ut quaerat.', 'https://lorempixel.com/640/480/?43846', 'delectus', 'facere', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(32, 'quos', 'ut', 'https://lorempixel.com/640/480/?60082', 'Consequuntur veritatis dignissimos aut. Quaerat quia at quisquam numquam nam aut et mollitia. Et iste occaecati voluptatibus provident eos voluptatem ducimus.', 'https://lorempixel.com/640/480/?27526', 'rerum', 'aut', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(33, 'repudiandae', 'eos', 'https://lorempixel.com/640/480/?27059', 'Mollitia harum et enim quia enim. Omnis sint sed ullam repellendus aut illum dolorem. Quod voluptas aut excepturi iusto repellendus. Ab ab consequuntur sunt eos unde repellendus voluptates.', 'https://lorempixel.com/640/480/?19801', 'dolorem', 'rem', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(34, 'officiis', 'quod', 'https://lorempixel.com/640/480/?21913', 'Culpa sed voluptatem accusamus enim ratione. Asperiores voluptate autem dolor qui aut voluptate assumenda. Corrupti similique sit omnis rerum omnis modi. Vel amet delectus dolor tempore deleniti.', 'https://lorempixel.com/640/480/?49196', 'debitis', 'repellendus', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(35, 'quia', 'veritatis', 'https://lorempixel.com/640/480/?49636', 'Exercitationem sapiente et maxime necessitatibus debitis voluptatum ut. Quidem ut blanditiis incidunt esse quis vel dolore. Ut distinctio dolor aut. Odit occaecati quia non explicabo. Qui rerum harum omnis iusto delectus sit.', 'https://lorempixel.com/640/480/?48525', 'qui', 'modi', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(36, 'dolorum', 'ea', 'https://lorempixel.com/640/480/?96070', 'Nihil et id commodi aliquid blanditiis neque. Ad ullam reprehenderit neque occaecati. Autem saepe laborum minima et temporibus in.', 'https://lorempixel.com/640/480/?64728', 'quas', 'modi', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(37, 'unde', 'delectus', 'https://lorempixel.com/640/480/?70453', 'Quae officia eaque nihil soluta vel. Commodi maxime quae sequi excepturi officia enim.', 'https://lorempixel.com/640/480/?58025', 'quia', 'quia', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(38, 'ut', 'non', 'https://lorempixel.com/640/480/?13500', 'Voluptatem hic quia voluptatem assumenda asperiores est. Consequatur et et itaque quos atque dicta debitis. Deleniti quo adipisci molestias nostrum doloribus ratione. Nisi quis id ipsum.', 'https://lorempixel.com/640/480/?11939', 'quisquam', 'inventore', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(39, 'cumque', 'ratione', 'https://lorempixel.com/640/480/?43372', 'Cupiditate tempora quis doloribus. Quae magnam et et saepe et. Ad deserunt repellat et. Quaerat corporis sed unde pariatur aspernatur quisquam.', 'https://lorempixel.com/640/480/?70613', 'ducimus', 'consequatur', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(40, 'eaque', 'eos', 'https://lorempixel.com/640/480/?41410', 'Sunt cumque dolores itaque consequatur. Esse eligendi voluptatem qui minus ut rerum fugiat. Consequatur odit incidunt nobis incidunt est distinctio voluptatum. Dolores ab aut impedit ea.', 'https://lorempixel.com/640/480/?71745', 'qui', 'aliquid', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(41, 'similique', 'ipsum', 'https://lorempixel.com/640/480/?49134', 'Eos maiores consequatur adipisci culpa. Sed consequuntur sint non sit ut aperiam recusandae. Doloremque itaque quo quaerat ut suscipit. Magnam ad delectus facere fugiat nobis.', 'https://lorempixel.com/640/480/?33087', 'quam', 'ad', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(42, 'porro', 'sit', 'https://lorempixel.com/640/480/?27749', 'Nam vero minus est. Aspernatur culpa natus et nam cumque eum hic. Dolore debitis voluptas corporis magni soluta dolor. Voluptatem vitae eos aut unde perferendis dolor. Quaerat corrupti at ducimus aut ipsa consequatur vero.', 'https://lorempixel.com/640/480/?98595', 'minima', 'temporibus', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(43, 'error', 'ratione', 'https://lorempixel.com/640/480/?76013', 'Aliquam sunt labore praesentium incidunt omnis ut. Eaque id veniam dolore beatae eveniet cum id aliquam. Autem ut et fugiat veniam repudiandae.', 'https://lorempixel.com/640/480/?87738', 'corporis', 'itaque', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(44, 'labore', 'qui', 'https://lorempixel.com/640/480/?97406', 'Error veritatis qui commodi nulla. Omnis ut aliquid sit ipsum. Ullam dolorum aut nesciunt enim voluptas ab hic iure. Consectetur reprehenderit minus asperiores at excepturi.', 'https://lorempixel.com/640/480/?17430', 'quod', 'provident', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(45, 'in', 'similique', 'https://lorempixel.com/640/480/?59892', 'Dolorum dignissimos rerum sunt ut est quia et laborum. Libero odio quia voluptatem autem velit et aliquid. Quia laboriosam nisi magnam sit aut aut. Voluptatem adipisci eveniet odit sit temporibus perferendis.', 'https://lorempixel.com/640/480/?15733', 'eaque', 'quidem', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(46, 'non', 'consequatur', 'https://lorempixel.com/640/480/?25681', 'Facilis error repudiandae qui qui libero consequatur. Nisi est sed ratione omnis id.', 'https://lorempixel.com/640/480/?30600', 'fugit', 'earum', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(47, 'temporibus', 'et', 'https://lorempixel.com/640/480/?84638', 'Recusandae vel odio porro fuga voluptate et. Qui nobis praesentium officiis qui unde ad blanditiis. Et qui rem ea voluptas dolorum. Minima a totam excepturi.', 'https://lorempixel.com/640/480/?61821', 'odio', 'repudiandae', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(48, 'impedit', 'autem', 'https://lorempixel.com/640/480/?90732', 'Qui quam perferendis amet. Libero ipsa possimus non et ut. Molestiae sunt veritatis nobis tempore. Nisi quo sed praesentium debitis libero rerum unde.', 'https://lorempixel.com/640/480/?34201', 'non', 'voluptate', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(49, 'fugiat', 'nihil', 'https://lorempixel.com/640/480/?14442', 'Incidunt corporis eos qui veniam et beatae dolorem. Est aut consectetur corporis consectetur architecto praesentium. Nisi quas aut perferendis qui dignissimos.', 'https://lorempixel.com/640/480/?41131', 'itaque', 'odio', '2018-04-17 12:46:26', '2018-04-17 12:46:26'),
(50, 'consectetur', 'fugit', 'https://lorempixel.com/640/480/?40100', 'Velit consequatur nisi illum ea ut dolorem eum est. At et rem modi aspernatur et quod. Molestias quisquam vero nobis mollitia consequatur hic.', 'https://lorempixel.com/640/480/?97788', 'aut', 'rerum', '2018-04-17 12:46:26', '2018-04-17 12:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL,
  `user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `news_id`, `user`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 42, 'Adrian Lind Jr.', 'In quia et molestias rerum quia. Delectus nam necessitatibus sunt dolores. Et nam velit eius reiciendis fugiat soluta.', 0, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(2, 21, 'Dessie Gorczany Jr.', 'Eos laboriosam rerum recusandae dolores sit id. Autem ut ex saepe et illo sed. Reiciendis itaque repellat sit ut.', 1, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(3, 24, 'Dr. Eliezer Carroll MD', 'Delectus qui autem nulla. Et quis sit ab magnam eveniet repudiandae. Voluptatibus et dolore voluptas nam. Et architecto mollitia pariatur est at minima.', 0, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(4, 40, 'Demond Paucek', 'Aliquam et ratione ut ullam non non nisi. Blanditiis repellat cum ut repellat libero est reprehenderit. Quaerat esse cumque laudantium quis illo fuga molestias et.', 4, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(5, 7, 'Mrs. Tianna Balistreri', 'Aperiam iste ut voluptate iste. Possimus et sint voluptatem officia. Voluptatibus cum in et quos alias fuga. Maxime nulla tempora maxime vero.', 4, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(6, 21, 'Bertrand Schoen', 'Minus iste ipsam doloremque rerum porro esse veniam. Velit veniam quos doloremque corrupti quia ut deserunt sed. Earum voluptatem earum voluptatibus optio nobis. Vero assumenda voluptatum fugit.', 2, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(7, 44, 'Dr. Priscilla Miller Jr.', 'Sequi maxime tempora nisi expedita. Perferendis sit perspiciatis quibusdam. Iusto sunt at est magnam.', 2, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(8, 42, 'Donald Rutherford', 'Ea voluptate nemo officiis dolor quod nesciunt. Optio enim velit est illum repudiandae et. Est at neque voluptatem illo. Quia cum eum iure voluptatem doloribus odit. Nam ipsa odio eos animi quas.', 0, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(9, 26, 'Jensen Leannon', 'Et ratione repellat quas neque. Eum distinctio voluptatem nobis. Voluptatibus rerum quas cupiditate.', 2, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(10, 47, 'Mark Wiegand', 'Eligendi error modi aut perspiciatis exercitationem. Tempora ad nihil neque magni. Fuga voluptatibus temporibus velit reiciendis laborum eaque omnis deleniti. Officiis laborum omnis dolor velit provident incidunt et. Nam eos rerum laborum id sit et et.', 5, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(11, 9, 'Eleonore Wisoky', 'Perferendis voluptatem sit qui soluta. Sed enim rerum molestiae amet. Praesentium quod itaque laborum quo laborum omnis amet. Est voluptatibus alias sed et nesciunt accusamus numquam.', 5, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(12, 26, 'Dr. Christop Ward', 'Est numquam id sequi saepe corporis et. Ut tempore quae architecto totam et accusamus quidem dicta. Enim dolor eligendi laborum autem ut. Repudiandae ducimus est fugit fuga saepe magni aliquid sint.', 0, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(13, 24, 'Novella Hilpert', 'Iure et ea dolore accusamus itaque. Cupiditate ut quibusdam magnam doloremque eaque. Sequi quod ex laborum dolorem debitis modi.', 0, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(14, 29, 'Dr. Orie Brakus Sr.', 'Sit et eos rerum necessitatibus modi minima fugiat et. Itaque architecto sunt modi eum consequatur ut voluptatem ut. Aut rerum et quasi id inventore corporis et.', 3, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(15, 2, 'Mrs. Raegan Daugherty', 'Id voluptatem voluptatibus vero aut accusamus illo. Voluptate modi perferendis eligendi consequatur ipsam. Perferendis commodi saepe aut odio magnam. Quis quidem quam quia.', 3, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(16, 20, 'Megane Rohan', 'Placeat nostrum est nostrum iusto eum voluptatem quasi. Esse ipsa similique fugiat odio praesentium velit. Non qui vel fuga eum culpa iusto. Quibusdam quibusdam suscipit occaecati a.', 4, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(17, 24, 'Prof. Gayle Huels', 'Et omnis animi ut praesentium eveniet iusto. Non aliquam voluptatibus sapiente molestias animi magni. Non rerum consequatur harum et sed illum ut.', 0, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(18, 49, 'Lucio Rempel', 'Ullam ut eos quia repellat. Recusandae error odio id reiciendis pariatur est quae. Voluptas veritatis est et vel tenetur possimus.', 2, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(19, 32, 'Neha Bergnaum', 'Beatae voluptate id harum dolor. Iure consequuntur iure nisi error. Et illo hic quaerat exercitationem nemo.', 0, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(20, 38, 'Fay Gibson', 'Quaerat optio rem nobis omnis rem. Sit qui iure odit sit commodi rerum aut. Ut unde sint cupiditate ea molestiae.', 0, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(21, 14, 'Prudence Davis DVM', 'Nihil et voluptates quaerat doloribus laboriosam odio. Dignissimos ipsam et eum alias maxime temporibus recusandae. Qui harum tempora nobis consequatur sunt aut.', 3, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(22, 5, 'Osborne Gleichner MD', 'Aut nihil minus soluta aut in velit. Esse id deserunt voluptatem praesentium. Odit impedit eaque aliquid nihil. Magnam consequatur necessitatibus et deleniti dolorum.', 1, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(23, 27, 'Janelle Reilly', 'Quibusdam maiores est ipsum aut sint. Dolorum exercitationem vel qui optio repellat accusamus eum vitae. Est rem molestiae recusandae.', 1, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(24, 13, 'Jermain Corkery', 'Ex doloremque aspernatur ullam rerum. Repudiandae sit consequatur animi aut mollitia quibusdam quod. Non libero magni voluptatem et temporibus.', 2, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(25, 24, 'Brielle Cole', 'Doloremque quod saepe numquam nihil est vel vero dignissimos. Qui nesciunt sit quis. Placeat ut nisi a dolores non a. Incidunt voluptatem eligendi facilis sit eum.', 0, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(26, 37, 'Layne Brown', 'Quos ut quo nihil id odio et. Itaque officiis nulla est enim doloribus ex possimus dolores. Repellendus dolor qui in non quis omnis. Explicabo earum ut deleniti quidem.', 5, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(27, 20, 'Mrs. Dayana Schumm', 'Minus nobis iusto ullam qui reiciendis alias minus. Labore eos aut laboriosam voluptatem est cum. Deserunt ipsa nihil quas quia sed laboriosam.', 1, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(28, 44, 'Kay Koelpin', 'Sit excepturi voluptates aut cum laboriosam facilis. Ea eum eos consequuntur voluptatum quasi quidem cum. Soluta nisi odio optio sunt voluptate nam debitis autem. Aspernatur dolorem molestiae hic. Deserunt ut aut doloremque consequatur quas labore.', 4, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(29, 31, 'Brenda Steuber MD', 'Enim et esse autem architecto blanditiis aliquid. Aut et quo est et modi dolores. Explicabo modi provident non molestiae ipsum ut earum velit.', 0, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(30, 43, 'Mr. Maxwell Harvey', 'Dolorem debitis quo commodi porro labore non cumque praesentium. Dolor quos aut asperiores omnis. Sed odit nam quaerat distinctio saepe ut voluptatum. Aut quas et quo iure. Nobis dolores ad vel magnam libero similique optio.', 5, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(31, 13, 'Mr. D\'angelo Tremblay II', 'Qui nobis velit tenetur vero sequi provident laboriosam. Ut occaecati deserunt voluptate odit quos saepe ut repudiandae. Est ut tempore voluptas aut ullam vel.', 5, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(32, 32, 'Mckayla Goyette', 'Hic dignissimos nihil autem animi. Esse et libero eligendi quos. Et a dolor magni.', 3, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(33, 49, 'Eula Miller IV', 'Ea consectetur ut minus sed rerum ea aut. Sunt hic natus eveniet perferendis amet nostrum commodi qui. Qui totam vitae quia qui blanditiis voluptas ut. Fuga suscipit inventore sint dolorem cumque consequatur nulla.', 5, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(34, 30, 'Lurline Walker', 'Id praesentium officia labore et alias. Quam officia ducimus quam modi et ab tempore. Voluptas perspiciatis facilis vel.', 1, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(35, 16, 'Prof. Brady Beahan I', 'Aut eligendi aut in. Expedita et labore rem. Sit et veniam numquam ducimus nemo qui quis. Quam explicabo ut commodi.', 2, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(36, 2, 'Keegan Cassin Sr.', 'Cumque qui eum exercitationem at quidem est illo. Et ratione hic provident. Voluptatem soluta animi tempora molestiae et est reprehenderit. Similique omnis dolorem ut omnis qui sed nemo.', 5, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(37, 39, 'Miss Margie Fritsch III', 'Reprehenderit eius tenetur earum consequuntur sit dicta. Nihil nostrum perferendis omnis qui. Ut doloribus tenetur omnis est vel ratione. Et non consequatur et enim repellendus animi.', 2, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(38, 1, 'Laney Hirthe', 'Officiis maxime quae odio nihil sit possimus. Non est aut aliquid aspernatur. Esse provident magni sit magnam sed sed.', 1, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(39, 37, 'Micah Ondricka', 'A unde est non eum. Est dolorem perferendis impedit. Voluptatum est velit cum. Alias dolores asperiores nobis et.', 1, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(40, 32, 'Elwin Wilkinson', 'Cumque quae est soluta similique vitae tempore. Provident dolor assumenda quibusdam. Alias soluta architecto quia voluptatibus doloremque occaecati a.', 3, '2018-04-17 12:46:27', '2018-04-17 12:46:27'),
(41, 39, 'Miss Aisha Howe', 'Totam suscipit omnis minima error consectetur. Deserunt quaerat dolor fugit omnis rerum porro amet. Consequatur qui harum hic architecto facilis quaerat in. Et qui et unde explicabo necessitatibus tenetur officia consequuntur.', 4, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(42, 39, 'Janelle Goyette', 'Consequuntur eveniet optio minima illo. Quisquam dicta in sunt alias temporibus voluptatem aut fugit.', 0, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(43, 45, 'Lilian Hermann', 'Qui et aut vero hic saepe. Qui praesentium architecto voluptatem ipsam. In sed optio ducimus est quia perferendis qui.', 3, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(44, 31, 'Dr. Samir Torp Jr.', 'Explicabo ut est quis consequuntur. A totam enim itaque unde. Non quidem culpa delectus iusto voluptatem nisi aut.', 1, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(45, 37, 'Prof. Kian Hintz PhD', 'Qui deserunt repudiandae eos distinctio. Consequatur voluptates alias ipsa. Ipsa tenetur nobis eligendi.', 2, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(46, 3, 'Tom Wehner', 'Porro et pariatur ad voluptates voluptatem. Et molestiae excepturi enim at ipsam nostrum accusantium. Vel totam suscipit rerum perspiciatis et harum quisquam optio.', 0, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(47, 16, 'Maida Ledner', 'Nemo facere blanditiis quod at porro id est. Dicta dolorum odit sit sint. Quisquam commodi voluptatibus eveniet enim.', 5, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(48, 15, 'Waldo Bogisich', 'Quia dolores nulla eligendi itaque nobis accusamus. Repellendus quia rerum exercitationem consectetur excepturi earum in suscipit. Et quis ducimus sunt.', 1, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(49, 25, 'Estell Johnston', 'Voluptate aspernatur culpa eum eaque sint. Fugiat officia asperiores sit at tempore. Quis architecto magni in ut totam ab.', 2, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(50, 18, 'Marlin Crona', 'Aliquid nobis ut ut cum omnis error. Rerum mollitia odio est quisquam fuga voluptatem. In eos consequatur neque incidunt laudantium sed autem. Ut ad facilis error aliquam.', 3, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(51, 50, 'Dr. Carmine Crist', 'Possimus iusto unde et laboriosam sint fuga. Illo debitis molestias blanditiis laudantium nihil. Et laudantium quasi qui magnam sed. Reprehenderit doloremque tenetur molestias occaecati architecto libero.', 4, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(52, 37, 'Alycia Johns DVM', 'Exercitationem debitis vel voluptatem debitis quo necessitatibus corporis. Id error ad aut aut. Non explicabo quibusdam tenetur et et qui.', 1, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(53, 13, 'Darien Wuckert', 'Esse laudantium enim consequatur aut aut dolor. Quod et soluta voluptatem dolorum ad officia sit. Et magnam quas et aut voluptatem non.', 4, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(54, 41, 'Cathy Thompson', 'Qui enim unde autem sunt. Temporibus sapiente impedit ut aut. Dolorem aut omnis natus vero ut et. Rerum voluptate dignissimos velit ipsa molestiae.', 5, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(55, 30, 'Zula Lynch II', 'Sunt ab accusantium sit dolorum sed hic. Porro deleniti officiis ut cupiditate qui. Debitis nostrum hic magni rem.', 0, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(56, 38, 'Kayden Nienow', 'Incidunt quod ut quis. Voluptates assumenda doloremque sunt cupiditate reiciendis corporis. Qui aliquid voluptatem et esse beatae iste veritatis. Ducimus iusto dignissimos aut expedita ut laudantium.', 3, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(57, 17, 'Tracey Kreiger', 'Aut et quod et deserunt et. Quis ullam nesciunt atque perferendis dolorum ut. Natus cumque necessitatibus saepe distinctio. Voluptas ratione neque atque temporibus ad et.', 1, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(58, 25, 'Stephan McDermott', 'In minima voluptatibus dolore repudiandae. Tempore necessitatibus odio error harum voluptates.', 2, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(59, 46, 'Harry Towne', 'Minima aut eos autem cumque accusantium. Eaque sunt reprehenderit occaecati suscipit. Iste aut veritatis non. Dignissimos doloremque accusamus quaerat laudantium consequuntur.', 4, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(60, 12, 'Dr. Peter Cruickshank DVM', 'Provident vel enim et quia ea facere enim. Natus minima molestiae rerum quisquam. Voluptas quas rerum commodi dignissimos eos doloremque eligendi itaque. Nihil repellat nihil occaecati itaque.', 2, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(61, 23, 'Gilda Boyle', 'Sit qui dolore molestiae rerum. Aut quia itaque doloremque. Hic est facere qui sint qui voluptatem illo. Magni dolorem voluptatem nulla voluptas unde quia.', 1, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(62, 7, 'Paris Dicki', 'Omnis maiores ipsum aut veritatis ipsum id et. Earum laborum maxime quaerat dolorum. Explicabo id in asperiores fugit. Et molestiae fuga eaque quam non nam quidem.', 2, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(63, 6, 'Prof. Yadira Graham Jr.', 'Expedita ullam tempore quasi. Est quos consectetur cumque eum voluptatem molestiae aperiam. Ut tempore debitis dignissimos minus repellendus. Accusantium ut vero eligendi.', 1, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(64, 39, 'Merle Schaden', 'Possimus sit ea perferendis ad. Deleniti id autem reprehenderit aliquam deleniti quidem quaerat architecto. Aliquid nesciunt corrupti aperiam doloribus ipsa illo ut. Nulla sit quia id delectus ullam.', 2, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(65, 1, 'Lela Herzog', 'Nisi est expedita ut earum. Nam aperiam possimus reiciendis accusantium incidunt. Ratione doloribus autem ipsum reiciendis voluptatum quo ipsa.', 1, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(66, 35, 'Albert Marvin', 'Mollitia quia voluptate corporis eligendi. Dolorem iusto id rerum reiciendis omnis fugit in. Eos itaque hic autem sunt ratione autem aut temporibus.', 3, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(67, 25, 'Dr. Dejon Kirlin', 'Ullam omnis unde illum explicabo. Est non iusto exercitationem dolores. Est sit cupiditate tempora quibusdam aperiam. Animi rerum enim doloribus corporis est esse eos.', 2, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(68, 13, 'Florencio Denesik', 'Ut omnis exercitationem provident maiores. Vitae harum iste dicta non laborum facere. Eum dolor optio aspernatur cupiditate accusamus qui a.', 0, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(69, 34, 'Lois Wiegand', 'Adipisci quibusdam alias qui sed nihil. Eum cumque officia omnis dolor praesentium. Accusamus nihil modi dolor et. Dolorum velit sit et et assumenda nam veritatis.', 0, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(70, 19, 'Elsa Cole', 'Et unde numquam illum vel. Unde ullam maxime iure autem recusandae nesciunt voluptatibus a. Perferendis itaque officiis magni ut dignissimos laudantium officia est. Magnam beatae neque pariatur nulla.', 0, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(71, 4, 'Mr. Rick Bode V', 'Velit repellat ut qui aut voluptatem et. Ut aut in a ipsam exercitationem ipsa expedita ut. Voluptate nemo occaecati perferendis sapiente sed. Enim eius qui iusto. Ea ut reiciendis numquam pariatur alias quia.', 2, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(72, 3, 'Troy Kuvalis', 'Aliquam quas necessitatibus veniam consequatur quibusdam excepturi. Officia sapiente quas doloremque maiores aperiam deleniti praesentium. Fugit doloremque eos maxime. Quisquam adipisci vel ipsa qui laudantium eum.', 1, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(73, 23, 'Delbert Zulauf', 'Esse nihil iure fugiat et in nesciunt placeat. Delectus fuga fugiat sunt voluptatem in. Possimus reprehenderit amet culpa quae eaque velit.', 0, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(74, 49, 'Dr. Delaney Bogisich', 'Quibusdam minima magni vel voluptatem. Quo est numquam aut omnis rem. Voluptas labore asperiores nisi blanditiis ipsum. Sit similique veritatis possimus molestias neque neque.', 0, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(75, 30, 'Tanya Jerde', 'At et nobis quis veritatis. Praesentium cum doloremque minima ipsum iste sint. Ab voluptate dolorem incidunt molestiae nulla accusantium iusto.', 1, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(76, 29, 'Daphney Renner', 'Minima voluptatem doloribus ut beatae. Sapiente voluptatibus quaerat qui est provident et veniam dolor. Ut non dicta ea dolores et et. Facilis atque nemo voluptas veritatis vel. Expedita laboriosam perferendis aliquam nam dolor nulla deserunt.', 4, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(77, 44, 'Dayana Renner', 'Nobis magnam odit nostrum. Fugit et officia sapiente ad. Architecto quia nemo recusandae officia sed. Eos perspiciatis modi distinctio quia in.', 3, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(78, 10, 'Ms. Fiona Kessler V', 'Odio voluptatem accusantium sint et amet. Qui officia placeat minima sed corporis quam porro. Dolores quia magnam officiis dicta recusandae sint.', 4, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(79, 4, 'Mr. Jaron Cronin', 'Commodi qui accusamus id sunt. Quod quia consequatur quis fugit est earum necessitatibus. Impedit sapiente rerum quod eum. Perspiciatis dolores voluptatem ipsam explicabo cumque harum est.', 3, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(80, 19, 'Hubert Daniel', 'Deserunt est dolores doloribus. Consequatur id praesentium laudantium nostrum.', 1, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(81, 5, 'Tyson Wyman', 'Minima et ut et corrupti. Corrupti odit et voluptatem illum omnis id. Magni deserunt molestiae facilis maiores.', 1, '2018-04-17 12:46:28', '2018-04-17 12:46:28'),
(82, 17, 'Marcellus Bashirian DDS', 'Sed distinctio aut asperiores et maiores reiciendis esse. Nesciunt reprehenderit enim ea aut amet. Qui in molestiae eius quaerat et recusandae repudiandae voluptates.', 4, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(83, 42, 'Celine Harvey', 'Similique esse aliquid expedita harum. Quibusdam ex laborum voluptatem omnis et recusandae. Expedita commodi perspiciatis nesciunt sit et aut. Atque dolores commodi aut.', 1, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(84, 44, 'Prof. Asa Bailey', 'Est amet et soluta et consequuntur aut nesciunt illo. Qui dignissimos eligendi quia nihil sed voluptas nobis. Optio incidunt quasi non eligendi. Similique id porro explicabo ut nihil quisquam repudiandae.', 1, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(85, 12, 'Beau Mraz', 'Exercitationem dolores qui voluptas consequatur nisi. Consequatur dolorum esse vel accusantium quos sint eum. Non vel molestiae distinctio quia debitis.', 5, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(86, 34, 'Bria Vandervort', 'Ut veritatis illo consequatur consequuntur cumque. Eveniet placeat neque nobis aut in natus. Velit hic qui est consequatur iste. Alias omnis aut similique. Quis quas mollitia explicabo non ipsum corporis.', 1, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(87, 37, 'Walton Rau', 'Fugit quia laudantium repudiandae et iusto facere. Quas doloremque ut eum libero tenetur aliquid. Perferendis temporibus ipsum adipisci amet quae laborum accusamus eligendi.', 0, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(88, 48, 'Anibal Bosco', 'Molestias amet corrupti quaerat perferendis quis molestias earum. Libero ratione cupiditate cum illum laborum quidem molestiae.', 3, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(89, 32, 'Gregory Veum', 'Deleniti aut doloremque laborum omnis et vitae. Et reiciendis totam ipsa sunt nihil ullam. Molestias esse ut aut eaque hic distinctio totam.', 0, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(90, 49, 'Prof. Keshawn Kulas', 'Voluptates reprehenderit magnam magni exercitationem. Similique est officia rem libero molestiae. Quas aut atque illum aut illum nisi dolore. Molestiae et at consequatur maiores velit quia et.', 4, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(91, 38, 'Chadd Little', 'Beatae quia voluptas expedita error vel. Veniam alias magnam numquam alias sed. Placeat velit repellendus officiis et.', 1, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(92, 34, 'Prof. Jamar Ankunding IV', 'Numquam ut debitis qui animi. Qui asperiores et facere labore dolore. Ut voluptas rerum saepe possimus aut. Cupiditate veniam fuga blanditiis aliquid ut fugit ipsam delectus.', 2, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(93, 14, 'Broderick Schumm', 'Voluptates commodi aut eum ipsam optio explicabo optio. Modi fugiat maxime aut. Recusandae sequi similique non maiores cumque voluptatem quia. Molestiae similique consequuntur voluptas atque iusto sint id.', 1, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(94, 37, 'Ian Dach', 'Labore architecto sunt fuga. Omnis dolorem magni velit vel illum minus impedit dolorem. Accusantium dolores quia at aut debitis sit.', 2, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(95, 20, 'Lauretta Conn', 'Id ullam minus repudiandae enim soluta similique architecto. Odio reprehenderit ducimus iusto consequatur in nemo id. Ut quia commodi commodi amet laudantium error. Consequatur cum quasi expedita illum aliquam perferendis.', 0, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(96, 41, 'Dr. Winona Purdy', 'Totam ratione esse vero officia recusandae eos repellat. Sit ut sapiente asperiores quis porro. Iusto consequatur aut nostrum et quia exercitationem laudantium vel.', 4, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(97, 9, 'Victor Kshlerin', 'Repellendus in voluptas fuga aspernatur est est. Aut et ex cumque. Nisi distinctio sint neque eos.', 0, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(98, 43, 'Polly Fritsch', 'Enim ut excepturi consequuntur voluptate quia quis eos. Sint quis eos distinctio eius placeat et dolor accusamus. Ad quo quam architecto accusantium.', 5, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(99, 33, 'Dr. Henderson Kihn MD', 'Debitis quia suscipit aliquam error eos fuga expedita. Dolor aut vel dolore est nulla. Rerum quisquam et rerum corrupti.', 5, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(100, 11, 'Kian Schmidt', 'Et laboriosam unde rerum eum et. Quisquam consectetur in nostrum et ducimus. Aspernatur temporibus corporis est dolore.', 3, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(101, 24, 'Vida Kirlin', 'Sit est nobis facere sunt nihil. Dolor modi officiis quod quod. Esse rerum id laudantium et molestiae. Veritatis deserunt et et ipsam ut ex.', 4, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(102, 22, 'Kareem Labadie', 'Quis id optio deleniti minus quo. Dolores dignissimos vel sit ex dolores rerum. Velit dolorum ut vel vitae. Aut nostrum consequatur ratione quia reprehenderit reiciendis.', 3, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(103, 14, 'Dr. Jared Parker', 'Quia est sit ducimus rerum enim autem dolorum. Atque culpa laboriosam quibusdam. Repudiandae laborum saepe dolore aut. Et dolores beatae sequi dolorem occaecati.', 3, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(104, 29, 'Mr. Tyree Blick MD', 'Eos esse est et natus inventore. Dolorem perferendis quam animi magni odio. Sunt porro quasi ea voluptatem at dolores.', 4, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(105, 39, 'Wilburn Homenick', 'Velit deserunt ipsa nulla ad. Illo doloremque beatae consequatur deleniti omnis. Et iusto atque fugiat sit ut labore eos.', 0, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(106, 38, 'Mr. Nestor Morissette', 'Suscipit aut commodi architecto quas. Sed id ut fuga iste sint. Odio atque ad et omnis officia quod. Ut harum vero adipisci amet ut omnis molestiae. Est consequatur sed suscipit voluptatem.', 0, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(107, 2, 'Dr. Melissa Anderson', 'Deleniti totam explicabo quasi voluptas. Sed et reiciendis cumque veritatis. Consequatur dolore ducimus sit optio qui nam. Non doloremque et velit quia rem tenetur.', 3, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(108, 22, 'Saul Kassulke', 'Suscipit facilis et perspiciatis facere. Non ipsam reiciendis modi ipsa. Blanditiis fugiat atque distinctio quis.', 1, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(109, 33, 'Mr. Chris Larkin', 'Tempore nobis ab quis illo doloremque reprehenderit facilis. Omnis est qui laudantium sunt. Ullam quo quo expedita qui libero.', 0, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(110, 42, 'Idell Lehner', 'Neque repudiandae qui suscipit ut. Quisquam esse veritatis consequatur id et provident. Id enim dolor reprehenderit provident.', 3, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(111, 43, 'Sylvan Howe II', 'Est magnam libero atque et quae dolor. Expedita et voluptate et ducimus sit similique. Consequatur est dolorem molestias soluta esse harum occaecati. Accusamus eum eius et cum.', 2, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(112, 25, 'Breana Treutel IV', 'Voluptatibus molestiae quas vero rerum ad eius. Repellendus laudantium vel quis illo exercitationem qui nobis.', 2, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(113, 35, 'Prof. Torrey Marvin DVM', 'Laudantium et et ab. Perspiciatis sunt eos in aut dolorum corrupti sed. Rerum magnam deserunt et facilis ullam.', 3, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(114, 7, 'Ansel Bernhard', 'Sequi cum voluptas laboriosam nisi sint vel suscipit et. Quaerat officiis nostrum dolores sit incidunt. Quis iusto aut blanditiis temporibus velit quia. Porro sunt asperiores nisi alias quia fuga.', 2, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(115, 44, 'Dr. Raul Kovacek V', 'Aut quisquam est autem ipsam aliquid et ad. Iure hic ipsum eligendi est id. Quis eius fugit corrupti natus consequatur inventore aliquam. Dolores necessitatibus dolorem ex quibusdam.', 5, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(116, 38, 'Otho Haag', 'Minus ipsum ut reprehenderit tempora dolorum id ratione. Reprehenderit et debitis quis. Rerum placeat facere laboriosam eius ea molestias.', 4, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(117, 49, 'Ronny Kilback', 'Libero rem illum rerum dolores. Veritatis doloribus ut officia quidem aliquam. Aut atque provident esse sed veritatis id corporis ipsum.', 4, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(118, 28, 'Prof. Gillian Schiller', 'Beatae rerum sint dolor doloremque. At possimus beatae accusamus. Earum pariatur aut voluptas aut quam dignissimos quasi.', 4, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(119, 30, 'Alene Stanton III', 'Suscipit rerum adipisci commodi deserunt. Quos culpa quo fuga consequatur. Iste et quia veritatis incidunt perferendis quia autem corrupti. Modi error sed quod et est possimus aut.', 4, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(120, 32, 'Vladimir Kuphal', 'Fugit tempore aut quos earum sit. Dolor autem iste voluptatem est. Reprehenderit aut illo sunt ea et explicabo. Praesentium velit dolor nostrum nostrum explicabo voluptatem.', 4, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(121, 47, 'Miss Naomi Hilll', 'Et in sed deserunt iure voluptatem fugit autem eos. Explicabo sed est velit ut. Incidunt assumenda non molestiae neque commodi enim.', 2, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(122, 39, 'Mrs. Candice Cassin', 'Ipsam mollitia voluptas voluptas accusamus perferendis. Fuga sed error eveniet quaerat. Et autem doloremque veritatis asperiores odit.', 3, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(123, 3, 'Donato Jerde DVM', 'Sed possimus dolores consequatur iste et. Et laboriosam omnis modi doloribus impedit molestias. Non expedita porro sint voluptas alias quaerat. Quos aut veniam et quos distinctio rem. Quo non ea harum facilis.', 5, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(124, 39, 'Miss Evalyn Lebsack II', 'Non repellat deserunt omnis tempora autem velit perspiciatis. Et omnis accusamus fugiat ipsam iure sit. Voluptatem perspiciatis unde sed assumenda dolore dolorem.', 2, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(125, 42, 'Angelina Kunze', 'Itaque omnis aut et dolores occaecati qui itaque. Qui dolor quisquam rerum adipisci nemo deserunt. Sequi doloribus ut ut saepe architecto.', 2, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(126, 43, 'Prof. Osvaldo Marks II', 'Rem illo rerum reiciendis nobis odit illum. Blanditiis qui modi quis magnam et non. Id qui quas esse ipsa assumenda.', 5, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(127, 22, 'Theodora Price', 'Eos ut eligendi rem. Assumenda autem ea dolores eaque ipsa doloremque vel. Doloribus porro quisquam dolores incidunt. Sit quam voluptatem ut asperiores quos.', 1, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(128, 10, 'Prof. Dino Jast I', 'Et aut porro autem. Quasi eaque repellendus sit neque repellat. Illum eaque non fuga sed neque doloribus in.', 1, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(129, 19, 'Ms. Adrianna Auer IV', 'Sed est ut asperiores consectetur facere non. Molestiae nobis quisquam ipsam ut soluta.', 3, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(130, 17, 'Dr. Rudy Wilkinson PhD', 'Odit et laboriosam corporis amet nisi expedita exercitationem. Et suscipit tenetur eaque fugiat inventore ex velit sunt. Itaque dicta quidem aliquid distinctio et itaque.', 5, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(131, 34, 'Prof. Lavonne Littel', 'Mollitia aperiam nostrum optio iusto facilis. Amet minus architecto inventore omnis vero vel. Voluptatem natus et et cumque unde iusto sunt.', 4, '2018-04-17 12:46:29', '2018-04-17 12:46:29'),
(132, 25, 'Mathias Schoen', 'Nostrum non ut rerum nihil. Illo eaque id est molestias culpa consectetur. Consectetur harum nam qui distinctio consequatur.', 5, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(133, 16, 'Robbie Reynolds', 'Harum velit quia et assumenda et fuga occaecati quia. Soluta sit nihil accusantium praesentium rerum sed ipsam. Quos molestias dolore itaque quia.', 4, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(134, 43, 'Bette Legros IV', 'Sit dolorem totam nulla necessitatibus. Consequatur excepturi et qui ipsa. At non rerum sed animi. Voluptas ea repudiandae voluptas vel vero animi voluptatem.', 5, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(135, 33, 'Verona Bogisich', 'Sed quisquam fugit est id tenetur. Et ipsum aspernatur aperiam praesentium aut ut. Labore facilis sint ut nihil ad voluptatum.', 4, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(136, 3, 'Torrance Collins', 'In distinctio voluptatum enim voluptas enim voluptas. Illum voluptatem fuga eos necessitatibus qui corrupti. Omnis ullam ab sunt et. Quo nostrum est delectus.', 4, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(137, 4, 'Ryley Ryan', 'Earum qui ipsum eius ut. Maiores soluta cumque autem error.', 4, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(138, 23, 'Roxanne Olson', 'Quis eius ducimus amet tempore. Et consectetur asperiores magni deleniti voluptatem eius provident. Velit mollitia et porro aliquam provident. Delectus amet suscipit dolores distinctio possimus quibusdam enim.', 3, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(139, 2, 'Ruby Reilly', 'Deleniti dicta temporibus temporibus exercitationem et sunt molestias. Inventore ipsa natus est tenetur ut id. Voluptatem architecto dolorem necessitatibus minus.', 4, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(140, 5, 'Mr. Liam Kuhn', 'Ullam aperiam aut assumenda id. Omnis quaerat voluptatem ut ipsa. Laborum voluptatem porro aut quis dolore minima.', 5, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(141, 36, 'Laney Treutel', 'Officia eum sunt unde occaecati vel laudantium. Et excepturi blanditiis ipsa ea nihil.', 4, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(142, 47, 'Dolly Mills', 'Fugiat alias autem odio aliquam autem vel natus. Eveniet eos ut sunt voluptatem aut illum aut consectetur. Ducimus aliquam iure deserunt exercitationem ipsa aut. Et est dolores dolore accusamus vitae.', 4, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(143, 43, 'Carmine Hermann', 'Rem dolores et sint et sint consequatur. Animi illo suscipit quasi qui modi. Commodi harum est eius reprehenderit eos et consequatur odit. Iste cumque ea eligendi voluptatem quia. Sunt sequi quia voluptas rerum.', 0, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(144, 23, 'Prof. Serena Pollich Jr.', 'Velit labore et incidunt. Animi voluptatibus quaerat nulla. Ea vel sit natus eaque omnis voluptas id cupiditate.', 1, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(145, 4, 'Lilla Langosh I', 'Nobis cum ullam qui incidunt. Dolore earum aut ut rerum.', 5, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(146, 37, 'Selena Vandervort', 'Unde vitae officiis velit animi molestiae qui. Repellat recusandae fugit amet. Unde minima deserunt recusandae sit soluta nihil est dolore.', 2, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(147, 44, 'Adolph Murazik IV', 'Velit et quasi officiis delectus. Qui est sit dolores laboriosam aspernatur.', 1, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(148, 23, 'Ms. Marielle Rau III', 'Pariatur ut provident nemo occaecati repellendus ullam numquam. Vitae voluptas perspiciatis odit autem ut. Nesciunt doloribus sed repellendus ab et nobis ex.', 0, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(149, 37, 'Casimir Casper Jr.', 'Rem corrupti perferendis nobis quibusdam tempore quasi. Qui libero et voluptate quae eum. Ad ipsam dignissimos maiores error esse quisquam. Non recusandae fugiat sit a.', 4, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(150, 47, 'Dr. Mafalda Hintz', 'Aperiam occaecati incidunt nisi nihil debitis saepe nam. Aut eligendi veniam ad vel quia modi ea. Sed perferendis vel soluta dolores eaque doloribus.', 2, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(151, 1, 'Mafalda Graham', 'Expedita quia dolorem iste. Aliquam non exercitationem voluptatem ullam consectetur voluptatem maxime. Veritatis officiis expedita est quos et qui sapiente.', 3, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(152, 12, 'Mrs. Tiara Gleichner', 'Culpa ducimus vel impedit odio saepe a. Vitae nemo qui iusto non. Unde quaerat ratione explicabo velit. Dignissimos laboriosam quisquam deleniti reprehenderit.', 5, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(153, 6, 'Francesco Kirlin', 'Commodi ea et rerum itaque corrupti ratione. Saepe rerum suscipit ut eius.', 1, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(154, 32, 'Prof. Brionna Windler', 'Pariatur explicabo vitae quas ab. Dolores minus vitae et eveniet distinctio. Voluptates saepe harum quo molestiae.', 4, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(155, 31, 'Luisa Rosenbaum', 'Et voluptatem eligendi porro dolor esse nihil qui. Qui ut id numquam ut. Nemo excepturi ad impedit dolores nesciunt. Alias nesciunt est nihil id quibusdam.', 1, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(156, 26, 'Gordon Gerhold', 'Nobis et dolorem ad aut deserunt molestias soluta vitae. Autem nihil ut dolorem qui. Et ut inventore quia minima quam quibusdam aut.', 2, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(157, 49, 'Jada Wiegand', 'Delectus quaerat necessitatibus quia saepe tenetur. Explicabo eveniet officia aut exercitationem ex. Iure sunt qui aut molestias.', 1, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(158, 21, 'Miss Lorena Rolfson IV', 'Neque aut rerum voluptas eos. Perferendis molestiae totam pariatur voluptatem. Quaerat eos possimus pariatur minus. Dolor molestiae itaque cum rerum quia amet et.', 4, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(159, 12, 'Mariane Crist MD', 'Quo ex sunt maiores non dolorem dolorem. Mollitia asperiores quod aliquid praesentium. Mollitia officia ducimus enim ut hic.', 1, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(160, 50, 'Dr. General Thiel', 'Expedita esse laudantium sed quisquam ducimus. Consequatur magnam totam cumque ex molestiae est eaque earum. Vero ut sapiente sunt. Dignissimos architecto voluptate ea.', 2, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(161, 36, 'Celia Olson', 'Incidunt id deserunt fuga dolorem deleniti et doloribus. A sit tempora dignissimos dolorem pariatur nemo esse omnis. Cupiditate sed atque id velit et reprehenderit aut. Est qui sit et sed aut illum id rerum.', 2, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(162, 49, 'Eula Steuber DDS', 'In aperiam non facere in. Nihil beatae animi nobis accusantium vero repellendus cupiditate eligendi. Error asperiores corrupti aut explicabo minima. Exercitationem architecto excepturi modi repudiandae quidem odit consequatur.', 0, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(163, 33, 'Martina Ratke', 'Expedita fuga ad ut sit in consequatur. Perspiciatis est eum perspiciatis. Omnis aut eligendi nobis facere deserunt esse laudantium tempore.', 0, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(164, 15, 'Elbert Ullrich', 'Itaque impedit quasi odit unde quasi voluptatem consequatur cumque. Laboriosam dolores animi aspernatur nulla et. Deserunt vitae eum enim ullam sed aliquid. Eveniet vel labore non tempora corporis voluptas.', 1, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(165, 7, 'Prof. Dennis Gulgowski I', 'Voluptate non nulla corrupti et unde. Sint quo provident placeat dolore aut vitae. Consequuntur nobis dolorum assumenda ea cumque. Aut amet aut non et quia repudiandae eum.', 3, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(166, 40, 'Josefa Hoppe PhD', 'Quia nulla quia rem placeat eum cum temporibus consequatur. Est est et ut incidunt qui provident. Qui quasi harum sed odio. Doloribus eum qui ipsum eligendi accusantium.', 5, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(167, 40, 'Bertram Rice IV', 'Labore occaecati ratione nam quaerat tenetur sed. Quia ut quasi exercitationem voluptatem quae. Voluptatum neque et nesciunt et ipsam molestias. Aut asperiores qui accusamus repellendus.', 5, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(168, 34, 'Ross Murazik', 'Earum laborum aut eveniet harum et nam aut repudiandae. Exercitationem laboriosam est culpa dicta. Qui temporibus voluptatem nihil itaque voluptas occaecati.', 0, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(169, 31, 'Dr. Larry Johns', 'Alias pariatur explicabo suscipit corporis nihil. Voluptatem aut minus et fugiat sed voluptas exercitationem voluptas. Molestiae sit dolores ut laboriosam eaque nam cupiditate neque. Ut possimus sit quis doloribus explicabo.', 5, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(170, 24, 'Mr. Mike Smitham DVM', 'Sunt id omnis voluptates. Quia et ducimus sapiente rerum eum sit. Distinctio eius dignissimos ad deleniti aut qui.', 5, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(171, 35, 'Bettie Steuber', 'Velit amet quo rerum molestiae rerum. Laboriosam qui consequatur aspernatur commodi non. Beatae unde vel voluptatem ut libero. Iusto et praesentium tempora voluptate reiciendis et.', 1, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(172, 28, 'Garrison Morissette', 'Sit et laborum eum aliquid rerum voluptas nihil enim. Impedit et nihil beatae minima. Ab velit labore qui quidem. Aut possimus magnam sed quis aperiam qui sit corporis.', 4, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(173, 14, 'Berry Kuhn', 'Saepe non et ea qui debitis nemo consectetur. Non architecto et at repellendus similique ex. Laboriosam fugiat atque quia perspiciatis sequi similique. Consequatur et aliquid cum laborum blanditiis perferendis cumque.', 3, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(174, 46, 'Beatrice Boehm', 'Quibusdam accusamus nisi in. Doloremque eos consequuntur aperiam numquam quia recusandae. Est asperiores quia nihil nulla est aliquid est.', 0, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(175, 49, 'Merle Tromp', 'Qui autem numquam harum voluptatem dolore veritatis. Qui tempora ullam ratione voluptas non et delectus. Atque rem quibusdam ut non aut dolor rerum.', 1, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(176, 1, 'Kian Krajcik', 'Dolore dolorem aut et et culpa at. Et modi occaecati aperiam vero omnis accusamus placeat dolorum. Necessitatibus rerum neque et eos non. Magnam repellendus pariatur voluptate enim.', 4, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(177, 10, 'Major Frami', 'Ut et ut quod suscipit rerum. Qui tenetur unde necessitatibus recusandae quia. Atque adipisci sint nisi nulla.', 2, '2018-04-17 12:46:30', '2018-04-17 12:46:30'),
(178, 44, 'Lourdes Watsica', 'Quas molestiae aut et animi. Ea sapiente culpa amet voluptatum adipisci impedit et. Aut sunt ipsa placeat. Blanditiis debitis vero eius sunt.', 2, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(179, 43, 'Dr. Cordell Rohan Sr.', 'Molestiae quam et praesentium ut et. Odit sit qui rerum aliquid rerum qui quae. Est itaque repellat deserunt id laborum autem.', 3, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(180, 25, 'Ms. Ada Marks', 'Dolore et aut sequi. Possimus maxime dolorem excepturi est hic. Earum sequi in et nam modi dicta.', 4, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(181, 50, 'Miss Ludie Jenkins', 'Laborum laudantium nihil quia eligendi mollitia qui voluptatibus et. Totam quibusdam voluptatem impedit iusto odit. Vero sint praesentium aut voluptatem voluptate ut.', 3, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(182, 31, 'William Feeney', 'Nobis consectetur quo dignissimos tenetur temporibus dolorum eveniet. Temporibus veritatis ullam et ullam. Mollitia natus officiis in aut nostrum aliquam.', 1, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(183, 13, 'Dr. Mittie Weimann DDS', 'Velit ratione non delectus ut. Consequatur impedit laboriosam alias tempora adipisci ab porro. Autem aut cupiditate dolorem assumenda. Id consequatur ea porro.', 0, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(184, 28, 'Prof. Seth Mohr I', 'Nihil aperiam explicabo neque aspernatur dolor qui laborum. Voluptate quia quo ut et dolores natus. Vel exercitationem omnis a illo. Adipisci aperiam non perferendis eius natus asperiores.', 1, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(185, 41, 'Dr. Jeramie Muller', 'Quo doloremque non sed praesentium. Quisquam excepturi itaque nemo laudantium accusamus blanditiis.', 2, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(186, 13, 'Miss Alba Lakin DDS', 'Minus ut quo velit et in id vel. Voluptatum magnam necessitatibus magni. Necessitatibus inventore quia consequatur pariatur voluptates. Numquam et ad quas fuga.', 1, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(187, 44, 'Dr. Norwood Hickle II', 'Dolor illum omnis ab labore perspiciatis. Unde totam est saepe odit quis iure est. Iusto ab suscipit sunt et quis. Nobis nam vel soluta qui quis est expedita.', 4, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(188, 13, 'Davin Koss PhD', 'Minima est rerum expedita tempora ab magni. Tempora eos eos molestiae distinctio. Modi culpa ea doloribus voluptas aspernatur.', 0, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(189, 36, 'Molly Stokes', 'Voluptas modi odio distinctio explicabo. Id nihil eos sapiente qui. Et qui in mollitia qui.', 3, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(190, 43, 'Marisa Ryan II', 'Omnis molestiae iusto maxime. Velit iste sint eum cumque. Quidem aut aut qui tempora. Asperiores est quas tenetur sed illum debitis.', 5, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(191, 12, 'Johan Stoltenberg', 'Eos in eos ut beatae laborum provident sed. Commodi beatae minus eos. Sit a similique aliquid odit vitae quod et.', 1, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(192, 31, 'Lina Schowalter', 'Maiores dolorem rerum sunt non culpa vero. Est architecto sunt sunt recusandae ducimus officia et voluptatem. Enim voluptatem omnis modi quo.', 4, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(193, 3, 'Walker Goldner', 'Ipsa voluptatibus quas et culpa ut ea ducimus. Odit veritatis ut est perspiciatis rerum qui aut. Esse quis et corporis tempora quas voluptatem nam. Est voluptate voluptatum sit vel repellendus sit amet a.', 3, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(194, 50, 'Alene Fisher', 'Non quasi sint sint amet assumenda et quia. Quae ratione quo optio earum quos sunt quos. Non dicta enim modi cum fugiat consequatur nihil. Eaque explicabo dolores assumenda culpa facilis illo dolores possimus.', 5, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(195, 24, 'Maida Gerhold', 'Dolor culpa autem debitis nesciunt sed. Fugiat est doloribus porro veniam corrupti neque ut. Tempore vero ut vero commodi repellat necessitatibus.', 1, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(196, 20, 'Gino Will', 'Voluptates quis et mollitia in est fugiat. Explicabo quisquam dignissimos dolor velit qui ut. Aliquam saepe ab molestias deserunt odit qui laborum.', 5, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(197, 3, 'Lucienne Reinger', 'Enim id quis reprehenderit. Sunt ut vel id mollitia itaque quae. Eum non aut fugit consequatur fugiat beatae delectus et. Molestias est quo nihil eos.', 3, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(198, 20, 'Dr. Lyric Kozey', 'Id omnis aut temporibus sed. Impedit nisi maxime saepe voluptatum laboriosam. Possimus consectetur vel eaque quod porro recusandae voluptatum ab.', 1, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(199, 6, 'Jonas Funk DVM', 'Occaecati et soluta delectus explicabo beatae dolores aut. Sapiente qui sit dolorem velit molestias voluptatibus. Sed ea deleniti vitae explicabo quam et nobis.', 4, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(200, 46, 'Mattie Schaden', 'Non quo qui alias omnis illum et. In libero sapiente quo minima corporis distinctio est. Culpa quis incidunt reiciendis ullam distinctio placeat et.', 5, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(201, 28, 'Jolie Schuster V', 'Harum et deleniti illum est adipisci porro eveniet. Aut illo labore enim nostrum ipsam aperiam. Eos veritatis asperiores porro omnis accusamus eius nihil.', 3, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(202, 17, 'Ettie Reichel III', 'Quos autem omnis dolor velit aliquam. Aut odio ut rem sint dignissimos exercitationem adipisci. Qui assumenda unde ut occaecati vero architecto.', 2, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(203, 26, 'Junior Luettgen', 'Aut maiores minus sequi est. Qui quaerat pariatur et accusamus deleniti. Dolore ipsa impedit sed sed incidunt velit enim.', 0, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(204, 25, 'Karl Spinka', 'Sit facere qui eos nostrum est. Quia ex provident dolorum soluta modi illo. Quidem dolore culpa et maiores et.', 5, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(205, 2, 'Esta Gerhold', 'Nihil a beatae consequatur. Excepturi deserunt sint et quo aspernatur cum ullam. Earum adipisci tenetur ea est.', 4, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(206, 44, 'Ms. Amira Ullrich', 'Molestiae sed voluptatem hic molestiae officia provident. Magnam incidunt hic accusantium ea ut quod. Omnis amet officiis est a ipsum eos. Repellat ut enim quia dolorum.', 2, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(207, 37, 'Kayley Miller', 'Commodi deleniti nesciunt labore non qui. Expedita velit quia modi dicta. Aut saepe veniam mollitia accusamus sit voluptates ipsa rerum. Pariatur id voluptate laudantium a et ea dolore.', 5, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(208, 49, 'Ron Heaney IV', 'Autem qui aut et non harum. Praesentium ad ex commodi dolore laborum occaecati eos. Veniam in a quasi temporibus possimus molestias. Quo harum libero distinctio mollitia expedita labore.', 1, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(209, 2, 'Ian Collier Jr.', 'Dolorem natus ratione tempora deserunt vel sit rerum. Iure reiciendis reprehenderit iste voluptas. Aut vitae aut ipsum rerum itaque ab. Excepturi rem minus nostrum autem omnis perferendis.', 3, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(210, 26, 'Dr. Felicita Anderson V', 'Et accusantium qui dolor voluptatibus. Occaecati maxime aut velit magni esse veniam ipsam. Excepturi sapiente sed voluptatem pariatur magnam. Tenetur dolore porro sed.', 1, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(211, 47, 'Kiley Lang', 'Omnis in inventore in sed. Omnis delectus qui facere aut rem. Quia ut soluta et voluptas qui quas quo provident.', 4, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(212, 12, 'Woodrow Cronin', 'Commodi eligendi in numquam ab aspernatur. Earum voluptatibus hic nulla commodi. Minus praesentium ut est nobis repudiandae asperiores sint.', 1, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(213, 43, 'Guadalupe Swaniawski', 'Omnis quasi neque neque nulla non ut rerum. Eos sit itaque in asperiores quaerat laboriosam omnis. Voluptate debitis sit excepturi quibusdam aspernatur quis. Alias velit occaecati voluptatibus eos ullam. Ex eligendi amet dolorem.', 5, '2018-04-17 12:46:31', '2018-04-17 12:46:31');
INSERT INTO `reviews` (`id`, `news_id`, `user`, `review`, `star`, `created_at`, `updated_at`) VALUES
(214, 25, 'Prof. Earnestine Murray Jr.', 'Repudiandae possimus tenetur excepturi aspernatur fuga debitis. Sunt ipsum numquam magnam quia minima sapiente cum unde. Omnis rerum ut voluptatem veritatis officia sint ipsa perferendis.', 0, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(215, 26, 'Dr. Christa Heller', 'Voluptatem voluptatem unde qui omnis. Id assumenda voluptatem qui quibusdam molestiae doloremque natus. Natus non dolorem architecto repellendus sed qui fugit. Repellendus maxime est ipsum autem eum commodi. Omnis porro ipsam vel incidunt ex veritatis.', 1, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(216, 6, 'Holly Roberts', 'Voluptas minima quae sapiente quisquam. Ea officia in dolore voluptate quasi neque. Et cum neque voluptatem voluptate temporibus. Et voluptatem totam id qui.', 3, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(217, 30, 'Meredith Bahringer', 'Est placeat enim ut ipsum atque eaque illum temporibus. Debitis molestiae ipsam illo voluptatem omnis rerum omnis blanditiis. Eum voluptatem molestias eos enim quas. Doloribus facilis enim nobis ut.', 5, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(218, 34, 'Dr. Cheyanne Jast III', 'Dolore eos aut enim sed. Minus aperiam quis natus qui voluptatem a dolorem. Excepturi voluptatem possimus occaecati aut dolore sit dolorem ut.', 0, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(219, 31, 'Reyes Goyette', 'Pariatur quam impedit cumque. Dolor pariatur omnis totam ea non minima enim. Est in ipsum fugiat eligendi neque nihil eligendi. Rerum iusto quia quae enim nobis qui facere.', 4, '2018-04-17 12:46:31', '2018-04-17 12:46:31'),
(220, 14, 'Rigoberto Harvey DDS', 'Suscipit molestiae officia earum corrupti sit laborum. Facere quia dolorum totam quos itaque voluptas distinctio. Delectus eos aspernatur est est.', 3, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(221, 12, 'Dr. Karina Schamberger PhD', 'Eius et facilis soluta debitis ut quis. Inventore adipisci ipsum perspiciatis incidunt dicta ea libero. Est porro sit autem. Odit similique dolor ipsam voluptates.', 5, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(222, 40, 'Clare Tromp', 'Minima fugiat eligendi ducimus ullam rerum sunt vel delectus. Quis aliquid dicta tenetur ea totam explicabo recusandae vero. Eos possimus itaque adipisci molestias ipsum et ullam eum.', 4, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(223, 10, 'Marielle Brown', 'Ea esse ut sed amet quo. Aut velit soluta et rerum tempore quisquam. Et exercitationem aperiam rerum vitae.', 0, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(224, 34, 'Prof. Magnus Parisian', 'Consectetur maxime aut voluptatem repudiandae tempora quos. Omnis nesciunt non aut. Voluptatem nihil ad quaerat nulla. Similique modi autem quo consequatur officiis qui.', 0, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(225, 28, 'Rose Batz IV', 'Ea iusto et similique tempora eius et. Nulla eos incidunt in. Dolor consectetur aliquam dolor dolorem dolor non consequatur.', 5, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(226, 8, 'Kenna Lubowitz', 'Aliquid consequatur autem nihil aut inventore. Quia rerum cupiditate dolorem quas reprehenderit laboriosam. Voluptatem totam voluptate tempore iste harum.', 2, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(227, 9, 'Owen Botsford', 'Occaecati corporis perferendis similique ut. Delectus totam optio dignissimos voluptas doloribus. Sint voluptatem tempore omnis in. Consequatur distinctio necessitatibus eos.', 5, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(228, 41, 'Eloy Parker', 'Quasi numquam corporis et sapiente sunt. Labore cupiditate incidunt earum. Ut praesentium sunt minus perspiciatis iste dolor est. Qui iste saepe ut eum iste molestias quia.', 0, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(229, 11, 'Meaghan Bosco', 'Explicabo veniam neque eos quisquam iusto impedit nisi. Consequatur necessitatibus tenetur ut est nulla sed itaque exercitationem. Eligendi earum exercitationem qui architecto ex.', 1, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(230, 3, 'Sammie Kirlin', 'Enim odit earum non animi. Reprehenderit autem neque enim excepturi. Qui veritatis aliquam optio quae laudantium reiciendis aut est. Soluta quod minima porro veniam et autem.', 2, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(231, 50, 'Lawrence Tromp', 'Non et accusantium sit sunt iure tempore et. Qui est quasi veniam ipsam earum est. Dolorem rerum maxime voluptatem at delectus dolore. Error adipisci autem assumenda quidem nihil.', 4, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(232, 1, 'Prof. Rogelio Nicolas', 'Mollitia voluptatem accusamus qui non voluptatibus perferendis. Consequatur ut vel laborum. Ut ipsa ut voluptate architecto rerum sint sit veniam. Voluptatem dolor sed nobis.', 1, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(233, 6, 'Leta Collins', 'Nemo voluptatem hic culpa voluptatem sit. Adipisci in ipsam esse nobis iste eos voluptas. Voluptas qui sint maxime numquam sed repellendus. Eum impedit tenetur facere quo.', 3, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(234, 42, 'Mrs. Janet Cole', 'Sunt perferendis repudiandae aut minima consequatur. Sed eius reiciendis quisquam quia. Sit et voluptas minus consectetur.', 0, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(235, 25, 'Clementine Schoen', 'Est odio rem aut magni dolores rerum. Cumque aperiam perferendis repudiandae blanditiis quis et. Consequatur consequatur explicabo aut ut ut est.', 3, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(236, 35, 'Logan Schaefer III', 'Aut et nostrum minus autem earum necessitatibus omnis. Sint enim excepturi tenetur animi quas quae pariatur. Ratione aut magni voluptas amet. Corrupti saepe laudantium voluptates quaerat.', 2, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(237, 46, 'Emily Weber', 'In qui rerum pariatur qui ex cupiditate eaque in. Odit quo neque rerum cumque tenetur labore. Voluptas asperiores eos sed quia et molestiae magnam.', 1, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(238, 16, 'Corbin Kreiger', 'Consectetur vitae blanditiis iusto in. Deserunt nihil autem iste nam at aliquid quidem. Natus laborum autem dolore fugit expedita saepe.', 5, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(239, 33, 'Prof. Larry Stanton III', 'At dolorum enim labore quo voluptatem. Magni vel qui optio sed. Dignissimos voluptatem aut illo vel.', 2, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(240, 36, 'Leopoldo Macejkovic IV', 'Corrupti et suscipit impedit quia. Dolore sapiente in qui perspiciatis at eveniet quia.', 4, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(241, 46, 'Richmond Sporer', 'Voluptatem et eligendi nihil in et eos. Et id molestiae voluptatem aut aut. Ipsa omnis dolores quis reiciendis.', 0, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(242, 8, 'Camila Nolan', 'Ea suscipit ipsam perferendis iusto quia. Est et porro qui deleniti adipisci. Aut libero aut necessitatibus itaque. Explicabo exercitationem necessitatibus quod asperiores.', 0, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(243, 10, 'Dr. Laron Kreiger', 'Laboriosam id voluptatem quia aliquam alias nisi. Qui voluptatem voluptas iusto quia. Eum recusandae iure et cumque modi necessitatibus ut. Alias cum perferendis labore amet vel non dolore. Eos et id quia est temporibus.', 1, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(244, 35, 'Dr. Kiana Maggio PhD', 'Odio delectus accusantium facilis rerum molestias. Dolore illo nemo cupiditate unde. Esse ut repellendus impedit cumque iste a. Eum explicabo nam est.', 1, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(245, 9, 'Miss Yasmin Nader V', 'Sit maxime enim in. Magni impedit rerum culpa dolores fuga aut et. Aut dolor mollitia vel voluptatem dolor culpa ut. Dicta illum ratione ipsa earum et.', 1, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(246, 43, 'Keshaun Gaylord', 'Rerum est delectus enim nemo id quo odit. Doloremque iusto qui atque eligendi ut accusantium. Beatae eos nam molestias molestiae.', 5, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(247, 31, 'Barry Zulauf', 'Culpa accusantium commodi quae rerum est quaerat. Aut et voluptas et debitis aut veniam maxime. Molestiae optio corrupti vitae velit.', 3, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(248, 10, 'Julian Erdman', 'Sed fugit non suscipit voluptas labore nihil voluptatem. Et quia qui neque. Neque et minus ducimus excepturi necessitatibus.', 2, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(249, 40, 'Ariane Sawayn', 'Magni enim perferendis ad accusantium et vero alias. Sed rem reprehenderit unde rerum ducimus. Rerum officiis et est. Vel error et distinctio necessitatibus aspernatur.', 0, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(250, 13, 'Benjamin Leannon', 'Aperiam at voluptatem deleniti sunt ut enim in. Quidem doloribus quo suscipit quia explicabo. Iusto sed facilis ratione. Quo molestias eos illo atque dolorum enim ab recusandae.', 3, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(251, 35, 'Celine Cormier', 'Commodi minima dolor quidem quia temporibus ut. Vel quas nulla consequatur eum rem. Saepe ea saepe dolorem nulla ipsum. Iure et itaque dolorum quaerat et qui maxime quia.', 3, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(252, 33, 'Wiley Nader', 'Repellat aut iure cum eveniet. Sed officia molestiae perspiciatis delectus dolor. Et et est eum consequatur quibusdam.', 3, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(253, 3, 'Maurine Heller', 'Eum et ad consequatur optio sint neque. Recusandae quasi dolor aut rerum ratione. Excepturi officiis quos magni sapiente. Laborum nemo est minima.', 4, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(254, 15, 'Prof. Javon Mohr', 'Laudantium ipsum sunt voluptate. Soluta facilis rerum reiciendis ipsa dolor ipsam. Sunt saepe est unde eaque. Atque iste tempora eaque animi non excepturi quisquam laudantium.', 0, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(255, 32, 'Virgie Gaylord', 'Tempora ratione eaque quo rerum vel recusandae. Voluptatum optio doloremque ex voluptas ut molestiae. Sint iure corporis animi.', 0, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(256, 37, 'Fern Dare', 'Eos aperiam et voluptatum assumenda autem at debitis expedita. Quod accusantium ab quasi qui ea aut dolorem et. Magni omnis sit autem illo rerum assumenda veritatis.', 3, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(257, 30, 'Delores Beier', 'Placeat et beatae eum aut officiis. Neque sed sed sit alias voluptate placeat doloribus. Amet ut rem voluptatem et rerum mollitia eveniet aliquid.', 3, '2018-04-17 12:46:32', '2018-04-17 12:46:32'),
(258, 29, 'Michelle Turner', 'Consequatur voluptas sed ullam iure. Ratione sit omnis cum ad. Aperiam voluptates minus similique non officia unde vitae.', 4, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(259, 13, 'Kiana Conn', 'Voluptatem non a sint ea laboriosam odio tenetur. Tempore sequi architecto eaque. Est officiis temporibus laborum est.', 1, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(260, 16, 'Reggie Carter IV', 'Porro est qui non voluptatem at deserunt. Est voluptatem sint rerum eos voluptatum unde sit voluptate. Earum excepturi aut natus hic numquam voluptatem.', 0, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(261, 42, 'Ricky Gulgowski', 'Voluptas itaque iusto ea adipisci. Delectus consequatur accusamus quo provident illum ut.', 5, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(262, 26, 'Cornelius McCullough', 'Quaerat ullam hic ea ut libero. Earum dolores quia ut corporis qui perferendis in. Et dolores eaque itaque adipisci velit. Pariatur molestiae eum ipsa.', 3, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(263, 40, 'Mr. Ronaldo Keeling IV', 'Tenetur est excepturi doloremque qui velit quidem ut enim. Maxime quas magnam est qui ut nam. Ullam laudantium asperiores qui sequi omnis odit.', 3, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(264, 29, 'Yolanda Kuhlman MD', 'Veritatis deleniti expedita assumenda debitis in. Omnis sunt ut reiciendis. Inventore itaque doloremque assumenda.', 4, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(265, 18, 'Otto Lubowitz', 'Esse ut beatae culpa minus excepturi harum. Fugit sunt animi deleniti mollitia rerum eum.', 4, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(266, 41, 'Lon Olson', 'Pariatur dolores possimus voluptatem est aut perferendis dolores. Dignissimos debitis vel nam eaque expedita reiciendis odit similique. Voluptas perspiciatis officia voluptas ut dolorem et sit.', 3, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(267, 6, 'Thomas Kertzmann', 'Autem rem reiciendis delectus. Ipsam velit debitis sit repellat praesentium labore harum.', 2, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(268, 27, 'Keegan Goyette', 'Et vel rem sint odio sed sunt id. Qui nisi ullam error repellat delectus corporis. Cumque cumque est illum deserunt suscipit ut. Officia unde repudiandae laboriosam et rerum et.', 1, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(269, 39, 'Breanna Huels Jr.', 'Facere adipisci architecto mollitia non qui laboriosam doloremque. Et similique et consectetur eos modi. Id facilis eos tempore voluptas necessitatibus ipsam. Laudantium facere tempore rerum.', 1, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(270, 2, 'Jefferey Doyle I', 'Error quasi iusto architecto molestias eum error. Ut libero repellat et error ut vel sed.', 4, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(271, 23, 'Ian Towne', 'Unde earum eligendi incidunt et voluptates reiciendis. Possimus velit iusto inventore est sit voluptatibus.', 5, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(272, 34, 'Britney Borer', 'Unde accusantium libero ad quis ea minus labore. Laboriosam nobis est corrupti quia quia ex omnis. Aut sit natus iusto accusamus quo. In modi est odio maxime rem et commodi. Ducimus iusto officiis nihil excepturi.', 5, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(273, 12, 'Mr. Lavern Miller', 'Unde quidem hic ut perferendis. Ratione enim itaque accusantium assumenda autem eius. Aut rerum officiis ad suscipit dolor dolorum.', 2, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(274, 7, 'Katherine Runolfsdottir', 'Minus ut nostrum optio reiciendis cum laboriosam voluptatibus incidunt. Fugiat nam ducimus id deserunt et accusantium. Voluptatum modi itaque autem inventore eum dolores.', 5, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(275, 42, 'Brennon Pacocha', 'Distinctio voluptatem quos repudiandae et. Cupiditate sequi consectetur est sunt et sit ut. Iste praesentium aspernatur velit sint.', 0, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(276, 27, 'Miss Novella Witting', 'Nostrum quidem totam aut. Qui eum est ad aut ab quo. Debitis repellendus magni facere totam et necessitatibus aperiam.', 3, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(277, 45, 'Gregory Wuckert', 'Laboriosam et maxime officia natus in. Dolorem porro et sint fugiat. Cumque eos ad aut esse laudantium.', 1, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(278, 9, 'Breanne Sanford', 'Nulla labore omnis quaerat vel rerum delectus vel. Necessitatibus est cumque aspernatur ipsam. Recusandae quos et voluptas facere.', 3, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(279, 15, 'Mr. Ward Swift PhD', 'Labore nostrum delectus voluptate. Aut quibusdam debitis perspiciatis ut qui. Dolor est voluptates ducimus eveniet est nulla. Delectus recusandae numquam porro. Doloremque eius quod qui impedit.', 4, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(280, 10, 'Rhianna Sawayn', 'Et reprehenderit quis officia hic assumenda. Eaque qui consequatur esse harum pariatur ad. Sit aut inventore sit deleniti earum dignissimos natus eos.', 1, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(281, 7, 'Ida Veum', 'Architecto laudantium earum voluptatem at dolorem laboriosam. Aliquid laborum error alias suscipit aut qui. Cumque cum voluptatem esse soluta expedita. Quasi inventore et dignissimos reprehenderit.', 5, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(282, 43, 'Dr. Oren Cartwright', 'Blanditiis sit tenetur vel aut pariatur. Nam provident et ut vitae animi aliquid. Quia velit exercitationem velit et voluptates. Voluptates nesciunt quis ut eos at repellat.', 2, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(283, 31, 'Ressie Sipes', 'Deleniti sit aut dolore. Corrupti non iste iusto velit et autem.', 5, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(284, 19, 'Prof. Kurt Berge', 'Sed dolorem nihil perspiciatis eum corporis. Sint maiores fugit molestiae. Provident veritatis aut rerum.', 0, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(285, 9, 'Prof. Gus Green IV', 'Et nam dolores dicta eos repudiandae dicta iste. Dolores vitae cum sit itaque laboriosam incidunt accusantium. Explicabo reiciendis error accusantium quos iusto.', 1, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(286, 18, 'Miss Arlie Sauer', 'Quasi ut debitis perferendis in ex consequatur. Hic aliquam qui in eius voluptatem. Blanditiis dolor sed rerum vitae aut sed debitis. Veritatis optio aliquam earum aliquid corrupti.', 5, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(287, 34, 'Mr. Roberto Emmerich', 'Laboriosam maiores illo sed omnis minima qui. Aut sit ut fuga pariatur eos assumenda quia. Est molestiae deserunt fugiat. Eaque voluptas ea voluptatum placeat dolores dolorum. Ipsam magni in ea quasi commodi veritatis qui.', 3, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(288, 29, 'Tatum Lesch', 'Optio aliquid et eos incidunt similique autem qui. Distinctio omnis dolores recusandae facere aperiam sit provident.', 2, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(289, 27, 'Emilio Schiller', 'Quod est dolor omnis officiis sequi aut quia neque. Ea et in nesciunt in nam consequatur culpa. Dolor beatae alias quia assumenda nulla minus laudantium. Est nesciunt nostrum fuga. Modi sed cum vel amet vero recusandae eligendi.', 5, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(290, 38, 'Miss Aracely Reichel I', 'Non alias eos illo est minima tenetur. Laboriosam eligendi a quia porro aut.', 3, '2018-04-17 12:46:33', '2018-04-17 12:46:33'),
(291, 5, 'Prof. Rosalia Lehner', 'Magnam vel iusto porro minima molestiae. Nesciunt distinctio qui expedita eveniet. Illo ut dolores corporis excepturi aspernatur dolores.', 1, '2018-04-17 12:46:34', '2018-04-17 12:46:34'),
(292, 34, 'Rosella Reichel', 'Nesciunt ex vero ea aperiam suscipit qui. Et quo eum quos dicta. Numquam corrupti porro nulla debitis itaque ab.', 2, '2018-04-17 12:46:34', '2018-04-17 12:46:34'),
(293, 21, 'Mr. John Ortiz', 'Est laborum maiores corrupti ullam atque veritatis. Sit ut numquam non non et deserunt non. Qui voluptates tenetur quod voluptas ullam aut molestias.', 2, '2018-04-17 12:46:34', '2018-04-17 12:46:34'),
(294, 7, 'Dr. Tyree Pollich Sr.', 'Et dolorem maiores saepe. Dolor possimus fugit et qui nobis. Aspernatur assumenda laborum esse aperiam sapiente voluptas maiores. Vitae eos et quas delectus sit laborum beatae.', 0, '2018-04-17 12:46:34', '2018-04-17 12:46:34'),
(295, 4, 'Jayda Will', 'Aut consequatur et rerum repellat et reprehenderit nihil odio. Sunt quod reiciendis harum dolores velit explicabo esse repudiandae. Atque fugiat voluptas soluta animi ratione quos. Quod aut ex reprehenderit labore incidunt ut officia dicta.', 5, '2018-04-17 12:46:34', '2018-04-17 12:46:34'),
(296, 22, 'Delores Larkin', 'Ut ullam vitae aut fugiat qui. Ex culpa expedita qui blanditiis natus sunt. Esse quo dolorum unde dicta in sed accusamus.', 4, '2018-04-17 12:46:34', '2018-04-17 12:46:34'),
(297, 42, 'Dr. Christiana Langworth PhD', 'Corrupti dolore iusto est dolorem et neque id. Eligendi fuga qui aut nulla maiores. Laudantium odit aperiam voluptate velit.', 4, '2018-04-17 12:46:34', '2018-04-17 12:46:34'),
(298, 38, 'Ms. Adeline Swift I', 'Aut voluptatum totam sed ab impedit. Eum facilis impedit vel et quae nulla soluta. Eum ut facilis aut ab sit dolorem tenetur. Omnis eaque sint et nisi nihil.', 4, '2018-04-17 12:46:34', '2018-04-17 12:46:34'),
(299, 3, 'Breana Hills', 'Dolor qui fugit a maxime ipsa recusandae. Hic vitae est dignissimos ea non. Quo qui maiores et porro optio impedit ullam.', 4, '2018-04-17 12:46:34', '2018-04-17 12:46:34'),
(300, 21, 'Rozella Glover', 'Rem dolores in eos molestiae saepe. Excepturi tempore eum voluptatibus ut sit aut.', 0, '2018-04-17 12:46:34', '2018-04-17 12:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `celebrities`
--
ALTER TABLE `celebrities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_news_id_index` (`news_id`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `celebrities`
--
ALTER TABLE `celebrities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `musics`
--
ALTER TABLE `musics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
