-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: test_blog
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Olahraga','olahraga','2022-01-03 21:49:57','2022-01-03 21:49:57'),(2,'Teknologi Termutakir','teknologi-termutakir','2022-01-03 21:49:57','2022-01-03 21:49:57'),(3,'Belajar Coding','belajar-coding','2022-01-03 21:49:57','2022-01-03 21:49:57');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_01_03_045042_create_posts_table',1),(6,'2022_01_03_122131_create_categories_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,2,2,'Rerum culpa.','ipsa-in-sint-dolorem-nesciunt-magni-maxime','Itaque voluptatem voluptatem illum incidunt labore voluptatem praesentium. Asperiores quod perspiciatis error quae voluptatem. Dolorem voluptatem alias dolores. Nihil vero reiciendis enim ipsam quasi a iste.','Ipsa quae est optio mollitia molestiae. Provident sed dolores doloremque placeat. Labore quia harum nostrum reprehenderit dolor consequuntur ea. Ab provident consequatur quos numquam. A quia et voluptate nulla dolorum ut. Qui ratione quaerat ipsa ratione itaque et facere. Esse totam nostrum impedit laudantium et sit ut aliquid.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(2,3,1,'Possimus consequatur esse.','laboriosam-expedita-reprehenderit-neque-enim-sunt','At repellendus et est explicabo. Omnis laboriosam placeat molestiae rerum. Ratione blanditiis voluptatum quo ipsam. Voluptas quo quaerat cupiditate voluptates magni. Magni est reiciendis eveniet sequi. Dolorum dolor quae consectetur eos tenetur nihil. Dolorem laudantium et minima veniam nisi voluptates.','Adipisci rerum nostrum soluta tempore. Qui itaque fuga eos totam. Consectetur repellat nemo quos cupiditate maxime nobis dolorem assumenda. Et et qui ex dolorem ipsum incidunt eos. Vero odio hic excepturi quo rerum repudiandae. Sunt repellat minima ut saepe dolorum quibusdam. Molestiae nemo nihil ab libero nam ipsa. Explicabo aut inventore dolorem. Eveniet dolores dolore voluptatem numquam ut ut porro. Est beatae consequatur cumque consectetur dolor cumque voluptas. Dolorem saepe earum possimus voluptatem dolores. Veniam cum occaecati nobis minus temporibus. Ea vero excepturi ut porro quasi blanditiis. Dolorem officia repudiandae ut amet. Aspernatur fuga quis nobis debitis vero.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(3,1,1,'Est ducimus natus.','neque-ea-delectus-ut-provident-beatae-odit-quis','Excepturi porro ipsam delectus alias sit ut. Velit velit eum sed est sed iure hic. Hic voluptas ipsum et qui quia. Et et corporis corporis et ducimus rem. Labore repellat libero aliquid molestiae sequi molestiae.','Ut eum animi non vel et sequi. Numquam est itaque eos qui ut qui magnam. Asperiores reiciendis rerum aut et aut quo. Sed quia cum aspernatur aut consectetur. Est voluptatem distinctio tempore quos cupiditate quos. Recusandae voluptates mollitia labore enim eum. Placeat ad eaque et qui vel adipisci velit. Provident illum voluptas dolores. Placeat laboriosam et quaerat.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(4,1,2,'Aut quidem.','accusamus-sit-voluptatem-nostrum-nostrum-illo-voluptatibus-enim','Rerum labore optio modi reiciendis quis et. Dolore soluta voluptatibus voluptate velit rerum eos est. Molestiae consectetur consequatur hic sapiente. Rerum veritatis sint est. Quos eum cum autem. Officia ea facere qui. Architecto officia et quaerat perspiciatis qui.','Quis maiores qui id qui sunt ipsam architecto vel. Velit a eius in in. Sapiente quis est soluta error neque dolore harum quos. Exercitationem placeat nemo et ut temporibus. Nulla voluptas quam id nisi aut. Temporibus voluptatem eveniet natus vel alias rerum sed. Itaque tempore non omnis praesentium est tenetur repellendus.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(5,2,1,'Odit repellendus.','est-blanditiis-aut-dolor-autem-aperiam-quia-nisi','Inventore facere ex placeat voluptas. Laboriosam blanditiis placeat porro accusantium magnam. Dolor repellendus blanditiis voluptatem culpa. Delectus vel sit ipsam voluptatem et.','Hic ab illum inventore distinctio velit repellendus nesciunt. Odit ipsam quos sit rerum ipsam. Dignissimos blanditiis sit fugiat totam. Sit at suscipit voluptas commodi ut et. Odit aut sint dolores ducimus inventore eveniet. Sit ab sapiente debitis debitis ea. Et aliquam sit est similique. Delectus beatae atque magnam saepe sed et. Illum quos quasi qui amet neque et sunt. Dolorum tempore totam corrupti. Cupiditate vel corrupti error dignissimos accusamus magnam. Odio natus exercitationem asperiores. Vel sapiente sed ipsum sequi quas. Repellendus nihil possimus molestias sit.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(6,3,2,'Rerum aut amet.','quas-repudiandae-quidem-iure-at-temporibus-corporis-quasi','Rerum blanditiis quis voluptas quasi. Vitae officia nulla ratione facere. Distinctio sed quis quo magni repudiandae. Quia ut amet id est officiis id. Exercitationem sapiente harum eum optio praesentium praesentium. Aut expedita voluptatem dolores similique illum ducimus quam odio. Deserunt explicabo aut quis aut.','Quas quisquam necessitatibus similique sed eos labore accusantium. Rerum quo nisi necessitatibus officia fugiat nobis nihil. Ut quisquam optio corporis atque voluptas praesentium aperiam. Quidem autem odit temporibus laborum. Omnis vel dolor ratione minus voluptas. Odio tempora neque est qui cumque non doloribus. Corporis at voluptates eum.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(7,3,2,'Officiis ab nam.','impedit-ea-quis-rerum-adipisci-non-odit','Quidem qui maiores corrupti et praesentium natus inventore. Expedita aut magnam aperiam vel doloribus eos. Consectetur sequi sed esse maiores molestiae magnam. Soluta quam qui voluptatum qui. Quidem sapiente consequuntur reiciendis enim occaecati necessitatibus iure. Repellat magnam laboriosam delectus deleniti voluptas.','Vel blanditiis sit molestiae dolores molestiae molestias. Ut occaecati molestiae soluta repellendus explicabo voluptas quod. Et quisquam velit ea et occaecati iste. Ut cum quam atque dolor soluta voluptatem. Nihil adipisci ut est ut consequatur aut deleniti. Impedit ut porro repudiandae deserunt aut. Quod nihil quidem nam sed omnis. Sequi est rerum soluta.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(8,3,2,'Reprehenderit aliquam.','incidunt-sapiente-sunt-qui-illum-nostrum-illo','Sequi non fugiat aliquam sint et iste earum. Nihil corporis itaque ab est quo voluptas. Temporibus libero sunt quis iste aut. Sequi sapiente eveniet magni minima nesciunt. Perspiciatis laboriosam sunt voluptates reiciendis eius. Eaque dolor sed sequi pariatur quae.','Eveniet sit voluptatum recusandae eius soluta. Consequatur doloribus cum nihil dolorum. Tenetur labore qui aliquid. Et et excepturi possimus. Dolorem doloribus repellendus aut modi in temporibus doloribus. Doloremque ipsam earum consequatur ex quis. Nostrum praesentium repudiandae illo. Ipsa voluptatibus quibusdam rem dolor repudiandae. Ad quia debitis sint dicta non. Qui laudantium id sint.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(9,1,1,'Amet rerum dolorem.','molestias-maiores-nemo-placeat-placeat-ad-optio','Odio dolore nesciunt eos consectetur autem aut. Rem omnis qui eligendi non consectetur. Dolore qui odio voluptatum et ex dignissimos ratione. In similique sed ducimus. Et id et qui voluptatem officiis explicabo.','Repellendus illo alias et omnis aspernatur molestiae. Voluptas illum voluptatibus minus explicabo at quia. Harum qui quod corporis qui ipsam nisi. Odit eius illo officia dolorem voluptates et odit minus. In dolor necessitatibus eius maxime facilis incidunt. Vel vel ex consequatur velit est. Eaque doloribus sed et mollitia distinctio possimus. Beatae est quae natus ipsa earum quo labore. Est qui maiores quia recusandae quaerat voluptatem quod. Et itaque repellat et nihil minus. Molestiae voluptas dicta sed voluptatem quo. Optio expedita nihil velit et dolor iusto. Ex voluptate sit quidem excepturi dolore esse id. Et et eos porro quisquam molestias.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(10,2,2,'Aut omnis.','aut-voluptas-omnis-quo-enim-unde-eaque-saepe','Corporis nihil autem vel voluptas itaque rerum aperiam beatae. Sint id similique qui qui ratione vel dolore. Vel vero maiores veniam quis et ratione. Porro quo quia quaerat itaque. Quos qui voluptatum consequatur rerum ad rerum veritatis. Eligendi aut tempore velit at quisquam ut.','Est voluptates consequuntur et qui dolorem commodi dolorem delectus. Autem impedit excepturi nostrum quo minima rem. A delectus dicta quod iusto. Ullam cupiditate aut et deserunt porro expedita est. Debitis ut commodi sed omnis. Cupiditate molestiae atque voluptatum itaque ut a. Quam incidunt illo incidunt. Odio aut voluptates aliquam ut tempore numquam sint. Recusandae aut quis rem minus neque nihil animi. Dolorem id ut suscipit. Modi ipsam quaerat neque tenetur consectetur qui odio. Est iure excepturi voluptatem quia deleniti repellat iure. Blanditiis adipisci nobis suscipit inventore qui odit. Et asperiores consequatur unde sunt et.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(11,2,1,'Perferendis quia sint.','nisi-reiciendis-sunt-qui-quae','Cum delectus dolor aut et quia laboriosam corrupti qui. Corporis eum illum sunt ducimus aspernatur dolorum incidunt. Odio commodi nostrum dolores dicta architecto. Et aut repudiandae est voluptas quae odit neque error.','Quasi aliquam eum eaque non vel dolor. Ullam aperiam quasi ut et. Sint laboriosam cupiditate ullam aspernatur et et quo. Quas magni aut ducimus eveniet eum omnis quam cupiditate. Consectetur vel incidunt cumque aut quis. Aperiam ipsa impedit neque voluptatem. Vero eos optio in voluptas sed. Odio quisquam quia cupiditate aliquid ea. Non deserunt natus in et molestiae. Magnam facilis rerum rem qui deleniti. Et eum eaque sit unde nostrum aut et. Quibusdam est reiciendis perspiciatis molestiae. Error ea quas aut perspiciatis ea. Molestias ratione provident ratione modi saepe placeat.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(12,1,1,'Blanditiis nihil.','est-fugiat-minima-eligendi-qui','Sint omnis magni voluptatem et. Omnis in ipsum inventore quo qui earum sit. Impedit maxime voluptas ratione quo saepe beatae. Excepturi repellat ipsum officiis eos cum. Ullam et dolores nobis.','Quo voluptas quae sapiente ut commodi. Blanditiis quidem sit excepturi quia aut est. Aut excepturi optio voluptatem dicta. Et et excepturi quos illum qui excepturi veniam. Dolorum dolorum dolor asperiores. Error iusto dolor unde minus rerum. Voluptate harum explicabo id voluptatem et. Minus consequatur dolores natus et velit. Asperiores qui molestias necessitatibus labore qui. Et veritatis rerum pariatur ducimus. Illo asperiores quia inventore at corrupti. Voluptates et autem ab in. Voluptatibus dolorum placeat distinctio nulla animi non enim.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(13,3,2,'Consectetur exercitationem unde.','pariatur-sequi-incidunt-labore-ut-vitae','Fuga dignissimos dolor perspiciatis asperiores dignissimos atque quam animi. Quia reiciendis voluptate dolorem consequatur. Occaecati sequi dignissimos earum sed magnam exercitationem. Facilis ipsam asperiores aliquam repudiandae. Iusto in molestiae doloremque quam quam qui quia. Sunt at est sequi nobis laudantium nostrum.','Quas qui est veritatis est quam. Illum aut dignissimos laudantium explicabo inventore pariatur quod. Incidunt nesciunt doloribus eum. Dolor voluptatem ex rerum pariatur est. Accusamus at et dolor impedit. Sequi dolor ad sapiente eligendi qui doloribus. Temporibus odio inventore libero aut est hic. Aliquid fuga enim adipisci sunt maiores enim quia. Dolorem quis nemo velit. Ut dolor id repellendus aut autem sed. Nihil ducimus sapiente neque temporibus.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(14,2,2,'Error provident ut.','aut-ipsam-sunt-eos-cum-possimus-sint-ut-quos','Architecto qui et est dolor est. Sunt dolor dignissimos quibusdam. Voluptates sunt et vel numquam maiores. Iusto praesentium numquam sequi corrupti esse.','Nisi sunt inventore quis est harum illo amet. Dolorem amet officia odit consequatur voluptate. Ut amet velit at. Ipsam sint pariatur ut omnis ut animi voluptas cumque. Est nisi quisquam dolorem molestias ad quas aut cum. Dolore voluptates reprehenderit repellat eos. Et voluptas perferendis deserunt natus sint repudiandae dignissimos. Eligendi ea repudiandae sunt voluptas quia aliquid voluptatem. Nobis dicta voluptatem non corrupti iste placeat nostrum. Quod unde ab ut esse minus.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(15,1,1,'Cumque rerum dolor.','rem-accusantium-excepturi-pariatur-tempore-molestias-quasi-quis','Et in consectetur dolorem aut. Dolorum iste ratione impedit et cupiditate. Nulla culpa quia omnis nihil et nihil. Exercitationem et delectus natus aspernatur culpa temporibus quidem.','Exercitationem consequatur quisquam accusamus quod rerum sunt delectus et. Quod vel nulla facilis nostrum ducimus unde explicabo. Temporibus aliquid blanditiis reprehenderit. Quam aut molestias et quis. Et dolor nihil sit reprehenderit. Impedit at et sit aliquam. Voluptatem iure officia qui ut voluptas dicta. Perspiciatis suscipit quia facere rem amet nostrum saepe. Incidunt repudiandae ut sequi ducimus enim atque ea.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(16,2,2,'Possimus ipsum.','voluptatem-eum-quis-dignissimos-corrupti-sit-sint-unde-sint','Id eos voluptatem qui molestiae. Optio debitis et velit temporibus. Ut eum commodi velit quaerat. Ratione ab enim excepturi et aliquam sed eos. Deleniti corrupti similique sit perferendis aliquam sint. Dolor corrupti aut perspiciatis eos aut ad. Id unde vitae hic consequatur cum consequatur.','Sit qui eveniet molestias reprehenderit. Temporibus nemo quia voluptas porro. Nobis omnis dolores ad similique repellendus alias totam a. Et voluptas recusandae enim quos consequuntur. Cum aperiam cumque provident blanditiis consectetur velit sed. Tenetur dignissimos dolores eaque eligendi maxime. Molestias dolorem ipsum soluta. Consequatur voluptas ipsam sint doloribus quis. Quo optio qui praesentium vitae accusamus repellat. Nemo ut temporibus illo ut sint ipsam. Animi adipisci voluptate modi hic voluptatem fugiat. Et natus labore doloribus ea amet.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(17,2,1,'Aut tenetur reiciendis.','odio-esse-ut-officia-magnam-officia-pariatur-tempore','Qui animi laudantium praesentium qui nam. Et mollitia iusto facilis facilis. Et asperiores velit incidunt aperiam minima non autem. Quam enim sit autem quia est cumque quod. Recusandae in enim ipsam.','Architecto eum in necessitatibus. Suscipit aliquam ipsam ea distinctio. Praesentium eos omnis suscipit cum et. Aut earum ullam illum dolor atque voluptatum tenetur. Reprehenderit numquam ex fuga. Culpa voluptas ut dolorem laboriosam reprehenderit harum. Ipsa atque necessitatibus optio omnis praesentium. Quia omnis facilis enim et explicabo. Eaque molestiae amet tempore sit. Id et enim accusantium sed.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(18,2,1,'Qui aliquam placeat.','voluptatibus-reiciendis-consequatur-ut','Nam repellat et est porro eligendi aspernatur. Quia in similique quod adipisci. Qui rerum sit deleniti esse. Quia eum sint sunt similique quo optio. Est facilis provident enim ut rerum qui ut. Placeat reprehenderit ex voluptatem ad.','Omnis beatae eos saepe soluta saepe eaque sint. Tenetur veniam aut voluptatem reprehenderit enim est soluta. Voluptate explicabo autem odit assumenda a aut. Quos ipsa aut quae perferendis totam. Eos quia nisi voluptatum rerum dolorem ut sit quaerat. Delectus sit voluptatem recusandae sed sit ex eveniet. Et atque vel tenetur illum maxime occaecati.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(19,2,2,'Dolor odit.','esse-ut-aut-aspernatur-quam-et-ad','Veritatis occaecati inventore omnis nisi temporibus porro aut. Eos magnam eos est officiis eos voluptatem. Doloremque quis quae accusamus quibusdam. Libero blanditiis mollitia praesentium omnis in architecto.','Et consectetur possimus modi voluptas. Id cumque placeat rerum omnis. Quia ex sequi similique quis. Labore voluptas consequuntur sequi architecto reiciendis ea. Provident cum hic impedit aperiam amet delectus. Doloremque quisquam inventore et nihil omnis. Quibusdam repudiandae voluptate nisi odio velit ab sit. Placeat atque sint deserunt quo natus adipisci aspernatur. Perspiciatis ea ipsa eveniet hic dolorem nobis amet. Sunt alias enim quaerat earum voluptate dolorem. Recusandae aspernatur sunt sed. Error corrupti aliquam quidem illo. Qui eos molestias perspiciatis qui. Provident iste suscipit iste omnis dicta molestias quibusdam nihil.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57'),(20,2,1,'Eligendi dignissimos quaerat.','expedita-a-unde-sint','Est error sed iusto accusantium voluptas error. Sint tempora libero eum molestias est facere quibusdam voluptas. Odio quisquam magni consectetur qui nostrum. Aut corporis sunt dicta et quia voluptatem. Odit dolore ut iste necessitatibus ducimus.','Veniam necessitatibus aut aut est labore velit consequatur voluptatem. Deserunt et delectus distinctio dolor hic rerum quisquam quis. Ad deserunt sequi velit. Esse vero quis mollitia explicabo possimus quod. Autem totam labore dolorem. Occaecati voluptatem in quae quis nam. Aut voluptatem laboriosam harum dolores et. Praesentium inventore quaerat officiis laboriosam dignissimos dignissimos. Asperiores in accusamus facilis non repudiandae. Et deleniti accusantium minus. Nam consequuntur molestiae voluptate beatae. Non eos consequatur ipsa cupiditate vel. Sapiente voluptatem quaerat occaecati est commodi ut.',NULL,'2022-01-03 21:49:57','2022-01-03 21:49:57');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Aurora Laksita M.Pd','mayasari.rachel','padmasari.gilda@example.org','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2022-01-03 21:49:57','Jt5OEAtDSG','2022-01-03 21:49:57','2022-01-03 21:49:57'),(2,'Michelle Anggraini','lasmono50','oktaviani.yulia@example.net','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2022-01-03 21:49:57','AuWmkPPHm2','2022-01-03 21:49:57','2022-01-03 21:49:57'),(3,'Wardaya Natsir','joko31','yuwais@example.org','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2022-01-03 21:49:57','IEB5ISiZyM','2022-01-03 21:49:57','2022-01-03 21:49:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-04 11:57:44
