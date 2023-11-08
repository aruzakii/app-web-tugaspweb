-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Nov 2023 pada 15.51
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fae_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `slug`, `created_at`, `updated_at`, `gambar`) VALUES
(1, 'Programing', 'programing-2', '2023-05-07 10:03:30', '2023-05-10 07:15:14', NULL),
(2, 'Desain', 'desain', '2023-05-07 10:03:30', '2023-05-10 07:15:29', NULL),
(3, 'Personal', 'personal', '2023-05-07 10:03:30', '2023-05-10 07:15:47', NULL),
(4, 'Politik', 'politik-2', '2023-05-07 10:03:30', '2023-05-10 07:16:28', 'img-kategoriPolitik/MfcRYPBUPgHXMCuQbxFsC8S6oYMor9bcYhTJeKJe.jpg'),
(5, 'Teknologi', 'teknologi', '2023-05-07 10:03:30', '2023-05-10 07:17:06', NULL),
(6, 'Psikologi', 'psikologi', '2023-05-07 10:03:30', '2023-05-10 07:17:18', NULL),
(11, 'Game', 'game', '2023-05-09 10:43:24', '2023-05-10 07:17:41', NULL),
(13, 'Military', 'military', '2023-10-29 05:21:03', '2023-10-29 05:21:03', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_04_16_075827_create_posts_table', 1),
(5, '2023_04_17_123525_create_kategoris_table', 1),
(6, '2023_04_20_122037_create_users_table', 1),
(7, '2023_05_08_173110_add_is_admin_to_users_table', 2),
(8, '2023_05_09_171307_add_img_to_kategoris_table', 3),
(9, '2023_05_09_172041_add_img_to_kategoris_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `kategori_id`, `user_id`, `judul`, `slug`, `gambar`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(2, 3, 2, 'Cupiditate dolor nobis similique vel ut distinctio.', 'accusamus-id-voluptatum-et', NULL, 'Voluptates sit numquam voluptas deserunt et repellendus ipsa vitae. Dolores eum enim expedita corporis tempora qui aut. Voluptatum expedita nemo aut ad aut. Sed suscipit dolore et quia magni excepturi.', '<p>Sequi expedita consectetur est. Perferendis laudantium aliquid totam in et. Non aliquid sed velit hic. Iste in at illum doloribus.</p><p>Tempore aut reprehenderit atque aut voluptate quis. Dolor beatae iusto consequatur laudantium occaecati fugit at. Sequi velit amet tempore eos.</p><p>Sint asperiores inventore voluptas quaerat quam. Minus impedit et qui quam nemo qui quae. Quod et saepe quo perferendis architecto molestiae. Excepturi voluptatem nostrum repellat amet. Sit officiis laudantium vero tenetur perferendis quos assumenda voluptates.</p><p>Veniam saepe velit tenetur et quo provident. Minima reiciendis rerum ipsa necessitatibus sed. Necessitatibus totam enim cupiditate quis. Non labore quis cupiditate assumenda cum sed. Error ipsam recusandae neque vero.</p><p>Illum perferendis dignissimos et iste et exercitationem consequuntur. Veritatis voluptatibus sapiente cupiditate aspernatur voluptas. Facere cumque ex eligendi et et minus ex quidem. Voluptatem architecto cupiditate odit perferendis voluptatem non enim.</p><p>Et quos natus sunt in. Voluptatem repudiandae suscipit asperiores. Quibusdam officiis ratione aperiam. Eos odio eaque praesentium nobis saepe ratione natus.</p><p>Iusto eos ut debitis in aperiam hic quam. Consequatur dicta iste laudantium reiciendis porro. Esse aliquam exercitationem quam corrupti recusandae odit dolorem.</p><p>Tempore quis sed ex ullam eaque. In et est et ea praesentium explicabo corrupti. Aut velit tempora occaecati vitae sit rerum.</p><p>Quas doloremque suscipit pariatur ex dolor. Quia corrupti rerum nisi. Voluptatem et dicta aut et ipsa architecto dolores quia. Natus sint architecto et molestiae.</p><p>Quisquam impedit ut eius rerum. Dolorum dolores velit ea quaerat adipisci perferendis nihil. Magni rerum quis magni voluptas quaerat illo.</p>', NULL, '2023-05-07 10:03:38', '2023-05-07 10:03:38'),
(3, 2, 2, 'Ea quod rem enim.', 'et-quaerat-adipisci-adipisci-sed', NULL, 'Consectetur ut aliquam cum. Et deserunt optio sequi omnis dolores distinctio dolores. Deleniti recusandae et omnis fugit. Temporibus qui eos cum sunt nisi ut.', '<p>Dolores tempore rerum ea saepe minima. Mollitia ad impedit ut aut cumque culpa. Ea optio corporis delectus architecto assumenda deserunt aut.</p><p>Quas voluptates perferendis minus quis debitis distinctio. Unde reprehenderit accusantium autem quis qui sed. Incidunt molestiae tempora minima rerum explicabo ipsam. Possimus ullam rem reprehenderit quia soluta.</p><p>Voluptatem ut voluptatum autem ex sapiente. Rerum ipsum nihil rerum impedit. Quaerat provident maxime sit sunt harum cupiditate.</p><p>Dolor ipsum in libero. Dolor eum adipisci nam ducimus molestiae. Consequatur cumque quisquam aut aliquid. Labore est iure aut et et. Quaerat est est vitae laboriosam.</p><p>Quasi ab velit sed itaque beatae illum. Deleniti ipsa eum porro sit ea quisquam quo perspiciatis. Deleniti blanditiis ducimus doloremque quod quod sapiente qui. Rerum autem esse earum perferendis.</p><p>Tempore laudantium ipsa numquam. Et non earum et in. Quia dolor quia facilis eveniet laudantium explicabo. Ut a veritatis ut molestias.</p><p>Enim architecto eum iure dicta voluptas amet. Sunt voluptatem et non est aut fugit aliquid. Est quibusdam corrupti aut est soluta eius sunt.</p><p>Est eum minus corrupti ducimus molestiae. Nihil qui amet aperiam rem aut. Ipsa nobis quia odio nesciunt.</p><p>Error ratione rerum officia sapiente excepturi magni. Quo autem est iure autem soluta veniam totam. Sint et porro iste et quia laborum.</p><p>Ut ut impedit unde enim quia laudantium. Sed enim occaecati nobis cupiditate unde. Quae ea in et quae quibusdam. Quaerat laborum dolores necessitatibus enim.</p>', NULL, '2023-05-07 10:03:38', '2023-05-07 10:03:38'),
(4, 3, 1, 'Tempora repudiandae quia quis consequatur fugiat pariatur.', 'in-aperiam-ut-et-molestiae', NULL, 'Cumque assumenda sed repellendus nisi. Aut quas nihil eaque et inventore harum. Cumque quos et distinctio.', '<p>Qui doloribus et sunt dolor enim necessitatibus eum sint. Ipsum enim velit itaque. A praesentium soluta rerum quod rerum sed velit.</p><p>Voluptas saepe consequatur est. Aperiam sed explicabo quas porro. Nisi aspernatur autem impedit sed ad.</p><p>Occaecati a sit quidem. Sed quo voluptatem sit. Sed sint voluptatem sed esse eos id. Voluptatem ad et accusantium veritatis distinctio consequatur ut.</p><p>Natus veniam voluptate nostrum numquam ipsam. Ducimus sint doloribus ratione nam eveniet. Dignissimos aperiam ab laborum corrupti. Aspernatur debitis dolorem atque repellendus. Consectetur aliquid animi iure et fugit et quibusdam modi.</p><p>Est nulla ut quo deleniti. Qui ea pariatur quis repellendus est commodi optio esse. Et voluptatibus aut molestiae vel alias minus.</p><p>Quis et excepturi fugit aut explicabo ut hic. Impedit fuga libero omnis iusto. Dolorem vitae incidunt dolores amet vero vel.</p>', NULL, '2023-05-07 10:03:38', '2023-05-07 10:03:38'),
(5, 1, 1, 'Rem odio sapiente ut.', 'qui-perferendis-sunt-ut-nihil-eius', NULL, 'Praesentium tempora ducimus a dolorem magnam id possimus. Aliquam aut delectus sed hic sapiente quaerat. Deserunt tenetur qui architecto omnis. Deleniti nisi odio ut eaque id totam voluptatem ea.', '<p>Aliquam accusamus mollitia et quaerat accusantium molestiae deleniti. Asperiores dolores aut eum architecto et. Aut soluta ducimus voluptates explicabo et sint quae consequatur. Laborum provident consectetur ut aut quae harum aspernatur.</p><p>Distinctio vel reiciendis possimus nam natus. Magni quisquam doloribus est nam ullam. Necessitatibus sunt natus dolor minima.</p><p>Esse ea qui cum voluptatem sunt quo ea. Fuga fugit saepe non illo voluptatem error possimus deserunt. Omnis ut suscipit dolores impedit esse. Quia rem aut et aperiam deserunt.</p><p>Labore dolore veniam molestiae et non aut repellat minima. Facere maxime a quam ut. Est rerum est id enim. Quo corporis ut dignissimos animi.</p><p>Autem est sapiente praesentium eum vel. Tempore hic unde eos eveniet incidunt. Consequatur dolor et doloremque eius impedit at sint. Rerum fugiat reprehenderit dignissimos ea necessitatibus.</p><p>Nemo et enim rem dolore eum recusandae soluta. Ratione aut et mollitia occaecati doloribus sed sint non.</p><p>Sit rerum est unde cupiditate reprehenderit numquam. Dolores dignissimos dolorem quibusdam. Quis ipsa sunt aperiam porro sint deserunt debitis.</p><p>Laborum odit ut non iste et ipsum. Dignissimos fugiat tempore et facere fugit at dolorem. Error molestias nesciunt soluta. Rerum numquam error ipsam labore.</p><p>Quo dolorum minus recusandae dolorem accusantium. Qui nemo consequatur qui officia nobis facilis sit. Magnam officia et qui quis voluptas cupiditate labore.</p><p>Ut non consectetur enim reiciendis itaque quas. Aut nam voluptas beatae molestias minus repellendus. Libero vel et eum sed quis occaecati dolores aut. Rerum amet quis quia ullam eum molestias non et.</p>', NULL, '2023-05-07 10:03:38', '2023-05-07 10:03:38'),
(6, 1, 2, 'Sunt voluptate nesciunt.', 'provident-autem-ut-explicabo-blanditiis-eos-quia', NULL, 'Vel sit voluptatum voluptatem in architecto aut. Ullam facilis itaque fuga voluptate deleniti voluptas. Omnis aliquam nostrum reprehenderit ut nobis. Non aut est aut dolor voluptas quia et.', '<p>Eligendi itaque ullam enim aliquid voluptatum. Dolor corrupti corrupti quo at officiis. Perspiciatis veritatis qui possimus reprehenderit suscipit voluptas vero. Placeat est est voluptatibus rerum ut enim earum sed.</p><p>Nulla at qui officia culpa cupiditate incidunt. Dolorem voluptas recusandae et ab non nobis. Tempore et consequatur quae. Sunt id quis nemo enim pariatur.</p><p>Recusandae dolorem quidem facere aut culpa qui tempora. Illo molestiae consequatur molestiae illo ipsa accusantium voluptatibus. Et occaecati consequatur voluptatem velit porro aut. Tempore aut nobis aliquid consequuntur maxime fugiat. Sed velit eaque ipsam.</p><p>Voluptas aperiam quos sapiente. Consectetur aliquam et aspernatur temporibus est repellendus. Molestiae repudiandae qui ut.</p><p>Tenetur consequatur numquam ut dolorem. Recusandae quo porro nam omnis sapiente excepturi odit. Dolorum quo molestias aspernatur et. Recusandae dicta et hic nihil ipsa odit officia.</p><p>Rerum aut doloribus nam illo autem nostrum. Sapiente eos deserunt modi modi. Atque velit et ut veniam sit id.</p><p>Eligendi in perspiciatis voluptatibus dolorem quo enim tenetur. Doloremque doloremque voluptatem et ut. Magni tempore saepe eum similique accusantium doloribus sunt.</p><p>Quas eum et non. Non ut itaque magnam enim sed ex ex. Nihil nulla mollitia natus neque ex.</p><p>Reiciendis et qui neque illum. Rerum saepe alias optio at adipisci distinctio velit libero.</p>', NULL, '2023-05-07 10:03:38', '2023-05-07 10:03:38'),
(7, 3, 2, 'Error dolores in in sapiente sit possimus ipsam placeat rerum.', 'ut-maiores-vitae-illum-rerum-commodi-ipsa-sint-eos', NULL, 'Repellat delectus animi consequuntur repudiandae dolore. Corrupti non et quia officiis eligendi dolor et ab. In repellendus molestias odit.', '<p>Voluptatibus ex ducimus ut molestiae blanditiis omnis eos. Aut est quo omnis iste maiores et. Sint pariatur accusantium autem id. Debitis magni qui qui eos quia aut.</p><p>Qui vel sed eos. Temporibus molestiae soluta aut voluptatem molestiae et. Labore veritatis explicabo et nesciunt fugiat totam.</p><p>Possimus ipsam id et rerum excepturi aliquid ut. Quos ab qui harum possimus id eum animi. Perspiciatis ab tempora doloremque aut quasi. Id est magni neque illo voluptas impedit totam.</p><p>Veritatis voluptatem assumenda corporis aperiam nisi quo. Impedit ut laboriosam recusandae ut aliquid voluptate. Blanditiis atque cum laboriosam eius omnis dolor reiciendis.</p><p>Officiis incidunt tempore voluptatem quod numquam. Debitis fuga possimus dolor. Maiores quia eos laboriosam vel quo non. Tenetur voluptatem voluptatum sapiente reiciendis quia hic excepturi. Laborum magnam molestiae animi eos recusandae delectus.</p><p>Rerum molestias illo qui id iure quam. Adipisci dicta doloribus quos vitae enim. Doloremque nesciunt quia ducimus suscipit. Quibusdam reprehenderit occaecati et sunt quo reprehenderit.</p><p>Voluptas rerum delectus qui dolores aliquam. Maxime et atque neque beatae ipsa. Iusto et sunt cupiditate placeat omnis corrupti.</p><p>Sed corrupti porro autem non quam asperiores eos. Rerum perferendis et quia sed aliquid. Maxime accusamus eveniet impedit sed omnis.</p><p>Voluptates sed optio et modi et. Assumenda eos sequi minus officia. Commodi dolorum aspernatur qui neque officiis.</p><p>Nihil saepe voluptas quas sit voluptatem. Quis voluptas est praesentium cum est. Culpa tempore et in. Sint facilis possimus et tenetur ut quisquam odit. Expedita incidunt repellat nobis odio.</p>', NULL, '2023-05-07 10:03:38', '2023-05-07 10:03:38'),
(8, 2, 2, 'Aut enim molestiae omnis exercitationem.', 'et-cumque-rerum-omnis', NULL, 'Numquam similique aliquid consequatur provident. Facere impedit qui inventore consectetur rerum quo odio alias. Libero quos voluptatem impedit laudantium.', '<p>Aut nostrum iusto quaerat rerum. Iusto itaque deleniti vel fugiat. Porro et sequi provident et consequatur voluptates qui. Amet temporibus magni quo.</p><p>Maxime dolorum voluptatibus et. Nihil ea sed sit esse nihil vel. Velit omnis non sequi ullam et. Pariatur reiciendis quo ea fuga.</p><p>Eaque voluptatum minima nemo rerum assumenda. Corrupti tempora omnis id.</p><p>Magni corrupti velit et soluta. Odit accusamus dolores atque veniam. Nam consequatur illum aut vel quo vitae consequatur voluptate.</p><p>Consequatur ut accusantium minima sit corrupti nulla. Mollitia autem non in earum voluptatem reiciendis voluptatem modi. Sed facilis cumque dolor. Qui quo eaque earum quos omnis sit.</p><p>Non aliquam exercitationem esse. Officiis distinctio cumque hic molestias fuga nesciunt dolorum. Et aut deserunt nisi praesentium officiis. Repellendus porro earum cupiditate quia rerum.</p>', NULL, '2023-05-07 10:03:39', '2023-05-07 10:03:39'),
(9, 2, 3, 'Dolorem est dolorem.', 'sapiente-aut-cupiditate-consequatur-sunt-mollitia-sit', NULL, 'Ullam vel et vel sed exercitationem quia. Nesciunt sed aperiam sint voluptatem.', '<p>Sequi temporibus corporis natus molestiae. Laudantium ex praesentium sit deserunt. Magnam dolor eligendi ipsa et. Ullam fuga est enim dolores sint.</p><p>Amet eaque perferendis et vel minus. Quibusdam quam non repudiandae quis. Et quasi odit enim iure vero dolorem vel. Voluptatem sunt dolorem et optio.</p><p>Dolor impedit quia laboriosam voluptatem commodi. Eum nulla quasi nihil ratione natus. Explicabo ut quos maiores vel repellat quos nihil.</p><p>Voluptatem in labore nihil repudiandae molestias dolorum ex. Autem tempore dolores qui adipisci. Laborum perspiciatis quae aut inventore minima et veritatis.</p><p>Aperiam quaerat animi laboriosam id numquam. Excepturi minus optio magnam ut officia ipsa. Iusto earum quis qui quis nam. Repudiandae dolorem placeat et et commodi culpa illo quibusdam.</p><p>Repellat et corrupti delectus neque quisquam. Aut aliquid temporibus dolores laborum nemo ipsam. Fuga odio sit sit tenetur voluptate quos. Quo impedit quia expedita ad dignissimos ratione quam modi.</p><p>Corporis rerum quia ea illo soluta. Optio nihil quidem officia nostrum. Voluptates at sit sed praesentium reiciendis facilis vel. Voluptatem mollitia similique molestiae eos consequatur soluta.</p><p>Quam magni odit qui. Adipisci adipisci quia ullam. At magnam a est accusantium.</p><p>Ut eveniet ut eos quis vel. Ex ipsum eveniet debitis autem ut. Eligendi et cupiditate explicabo quibusdam. Aut aut ut eum accusamus maxime qui quam.</p>', NULL, '2023-05-07 10:03:39', '2023-05-07 10:03:39'),
(10, 3, 2, 'Doloremque et.', 'iste-eos-eos-illo-ut-illum-ipsam-architecto-soluta', NULL, 'Pariatur harum neque sequi voluptatem. Sint voluptatem ducimus rerum dolore quia nam.', '<p>Rerum cum iste doloribus nesciunt veritatis. Numquam dolore est amet facere accusamus sunt. Voluptatem et dignissimos sunt ut est fuga nostrum repellat. Hic est rerum aspernatur consectetur.</p><p>Ea magnam deleniti velit et. Et sit a vero laborum vel.</p><p>Porro alias eligendi aliquam fuga. Rerum eveniet ea dolorem repellat reprehenderit vitae ut quis. Ut tenetur amet accusantium quibusdam odit assumenda dolore.</p><p>Non qui eaque cupiditate natus ea maiores. Sit illum quo qui perspiciatis eius blanditiis dignissimos provident. Est perferendis provident molestiae ab vero.</p><p>Architecto hic vero sapiente officia veritatis nihil quos. Ducimus quos voluptatem eaque et in praesentium aut nesciunt. Molestiae tenetur sunt assumenda soluta ea.</p>', NULL, '2023-05-07 10:03:39', '2023-05-07 10:03:39'),
(11, 3, 3, 'Et quam adipisci laudantium.', 'occaecati-quaerat-iste-earum-et-tempore-est', NULL, 'Facilis accusamus consequuntur qui. Et minima nisi sit fugit. Sint ipsum molestias odit minus odio quo amet. Voluptas quasi officia iure aut.', '<p>Sint est voluptatem reprehenderit eum. Est minus consequatur porro sunt vel possimus reprehenderit incidunt. Enim repellat et possimus quidem nemo dolorem.</p><p>Facere repudiandae tempora voluptas quam eos soluta. Ipsum omnis voluptate et aperiam voluptatem. Rerum quia odio sit modi blanditiis earum alias.</p><p>Odit laudantium quas aperiam nisi dolor. Velit quo voluptas fuga est. Ut non iure totam.</p><p>Voluptatem dolorum omnis commodi similique voluptatem. Sit sit consequatur unde inventore occaecati. Est aut sed numquam officia ullam qui exercitationem. Incidunt in dolor eum vitae fugiat.</p><p>Incidunt maiores aliquid qui quasi autem. Voluptatem in accusamus qui esse. Est iusto dicta aliquam soluta ut et recusandae sequi. Ipsam ea facere odit similique deleniti recusandae omnis.</p><p>Tempora modi quasi est dolor cumque. Sunt et maiores nesciunt. Ducimus non eos ad perspiciatis minus sed quas.</p><p>Eum nam molestiae incidunt reiciendis ea. Sint sunt quo ea et optio at. Et enim sint consectetur.</p><p>Eius quas quae voluptas id voluptatibus illo. Et quaerat aut hic optio dolores dolorum ut in. Aperiam exercitationem est nihil quis commodi praesentium.</p><p>Iusto sunt illum eum voluptas. Laudantium autem ipsam eum. Voluptatem voluptas aut dolores est. Illum minima architecto rerum rerum ullam excepturi.</p><p>Cumque sed nihil ipsum enim optio modi non ea. Autem voluptatem eos atque occaecati quia. Quibusdam perspiciatis aliquam eveniet harum rerum asperiores quis. Itaque culpa quas praesentium perferendis minus est illum veritatis.</p>', NULL, '2023-05-07 10:03:39', '2023-05-07 10:03:39'),
(12, 1, 3, 'Sed porro non nostrum perspiciatis ex.', 'enim-omnis-dolor-corrupti-accusantium-neque', NULL, 'Et adipisci ullam quia sit autem omnis. Fuga dolorem harum quos sint quo voluptatem officia. Dolorum non qui pariatur ut doloremque. Facere ut magni ab labore eligendi animi ipsa libero.', '<p>Voluptate laborum iusto fugiat numquam maiores officiis. Sunt voluptate sed dolore ab.</p><p>Et eos iste ut consequatur ex dicta suscipit. Dicta vitae nam iusto et est officia.</p><p>Laborum quidem nihil iure odio cumque sapiente. Praesentium hic cum iusto. Aperiam aspernatur nam aut ut quidem officiis enim.</p><p>Aut ullam iusto magnam aliquam ea at assumenda. Voluptatem ut quis cupiditate sit magni id tempora ut. Consequatur aperiam at non rerum ducimus ut. Quo deleniti molestias quisquam qui ipsum illo distinctio ad. Quia magni dolor deserunt officiis ullam.</p><p>Amet ut optio autem sed ut. Aut laborum repellat aut cumque quia delectus. Id eum rerum aperiam reiciendis aut quis error. Illo autem sapiente odit.</p><p>Iure esse autem voluptatibus tenetur impedit et quia sed. Dolorem ratione beatae suscipit distinctio dolores minima. Quam aut voluptates voluptatibus tempora praesentium natus quod rerum. Magnam odio odio et non harum.</p><p>Iste sint aut doloribus corrupti. Aut et ut eos. Ducimus velit unde quam eligendi aspernatur.</p>', NULL, '2023-05-07 10:03:39', '2023-05-07 10:03:39'),
(13, 3, 3, 'Ut distinctio earum et autem.', 'officiis-est-et-dolor-quas', NULL, 'Qui non sapiente maiores modi. Aut blanditiis sed et et id et suscipit. Repudiandae alias nemo velit excepturi autem. Eos adipisci est aut aut id non natus.', '<p>Recusandae pariatur et quia reprehenderit corporis aspernatur. Omnis quis ratione amet accusantium. Vero animi modi quo autem dolore quo omnis. Et asperiores maiores sit ut alias voluptatem.</p><p>Sunt quas sint eos qui autem itaque. Exercitationem id fugit est vero.</p><p>Quisquam praesentium atque velit porro inventore aut. Possimus numquam eum quod hic adipisci aut officiis. Nisi quaerat nam et. Incidunt laudantium officia quae eius consequatur nihil. Consectetur natus placeat vel quidem qui.</p><p>Qui sunt impedit officiis tenetur. Reprehenderit nihil et at est quam. Et earum exercitationem et sed fugit.</p><p>Et rerum dicta quia aliquid quod dolore rerum. Incidunt dolore et et. Doloremque quia ut deserunt labore aut. Quisquam et perspiciatis molestiae accusantium est rerum.</p><p>Nulla laudantium minima inventore quaerat aliquid dolor provident. Aut quisquam quae numquam vel. Aut et doloremque asperiores aut consequatur. Distinctio facere commodi aut et saepe.</p>', NULL, '2023-05-07 10:03:39', '2023-05-07 10:03:39'),
(14, 3, 3, 'Quia eveniet odio similique eos animi et ea voluptates nobis recusandae.', 'sit-perferendis-velit-tempora-vel-sit', NULL, 'Illo et ut molestiae nihil minus fuga. Fugit totam libero non dolorem esse. Repudiandae sint eaque maiores ea repellat.', '<p>Enim corporis adipisci nihil et. Libero ut saepe laboriosam pariatur deserunt corporis. Ab qui commodi tenetur sed a ab. Itaque ipsam delectus consectetur et. Ipsum animi rem est aut pariatur deleniti.</p><p>A provident qui totam ipsam quas est. Odit culpa reiciendis dolorum ut architecto beatae. Tempora est error repudiandae quod facere impedit.</p><p>Ipsum alias blanditiis saepe maiores nesciunt aut. Ea aut animi dolores ab. Earum eveniet consequatur et est.</p><p>Quia et veniam et modi. Cupiditate earum eveniet facilis nemo animi rerum sit. Et sint minima dolorem necessitatibus voluptas.</p><p>Voluptatibus qui dolore sed ipsum. Cupiditate quod quibusdam ducimus a.</p><p>Id autem dolorem illo et quia rem enim. Incidunt voluptate aut ut sint omnis. Dolores illum debitis ratione quis. Et ea voluptatum sit rerum.</p><p>Sunt aut iure veritatis quo qui odit cum. Omnis quo et sit labore. Illo est tenetur saepe molestiae suscipit ipsam ea voluptatem. Nesciunt facere iste aut assumenda rerum aperiam. In sequi tempore rerum et deleniti rerum.</p>', NULL, '2023-05-07 10:03:39', '2023-05-07 10:03:39'),
(15, 2, 2, 'Est sit quia et repudiandae optio voluptatem doloribus voluptatem.', 'est-debitis-facere-tempora-consequuntur-eum-doloribus-nihil-similique', NULL, 'Sequi error dicta eveniet eos aliquid aut. Ex ab eaque dolor blanditiis voluptatum assumenda. Consequatur eum tenetur sed dolor aliquam.', '<p>Unde quas molestias doloribus cum. Maxime eum dicta ducimus consequatur nemo. Nam sit autem nesciunt mollitia. Voluptatem placeat odio fugiat est delectus modi.</p><p>Vitae eum ut sint blanditiis. Porro at aut libero inventore enim. Et est doloribus modi magni fugit. Dolores illo qui autem possimus. Totam natus libero in qui reprehenderit repudiandae.</p><p>Repudiandae cumque consequatur ex dolores quo laborum. Laudantium hic ab sunt veniam et vel. Fugiat quas aliquid ut officia asperiores hic natus.</p><p>Architecto nulla voluptatem numquam ea. Nisi nulla aut enim numquam fugiat ad non. Ut voluptate quo quo qui dolorem et. Beatae ea assumenda consequatur fugiat.</p><p>Ut id quibusdam saepe porro. Assumenda assumenda laudantium cumque explicabo possimus. Illo qui voluptas tempora cumque assumenda inventore aut. Ea et molestiae voluptatum provident facere placeat incidunt.</p><p>Qui quo perferendis ad quod. Explicabo magni alias et fuga amet qui. Debitis animi suscipit incidunt ut impedit quia. Enim excepturi inventore nisi rem non porro accusantium.</p><p>Iusto quia doloremque dolores sunt pariatur quo. Pariatur odio aliquid qui inventore accusantium nam numquam. Voluptatem labore dolorum ducimus rerum quidem voluptates nam. Accusantium quo autem rerum quia quia itaque minus explicabo.</p><p>Quibusdam maxime omnis magni et debitis officiis suscipit. Perspiciatis assumenda similique est quae aut. Esse deserunt omnis ratione. Aperiam quisquam ab nesciunt temporibus enim quo.</p>', NULL, '2023-05-07 10:03:39', '2023-05-07 10:03:39'),
(16, 3, 1, 'Ratione earum sit.', 'voluptatum-et-aut-corporis-voluptas-velit-autem', NULL, 'Ut sint vel odio voluptatum ipsum quo ab enim. Ex voluptas reprehenderit quo nemo quia. Ut amet quia ea atque sit qui.', '<p>Exercitationem dolor in cupiditate ab explicabo quia. Id alias ut qui consectetur. Nobis et quisquam vel asperiores. Quia delectus eos iste.</p><p>Quod id dicta perferendis voluptas accusantium aliquam cum. Corrupti numquam unde et quam possimus quod. Corporis veritatis rerum aut voluptatibus qui. Officia alias consequatur autem facilis ex fugiat et iusto.</p><p>Eveniet laudantium quia placeat laboriosam cumque aspernatur ratione. Dolorum a corrupti voluptatem et doloremque suscipit. Labore sit laudantium ratione eos itaque doloribus illo expedita.</p><p>Tempora amet consequuntur velit. Aut in repudiandae maiores dolores ut est velit. Qui mollitia aut amet sed. Consequuntur labore delectus quos quos eum asperiores aspernatur.</p><p>Molestias hic labore aut architecto. Ea a modi iste vel sit sit aperiam. Nam maxime blanditiis libero repudiandae nemo repellat autem et. Adipisci cumque neque molestiae assumenda.</p><p>Placeat dolore ipsum autem. Quos ut dolorem ab accusantium qui culpa. Ullam exercitationem placeat pariatur ex inventore.</p><p>Ipsa et et et harum nostrum tempora. Tenetur voluptas accusantium eius eligendi optio sapiente cumque. Quisquam quia sunt facilis rerum praesentium aut repellendus. Sapiente molestiae deserunt odit.</p><p>A veniam illum non perferendis. Ratione labore facere voluptas rerum. Eligendi qui dolores consequatur libero sint voluptatem tempore.</p><p>Accusantium voluptates cumque velit laudantium fugiat. Tenetur quia voluptas est voluptas aut. Velit reiciendis est necessitatibus quasi amet quidem.</p>', NULL, '2023-05-07 10:03:39', '2023-05-07 10:03:39'),
(17, 3, 1, 'Rerum ducimus similique aperiam.', 'cupiditate-tempora-quos-ut-et-aut-in', NULL, 'Est blanditiis officiis aliquam ut. Ad molestiae consequatur rerum consequatur omnis et autem. Voluptas voluptatem necessitatibus porro autem maxime voluptate voluptatem voluptatem.', '<p>Officiis non debitis a nostrum consequatur. Dolor illum deserunt dolorem qui. Id impedit nihil occaecati et quasi soluta nihil voluptatum.</p><p>Quod sint quibusdam accusantium optio harum aspernatur nostrum eveniet. Quas minima exercitationem provident vel velit. Et a beatae quo occaecati ipsa.</p><p>Vero tenetur est dolore quae praesentium. Aliquid ut maiores sed consequuntur repudiandae iure omnis. Alias tenetur eum corporis aperiam et sed soluta.</p><p>Voluptatem sunt perspiciatis ex quam iste nihil aut. Sequi veniam voluptatem ad rerum sunt quod. Non et aut est ut ut. Fuga cupiditate sunt provident iure.</p><p>Iure vitae exercitationem excepturi qui et. Laudantium eum ducimus at excepturi dolore blanditiis quis.</p><p>Sunt quia quae sint. Corrupti eveniet a iure corporis dolores. Unde rerum totam et. Culpa eaque corporis temporibus et.</p>', NULL, '2023-05-07 10:03:39', '2023-05-07 10:03:39'),
(18, 1, 1, 'Ipsa id perferendis magni et nemo.', 'commodi-laborum-unde-nostrum-sunt-et-laboriosam-perspiciatis', NULL, 'Alias temporibus aut libero et. Modi repellendus et dolorum recusandae dolorem tempore. Accusamus voluptatem facere quia aliquid optio natus. Et enim suscipit provident delectus quas.', '<p>Eius harum doloribus illum veritatis officia esse. Dolorem voluptatum facere exercitationem et accusamus deserunt doloribus. Omnis cumque et est incidunt iusto.</p><p>Iusto pariatur similique expedita accusamus dolor hic cupiditate. Sit nisi sequi laboriosam sed. Quaerat animi laudantium vero sed tempore. Molestias tenetur dolorum consequatur qui.</p><p>Veritatis ut et necessitatibus incidunt dolor. Quo earum quaerat odio consequatur. Quaerat qui doloribus animi illo ea expedita. Et quia error rerum. Iusto non commodi voluptatum et provident.</p><p>Ad porro at eos voluptatum iure. Voluptas quod provident quis temporibus. Qui autem similique earum velit ut. Consequatur quibusdam adipisci accusantium mollitia. In est dolorum fuga maxime rerum voluptatem.</p><p>Et voluptatum quisquam ut pariatur. Omnis dicta at consequatur accusamus quod est deserunt. Sapiente nam sunt blanditiis ut repellat.</p><p>Eum est magni sint sit est. Est porro sequi neque. Culpa est quod perspiciatis consequatur rem. Nisi tempore eius animi.</p><p>Alias voluptas et possimus voluptatem unde. Itaque eos quos aspernatur expedita eaque omnis.</p>', NULL, '2023-05-07 10:03:39', '2023-05-07 10:03:39'),
(19, 1, 2, 'Illum ullam consectetur minus nisi ut.', 'accusantium-accusamus-ut-aut-saepe', NULL, 'Quo veritatis quaerat natus quidem. Delectus deserunt vel quos ut doloremque a. Ut et aut ipsum similique et ut.', '<p>Eveniet voluptatem architecto ab cumque quasi. Necessitatibus sed blanditiis voluptas tempora. Repellat temporibus ipsam error corporis nihil corrupti quaerat.</p><p>Voluptatem sequi dolorem molestiae non deserunt assumenda corrupti. Consequatur eum dolorum illum impedit eius neque quidem. A vel tenetur officia assumenda est cum et.</p><p>Magni nihil et sit. Ab dolor voluptatem recusandae et ex. Ea temporibus sint alias qui.</p><p>Dolorem suscipit nostrum quam consectetur optio quia molestiae. Quia at atque dolor. In molestias deserunt ullam reprehenderit sed a ducimus. Autem neque quisquam ea cupiditate laborum voluptates.</p><p>Maiores rerum dolorem minima dolores. Minima similique exercitationem beatae perferendis vel. Aut error sed est repellat aut in enim. Voluptatem tempore impedit exercitationem accusamus similique.</p><p>Beatae in cupiditate quia itaque eum sint quo occaecati. Non rerum fuga perferendis unde veritatis. Quod cupiditate quidem reiciendis consequatur labore corporis et.</p><p>Quibusdam ratione magnam voluptates qui occaecati. Laboriosam tempore illum et eos ea qui vitae. Esse sequi atque qui non.</p><p>Quis eos error et sit quia et. Necessitatibus et dolorum non. Dolorum nemo laboriosam dolores delectus odio.</p><p>Temporibus quae earum adipisci placeat consequatur ipsum facilis ab. Laboriosam atque qui quasi culpa aliquam laboriosam. Odit ut autem enim qui rem.</p><p>Recusandae sint nemo ea dolores. Debitis qui et et dolorem soluta quidem. Ut temporibus enim tempore quo.</p>', NULL, '2023-05-07 10:03:39', '2023-05-07 10:03:39'),
(20, 1, 3, 'Rerum pariatur distinctio.', 'molestiae-modi-officia-voluptates-perferendis-in', NULL, 'Tempora hic eveniet est rem laudantium. Et voluptas eveniet cumque aut. In assumenda sapiente beatae numquam quis nostrum. Est iste est aperiam.', '<p>Nisi est et quaerat tenetur architecto laborum. Sunt sequi deleniti magni quia et in. Incidunt magnam quasi architecto suscipit voluptas. Quis molestiae voluptas sit facere.</p><p>Eum aliquid ullam modi totam. Dolorem repellat ut et omnis quas. Quo officia omnis ipsa.</p><p>Consequatur ut et et enim accusamus laborum nisi. Placeat ex id expedita voluptates harum. Ducimus ut voluptatem cum quis doloribus. Architecto porro et rerum aut.</p><p>Ullam quas repudiandae consequuntur enim ipsa. Laudantium quia et unde natus accusamus quia dolor. Nihil numquam consequuntur quia aliquam sed distinctio.</p><p>Molestias labore aut ex sed et excepturi dolorum. Quod quas qui officiis assumenda possimus similique. Unde nostrum eligendi voluptatibus eveniet commodi tempore incidunt qui. Voluptas qui porro a vero nemo enim.</p>', NULL, '2023-05-07 10:03:39', '2023-05-07 10:03:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Bella Nova Winarsih S.E.', 'samosir.bagya@example.org', 'nriyanti', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-05-07 10:03:19', '2023-05-07 10:03:19', 0),
(2, 'Ganep Iswahyudi', 'sidiq.nurdiyanti@example.org', 'purwa22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-05-07 10:03:19', '2023-05-07 10:03:19', 0),
(3, 'Tami Aryani', 'lanang07@example.net', 'elvina.tamba', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-05-07 10:03:19', '2023-05-07 10:03:19', 0),
(4, 'fahrel ardzaky', 'fahrelardzaky@gmail.com', 'aruzaki', '$2y$10$Tj5/CTr5MeFXYCx4HbD3g.1Gk8ZX77fCRds6T0ufagOiMUvwzsm2i', '2023-05-07 10:04:06', '2023-05-07 10:04:06', 1),
(5, 'garp', 'garp@gmail.com', 'garp123', '$2y$10$CW5tkA5n1xBjcbQQH0uPlOijWy7Vxj5LRMOW4RhJtRGBcUJSbf9ye', '2023-05-08 10:00:00', '2023-05-08 10:00:00', 0),
(6, 'luffysan', 'luffysan@gmail.com', 'luffysan', '$2y$10$DTbne6XPG.jfcC2g1KHsb.0RNB0pd0oc6NjvHtuLkbc3ZLjhfwway', '2023-05-11 08:01:01', '2023-05-11 08:01:01', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategoris_nama_unique` (`nama`),
  ADD UNIQUE KEY `kategoris_slug_unique` (`slug`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
