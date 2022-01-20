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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Cryptocurrency','cryptocurrency','2022-01-04 04:52:52','2022-01-04 04:52:52'),(2,'Tidur','tidur','2022-01-04 04:52:52','2022-01-04 04:52:52'),(3,'Teknologi Termutakir','teknologi-termutakir','2022-01-04 04:52:53','2022-01-04 04:52:53'),(4,'Belajar Coding','belajar-coding','2022-01-04 04:52:53','2022-01-04 04:52:53');
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
INSERT INTO `posts` VALUES (1,1,1,'Aut a.','placeat-velit-ipsa-officiis-recusandae-sapiente-ab','Et expedita libero error et nemo. Explicabo voluptatem consequatur non est rem laboriosam. Excepturi quisquam qui hic unde reprehenderit eos.','<p>Error et consequatur debitis ut esse fugit deserunt dolores. Saepe voluptatem sed aut rerum eos facere. Aliquid maiores voluptatum ratione quo quia rerum repudiandae. Quaerat doloremque pariatur quos error et.</p><p>Expedita asperiores eos porro ullam corporis nam. Recusandae fuga eos hic et amet. Quidem est natus amet modi. Tempore commodi eum sunt eos non animi.</p><p>Quod et nulla neque commodi dolor quis recusandae. Quod quia exercitationem explicabo qui. Voluptatem ducimus quis eos consectetur eum ut molestiae placeat.</p><p>Consequatur maxime similique corrupti ut. Accusamus consequatur quia aliquam doloribus et et eum. Autem soluta sapiente et impedit laborum nesciunt.</p><p>Voluptatem modi quia possimus rerum et dolor sunt. Mollitia qui quam ad similique. Omnis placeat nobis nam et harum sed. Et aut qui dicta rerum nihil incidunt.</p>',NULL,'2022-01-04 04:52:53','2022-01-04 04:52:53'),(2,3,2,'Sunt vel.','dolorem-natus-voluptatem-reprehenderit-mollitia-aut-magnam','Eum aliquid hic laboriosam aut eum est. Eveniet aut commodi molestiae dolorem ab sed. Rerum maiores at veritatis non. Possimus aut pariatur quod incidunt nesciunt eos.','<p>Velit molestiae neque maxime. Saepe blanditiis dolore nisi accusantium voluptatem vero eius. Quasi cum velit est molestiae. Corrupti aut aut et rerum minima non cumque.</p><p>Voluptatibus nam atque et. Veritatis distinctio consequatur asperiores. Ducimus aspernatur dolorem iste in voluptas perspiciatis natus perspiciatis.</p><p>Voluptatem fuga velit eos quo enim quia at. Error atque quia nobis a molestias nihil omnis.</p><p>Et est sit et fuga. Voluptatibus repudiandae iste consequatur. Est quia ut eos non qui perferendis aut. Voluptatum autem libero mollitia amet. Qui sunt qui rerum id.</p><p>Qui cupiditate illo et nobis delectus alias. Inventore ut non voluptatem iusto atque voluptatem ratione. Est ex dolorum vero temporibus non sint voluptatum.</p><p>Placeat alias dolores cumque enim. Eos consequatur commodi quo at velit aliquid autem. Maiores nulla consequatur quia. Beatae reiciendis et cumque minima. Aut est suscipit rem.</p>',NULL,'2022-01-04 04:52:54','2022-01-04 04:52:54'),(3,3,1,'Molestias commodi.','quasi-autem-quam-quidem-qui-quod-molestias-quisquam','Eius est et et quas dolores sunt. Expedita eveniet recusandae sunt possimus dolorum. Et unde et omnis est nesciunt sed. Qui quis consectetur sed fugit libero omnis.','<p>Minima provident sit deserunt unde qui nam assumenda. Sint et laborum dolores officia provident quasi. Repellendus vel occaecati sed velit optio incidunt et.</p><p>Necessitatibus dolorem omnis aut qui perspiciatis ea repellat. Rem qui ut adipisci quibusdam maxime accusantium. Ex sit id magnam molestiae qui tempora dolores.</p><p>Incidunt iste earum omnis sequi vitae sequi. Ut possimus id quis non. Accusantium fugit a molestiae vitae doloremque ea veritatis. Aliquam est et quibusdam sit commodi.</p><p>Vel cupiditate ut laudantium voluptas quis sed dignissimos. Sed dolore nesciunt magnam et hic non quidem sint.</p><p>Provident et quia est cupiditate consequuntur. Sint id ab possimus incidunt aliquam in labore. Consequatur maxime reiciendis ut inventore dolores adipisci vero voluptas.</p><p>Iure sint quos ut aut accusantium harum. Sit animi minima aut deleniti molestiae in quia.</p><p>Itaque ut at nulla doloribus ut non. Harum molestiae molestiae dolorum itaque quam. Minima harum pariatur aut et odit sunt. Maiores pariatur molestiae expedita eveniet consectetur ut doloremque.</p><p>Fugit accusamus non qui illo. Sit molestiae ipsum consectetur ut facilis fuga nam. Voluptatem ipsum qui ab aspernatur. Totam vitae nostrum rem non.</p><p>Est sit dolores cupiditate corporis sed et et. Rerum quae placeat occaecati officiis voluptate voluptatem. Nihil aut veniam non in repellendus. Expedita ut molestias atque et.</p><p>Repudiandae voluptas hic natus alias aut sunt quaerat illo. Et sed culpa est repellendus et non ea. Fugit vero ex rem qui.</p>',NULL,'2022-01-04 04:52:54','2022-01-04 04:52:54'),(4,2,2,'Nobis quia ea.','repellendus-maxime-neque-delectus-consequatur','Eaque tenetur neque est cumque dolor qui qui. Sint qui adipisci ipsa minima provident natus.','<p>Ab error id quidem ut nisi officiis ipsa. Ipsa aut eius repudiandae voluptatibus a sunt. Sint necessitatibus non cum.</p><p>Asperiores odio minima vero. In odio hic quod. Ullam tenetur vel accusamus reiciendis saepe architecto consequuntur reprehenderit. Rerum id maxime repudiandae dolore harum quas. Sequi officiis suscipit incidunt repellat consequatur id.</p><p>Ut rerum in quia molestias et perspiciatis odio. Dolores nam facilis voluptas voluptates voluptatem. In fugit voluptatibus quo alias doloremque. Voluptates expedita quam dolores illum qui perferendis voluptatem. Fugiat quo omnis qui animi.</p><p>Ipsum quibusdam quos aut vel. Esse sit ullam qui praesentium quibusdam. Optio modi ut praesentium voluptatibus quasi autem inventore. Dolores aut eos nemo quis. Aut a suscipit aliquam sed dolorem.</p><p>Aperiam labore qui error animi excepturi sint eos. Commodi molestiae quia sunt sint aliquam. Tenetur voluptatem autem non dolorum consectetur ut. Nihil et explicabo ea et.</p><p>Minima vel dolorem facilis consequuntur nemo ut aliquam vitae. Corporis ducimus pariatur aperiam sit recusandae consectetur consequatur. Ea ut neque pariatur facere.</p><p>Similique molestiae illo officia atque. Quisquam deserunt iusto fugit corporis. Accusamus repudiandae ratione hic sapiente saepe quis qui error.</p>',NULL,'2022-01-04 04:52:54','2022-01-04 04:52:54'),(5,2,2,'Enim nihil.','reiciendis-minima-rerum-incidunt-velit-accusantium-pariatur-qui','Neque quidem ipsum facere quia ut. Voluptatum nesciunt dolores dolorem eum labore aperiam officia. Recusandae qui fugiat magnam voluptatem in sint est.','<p>Dignissimos id vitae aspernatur. Perspiciatis ut eveniet dolores architecto quibusdam. A sint quis voluptatem dolorum. Cum ipsa ut et est optio.</p><p>Quaerat omnis explicabo sit qui aut. Modi nemo vel aut libero. Rerum beatae molestiae ut earum non consequatur hic. Non tempore eius est aut sint numquam sed.</p><p>Et est repudiandae aspernatur et non. Iusto error necessitatibus laborum expedita et quo deserunt. Voluptatem nostrum dignissimos aut fugiat velit illum doloribus. Quibusdam doloremque saepe quo aut iusto consequuntur.</p><p>Quisquam eveniet maxime aspernatur unde eos consequatur est aspernatur. Aut facilis unde facilis non soluta a est. Consequuntur voluptatem voluptas quia sed.</p><p>Ullam odit dolorem libero voluptatum repudiandae non. Placeat minima voluptate et exercitationem. Qui eum accusamus facere suscipit culpa numquam in. Nostrum fugit quae nihil aut.</p><p>Laborum alias aut nobis et. Iusto doloribus ut in aspernatur. Amet vero sed cum aspernatur officiis ducimus dolores ullam. Rerum dolor ut deleniti doloremque corrupti.</p><p>Error ratione quaerat quia perspiciatis debitis cum. Sint eos omnis animi ut facere. Deleniti nihil asperiores culpa alias.</p><p>Maiores dicta temporibus fuga consequatur molestiae perspiciatis. Fuga qui facere iste dolores non. Et alias aperiam tempore asperiores in.</p>',NULL,'2022-01-04 04:52:54','2022-01-04 04:52:54'),(6,3,1,'Repellendus illo eligendi.','laborum-repellat-fuga-doloribus-adipisci-rerum-dolorem-fugit','Velit in facilis eligendi possimus nulla dolores. Ipsam eum ipsam deserunt mollitia cupiditate aut. Enim ipsum molestiae ut sunt rerum veniam consequatur.','<p>Quis culpa accusantium tempora quibusdam nihil est quod. Necessitatibus impedit assumenda accusantium qui. Iure nam consequuntur aut ut dolorem. Sit ea modi voluptatum iste in.</p><p>Temporibus voluptatum sed ab. Eos reiciendis rerum autem praesentium rerum. Iusto delectus possimus autem.</p><p>Necessitatibus non modi dolorem a atque sunt. Porro et soluta ipsum. Perferendis qui deserunt quos qui. Amet aut aperiam voluptatum itaque et consequatur. Perspiciatis pariatur sit fugit autem rerum ipsam voluptates.</p><p>Porro facere aliquid aut doloribus. Animi et aut dolorem tempora non. Quis est ea eaque eos at reprehenderit delectus. Nihil sint impedit provident.</p><p>Saepe sapiente minus soluta voluptas nihil in delectus. At deleniti excepturi amet. Dolore beatae laudantium ipsa minima doloribus aut.</p><p>Aut itaque neque ut quae vel. Rem voluptate animi necessitatibus non odio harum. Voluptate fugiat et ut quasi. Quos odit sunt minus et.</p><p>Vitae similique velit omnis. Fuga laborum praesentium quia harum. Qui voluptatum sapiente esse et nihil ut id.</p><p>Eveniet nam placeat quos unde voluptatum perspiciatis. Doloremque dolores quidem quia ut voluptates dolorum nemo. Tenetur id molestias quia unde consequatur nesciunt maxime. Placeat earum nemo delectus odio natus voluptas.</p><p>Occaecati laboriosam esse laboriosam consequatur. Numquam nam perspiciatis temporibus iusto aut rerum. Incidunt delectus beatae nisi aut.</p>',NULL,'2022-01-04 04:52:55','2022-01-04 04:52:55'),(7,3,2,'Quis deserunt.','aperiam-earum-assumenda-asperiores-officiis-est-eligendi-labore-est','Voluptas et perspiciatis dolores qui qui nostrum deleniti. Enim ad qui eligendi iste dolores et. Nostrum non excepturi et molestiae ullam inventore. Quasi sunt iure repellat.','<p>Vitae illum possimus consequatur doloremque. Vel exercitationem rerum assumenda adipisci accusantium voluptatibus. Neque necessitatibus sunt dolores molestiae alias nostrum eligendi.</p><p>Aliquid suscipit necessitatibus fuga voluptates. Aliquam eum odio vitae dolores dolorem eveniet eos. Laboriosam quas eum voluptatibus dolores.</p><p>Fugit blanditiis nemo repudiandae ea sed dignissimos. Velit pariatur rem officiis aspernatur aspernatur doloremque rerum. Ratione assumenda enim et qui perspiciatis.</p><p>Voluptatum alias et quis assumenda molestiae sit in. Eum necessitatibus laboriosam veniam iure enim et. Eos qui quis minima consequatur est dolor officiis.</p><p>Voluptas deleniti praesentium corporis voluptatem magni. Aperiam soluta et itaque dolorem voluptate ut. Sit enim inventore totam laudantium dolor.</p><p>Consequatur assumenda perferendis et. Qui provident et sit atque vel aut eaque. Quaerat quisquam error totam aut impedit dolores ex. Eligendi quisquam autem pariatur a aut.</p>',NULL,'2022-01-04 04:52:55','2022-01-04 04:52:55'),(8,1,1,'Qui in.','maxime-doloribus-nesciunt-beatae-nesciunt-error','Est provident magni unde tempore consequatur deserunt. Minus id pariatur consequuntur in totam. Beatae sequi et vitae labore aperiam. Assumenda voluptas eveniet minima error ipsa.','<p>Officiis labore commodi incidunt perferendis nulla enim. Voluptas aspernatur recusandae laboriosam et quis et dolorem. Autem nemo adipisci dignissimos nesciunt veniam et illo maxime. Impedit dolores praesentium perspiciatis. Quasi nobis amet quisquam beatae quisquam id.</p><p>Ut labore nemo accusamus unde. Dicta id neque quis porro veniam recusandae. Consequatur doloribus recusandae labore dolorem in suscipit sit.</p><p>Perferendis beatae accusantium et. Maiores recusandae odit velit fugiat aliquam blanditiis hic iste.</p><p>Velit facilis non eum voluptatem illum repellendus esse. Facere ut delectus doloribus reprehenderit perferendis blanditiis. Quasi rem enim qui consequuntur accusamus commodi.</p><p>Sint qui dicta sint vel eius. Et ut est labore corporis nulla adipisci.</p>',NULL,'2022-01-04 04:52:55','2022-01-04 04:52:55'),(9,2,1,'Itaque quis qui.','aut-officia-molestiae-ut-eius-repellat-laborum','Modi dolor eos culpa quaerat ut doloremque. Maxime corporis voluptas ut dolor rerum harum. Sed aspernatur et accusantium quia esse aut laboriosam. Architecto consequatur officia laboriosam suscipit.','<p>Assumenda assumenda dignissimos quo fugiat placeat asperiores. Iure quo molestiae earum velit. Id suscipit quidem natus in debitis ipsum voluptas.</p><p>Quam sunt labore explicabo natus omnis. Eos est suscipit corrupti et et reiciendis et. Labore illum labore cupiditate doloribus et accusantium.</p><p>Laborum praesentium dicta aut et fuga animi optio. Omnis eum dicta consequuntur maiores quas dolores possimus voluptatibus. Aut suscipit dolor ullam officiis atque non similique. Maiores aut est nulla.</p><p>Dolorum sed et eos ex. Laborum recusandae facere aut ea est hic. Sit labore est ipsam a ut vel.</p><p>Sed quae asperiores laudantium placeat natus. Non vel consectetur facere reiciendis officia blanditiis. Voluptate molestiae voluptas adipisci optio sit et. Est laudantium sunt sequi hic non aut ad. Est praesentium et aperiam et vel.</p><p>Atque dolores a perferendis omnis. Tenetur quo et dolorum dignissimos a et. Rem autem cumque et voluptas reprehenderit. Exercitationem hic esse id et omnis.</p>',NULL,'2022-01-04 04:52:55','2022-01-04 04:52:55'),(10,3,2,'Nihil nihil quaerat.','placeat-doloribus-quis-beatae-quia-quibusdam-non-quisquam','Dolore voluptatem eum vel voluptate. Voluptates dignissimos quia eligendi. Eligendi dolor deleniti omnis velit similique omnis. Consequatur sunt ad aspernatur et quia quibusdam nesciunt voluptas.','<p>Ut vero reprehenderit velit atque quibusdam sint. Et placeat quas fugiat eaque est similique. Rerum ipsum saepe sed porro a dicta voluptas doloribus.</p><p>Assumenda et nostrum asperiores temporibus facere labore. Maiores itaque excepturi voluptatem quibusdam. Ea laboriosam deserunt ullam dolores labore sint.</p><p>Est aut quae voluptas rerum fugit maiores. Provident quam est animi. Cupiditate quidem laboriosam voluptates rerum et voluptatem. Et voluptatem et repudiandae. Quis quia illum sed hic velit exercitationem nam.</p><p>Autem rerum veritatis dolor occaecati officiis. Dignissimos qui sit ducimus. Iste voluptas voluptas voluptatem assumenda.</p><p>Exercitationem nihil repudiandae et commodi sit nam nulla. Nulla labore necessitatibus aut quia minima ut nam. Molestias sit vitae aut quia.</p><p>Quas at accusantium suscipit sit qui amet. Nulla omnis aut sed ducimus quia. Laborum atque commodi animi cupiditate sit et.</p><p>Doloremque illo repellendus vitae similique. Fuga occaecati est aliquam sed. Tenetur dolores quidem voluptas quia cupiditate et. Dicta velit accusantium doloribus est et.</p><p>Doloribus ea rerum sed quo est aspernatur. Sunt voluptatum ipsa iusto et aut et error. In quas asperiores libero aut.</p><p>Eaque est quaerat deserunt est occaecati fugit. Est facere et corporis qui voluptatem.</p>',NULL,'2022-01-04 04:52:56','2022-01-04 04:52:56'),(11,1,1,'Odit sit doloremque.','et-quos-eligendi-id-rerum-voluptas-ut-beatae','Id eaque necessitatibus laborum est ut necessitatibus. Molestiae veritatis quas ab inventore corporis repellat neque non.','<p>Necessitatibus repellat et dignissimos aut beatae necessitatibus. Quos eligendi aut quas cum. Placeat et qui corrupti earum ipsa sed iure. Quia sit enim aut possimus rem.</p><p>Sint amet aliquam natus et. Autem rerum ut quo pariatur. Eaque ex voluptatibus provident et. Fugit recusandae neque perferendis magni sed ducimus.</p><p>Eos voluptas asperiores exercitationem nihil pariatur. Iure similique vero ipsa mollitia mollitia vel. Voluptas ut eligendi aut enim ex vel accusamus. Et voluptas qui omnis est dolor dolore culpa dolores.</p><p>Tempora soluta consequatur totam illo eligendi quia et. Ipsam nemo ab earum labore voluptatem ducimus in. Culpa nemo pariatur distinctio expedita dolores nulla. Debitis tempore modi iure laudantium et possimus porro aut. Sit sapiente consectetur dolor et ut et.</p><p>Veniam voluptates veniam rem vel sit. Voluptate vel voluptates nihil omnis quam. Quia reiciendis sunt velit deleniti. Optio accusantium vel placeat dolore alias. Sed eum qui occaecati et eum ut.</p><p>Provident eius perferendis sit sit. Quasi similique repudiandae sunt.</p><p>Quo omnis error omnis consectetur ut quaerat natus. Adipisci corporis soluta aliquam reprehenderit.</p>',NULL,'2022-01-04 04:52:56','2022-01-04 04:52:56'),(12,2,2,'Nihil quia sint.','vel-quia-et-impedit-quam-perferendis-consequatur-eveniet-at','Nihil sequi sed fugit et quidem dolorem. Facere voluptatum quisquam expedita nemo velit qui et. Illum aliquam delectus sapiente explicabo esse eius cumque qui. Aut labore nisi quia quae sed.','<p>Occaecati eius nesciunt voluptatibus qui et dolor culpa. Aut corrupti consequatur cum autem quia sit consequatur consequatur. Eos magni perspiciatis ipsa sunt tenetur dolorem dicta quia.</p><p>Eligendi voluptatibus quis vel quia libero qui. Est iure eius quisquam consequatur dicta ut reprehenderit. Possimus quam sint eveniet ad aspernatur sequi tempora.</p><p>Quod dolorem est blanditiis fugit sed. Ea voluptatem quis praesentium et dolores laboriosam. Quia voluptate quo doloribus quae dicta ut.</p><p>Unde ratione quo et laborum sequi exercitationem et. Et harum impedit non. Laborum est ab et nihil id.</p><p>Sint officia iste est nam est officiis porro. Sequi eligendi officia inventore deserunt assumenda amet. Iste assumenda sit ut ea.</p><p>Tempore aut et eos sed aut. Eum est deserunt sint pariatur voluptate. Eveniet quo dolorem ipsa nulla. Consequuntur quis iure aut doloribus cupiditate.</p><p>Temporibus suscipit molestiae quaerat aliquid nulla eos. Incidunt consectetur velit et aliquid. Iusto nobis corrupti illo nisi quia ad eveniet. Error facere et aut unde.</p>',NULL,'2022-01-04 04:52:56','2022-01-04 04:52:56'),(13,3,1,'Quam aperiam et.','et-quia-vero-ipsum-est-accusantium-quos-assumenda','Voluptatem ut hic iure. Vel in dignissimos corrupti consequatur qui in. Sit quae nihil quos suscipit rerum qui. Debitis et consequatur quisquam vel eligendi.','<p>Error sed soluta iste. Voluptates optio sit amet aut accusantium dolorum possimus. Sed in aut asperiores quia aut iusto sed.</p><p>Voluptates eos est velit praesentium recusandae sequi sit. Sit explicabo et modi et quas nisi blanditiis. Rerum molestias et et. Omnis officiis commodi labore aspernatur impedit beatae nostrum ut.</p><p>Aut dolore consequatur et magni. Quia ratione a beatae cupiditate pariatur et autem aut. Voluptatem non possimus ipsum.</p><p>Ut repellendus corporis quia eos. Quisquam dolorum ratione sit beatae cum cupiditate. Exercitationem similique eos necessitatibus accusantium qui minima delectus.</p><p>Deleniti modi quod sunt a est dicta. Assumenda esse dolorem debitis voluptatem. Cumque rerum non qui vel architecto natus.</p><p>Porro voluptatem ea in magni eveniet. Rem enim omnis quis magni corrupti. Eos qui voluptas sed modi.</p><p>Ut doloremque aut et sed. Ut eum quia nostrum amet quia quidem. Blanditiis in dicta autem fugiat quia. Fugiat rem qui non aliquam esse sint.</p><p>Provident molestiae voluptatum voluptatem voluptas est minus. Modi sed amet consequatur dolor blanditiis perspiciatis. Qui distinctio quae tempore mollitia illo ducimus possimus.</p><p>Et dolor quae alias et suscipit similique modi aut. Quia excepturi nam voluptatem sit assumenda quas dolorem voluptates. Veniam quam et et.</p><p>Rerum voluptatibus praesentium quia illum iste voluptatem. Repudiandae fugit debitis voluptas dolorum. Ad et ea beatae omnis.</p>',NULL,'2022-01-04 04:52:57','2022-01-04 04:52:57'),(14,1,1,'Dolorem autem.','tempora-non-laudantium-voluptas-soluta-veniam-non-voluptas','Sed enim officia laudantium expedita sed nam est animi. Tenetur dolores ex vel blanditiis officia saepe. Fuga ea dolorem odio tenetur quam quaerat. Autem sint ut mollitia et et in dolore dolor.','<p>Harum dolorum ratione reprehenderit ipsam. Unde facilis vel velit maxime. Cumque commodi et laudantium tempore sit qui doloribus. Ut rerum architecto rerum itaque maiores nihil voluptate.</p><p>Dolorem recusandae dolores necessitatibus vitae. Rerum necessitatibus quas quis et neque. Provident fuga consectetur incidunt ipsam voluptate. Iure velit et soluta consequatur fuga aut aut. Reprehenderit sint quia quas sed.</p><p>Labore et ea similique. Vero dolor est voluptatem quam.</p><p>Explicabo nihil fuga tempora. Numquam neque sunt eligendi ut deleniti natus eum. Sunt officiis vero voluptatem consequatur delectus unde porro. Rerum aut ut quia fugit harum.</p><p>Maiores rerum quis est quis expedita qui. Consequuntur aut voluptatem autem sit et dolor praesentium.</p>',NULL,'2022-01-04 04:52:57','2022-01-04 04:52:57'),(15,2,1,'Assumenda et.','asperiores-laborum-quia-officia-ipsam-ex','Autem quaerat voluptatum saepe fugiat voluptatem quibusdam quaerat. Dolorem quia occaecati qui vero. Pariatur itaque ad minima qui facere nisi. Sit reprehenderit vel a corporis.','<p>Ea at qui repellat iste ducimus. Sit possimus et exercitationem vel temporibus. Qui iure ad illo autem minus.</p><p>Praesentium voluptate natus ut dolorem aut rerum dolorem sed. Unde et eum fugit et quis. Consequatur atque est voluptatem. Quia quidem quidem consectetur atque.</p><p>Asperiores at ab eligendi consectetur aut. Aliquid mollitia molestiae similique. Tenetur et quod ut adipisci. Dolorem enim cumque molestiae quia.</p><p>Debitis fugit perspiciatis distinctio voluptatem incidunt qui. Quia facilis quaerat distinctio ducimus consequatur amet accusantium. Placeat dolorum distinctio nihil natus.</p><p>Earum nisi non aspernatur sint. Nisi dolor quas voluptatem. Autem quam ducimus sunt nemo et.</p><p>Sint modi facilis et pariatur. Consequatur ex numquam eos earum dolorum. Id maiores eaque quia atque. Dolor voluptatem esse non quisquam voluptatibus dolor natus.</p><p>Quibusdam quisquam non itaque consectetur. Possimus reiciendis aut qui aliquid ut.</p><p>In a quo voluptatem provident et rerum praesentium. Omnis animi velit neque praesentium doloribus voluptates. Quisquam ipsa nulla id ratione facilis porro. Voluptatum sit dolorum facere excepturi maiores animi vel saepe.</p><p>Minus officiis voluptates perspiciatis voluptates aut hic officia. Atque adipisci et sit eligendi autem dignissimos. Iure soluta fuga sint ut.</p>',NULL,'2022-01-04 04:52:57','2022-01-04 04:52:57'),(16,1,2,'Ut quisquam quis.','et-ullam-voluptates-et-qui-est-facere-aut','Nobis voluptas rerum quia debitis. Velit maiores illum modi asperiores. Voluptas sunt et ut sunt blanditiis. Occaecati sequi perferendis officiis tempore esse repellat. Maiores rem animi rerum.','<p>Eum beatae voluptatum id repudiandae delectus illum et. Aut eveniet sapiente aliquid ad amet nihil quia. Fugiat dolorem minima omnis eius. Perferendis rerum sed ut molestiae.</p><p>Iste labore nostrum doloribus sapiente. Neque corrupti ut accusamus animi repudiandae. Non natus nemo facilis dolores. Rem quo ducimus est eum voluptatem.</p><p>Qui voluptas id error id. Quia quo ut qui culpa veritatis in est. Cum sunt aliquam id quod fuga commodi unde vitae. Aut quibusdam quis iste tempora pariatur tempora.</p><p>Expedita voluptate est minima maxime. Nisi esse in vel vero. Quos rerum recusandae sed voluptates. Omnis a sunt repellat voluptatem. Sint id sed ipsam sed id eligendi.</p><p>Et odio soluta ea accusantium. Omnis laboriosam fuga qui repellat. Enim ut enim velit tempore eos sed laudantium.</p><p>Voluptas ullam illo voluptatem voluptatem. Reprehenderit qui ut vero. Sed similique magni maxime.</p><p>Corporis placeat dolor accusantium blanditiis accusantium quis. Aut vel laudantium molestias hic. Ut et sunt tempore animi eos eaque fuga.</p><p>Voluptatem dolores et ut voluptas officiis sequi sit. Ullam ducimus sit temporibus dolore. Placeat nulla necessitatibus et aut id illo quae.</p><p>Dolore fugiat corrupti ut aut. Fugiat exercitationem illum voluptatibus ut.</p>',NULL,'2022-01-04 04:52:58','2022-01-04 04:52:58'),(17,1,2,'Mollitia est.','itaque-dicta-est-totam-delectus-est-ratione-repellat-a','Quis aperiam doloribus repellendus. Explicabo voluptatibus tempore voluptatibus ea aut non. Atque consequuntur similique recusandae. Qui cum incidunt incidunt impedit sint.','<p>Esse blanditiis non eos et et quaerat quo rerum. Saepe sunt amet quidem ducimus placeat officiis est totam. Omnis praesentium dolore hic. Nam iusto aut aut ut. Beatae neque ex atque voluptatum perferendis.</p><p>At sed expedita non pariatur et. Incidunt quod temporibus exercitationem consequuntur reprehenderit aut nisi.</p><p>Adipisci iusto ut ratione dolorem sint. Voluptatem beatae rerum id ducimus. Maxime laboriosam et praesentium error alias est ducimus.</p><p>Porro vitae autem unde voluptates. Unde qui est vel sed laborum. Delectus necessitatibus quasi corrupti vero perspiciatis suscipit. Velit et rem corporis.</p><p>Aut quia enim repellendus voluptatum cumque. Iusto ab qui molestias id vel et. Quo sit iure molestias excepturi nobis. Debitis id nostrum deserunt aut id eius fuga. Quod perspiciatis delectus dolores ab.</p><p>Reiciendis numquam voluptate qui reprehenderit voluptatum ullam a consequatur. Sunt ab reprehenderit ut alias nam nemo. Fugit aut ut distinctio perspiciatis earum nam voluptates.</p><p>Vel quos expedita corrupti officiis natus praesentium ut. Velit consequatur nemo omnis. Aut rerum in facilis possimus distinctio.</p><p>Magnam tenetur iure inventore incidunt. Et aperiam vel ullam culpa tempore nemo. Placeat cumque et deleniti omnis error impedit officia.</p><p>Possimus quia nisi molestias et est necessitatibus. Iste aliquid quia rerum recusandae saepe est numquam. Magnam incidunt architecto nesciunt similique ut labore delectus. Autem sed ipsam veniam rerum nulla in culpa.</p><p>Et reiciendis id amet vel eos. Dolor temporibus quasi architecto aperiam facilis quas. Necessitatibus iste quo veniam placeat a.</p>',NULL,'2022-01-04 04:52:58','2022-01-04 04:52:58'),(18,2,1,'Qui tempore.','et-et-blanditiis-id-non-eos-incidunt-cumque-nihil','Vitae ut rerum consectetur vero omnis. Tempore id et ab vel molestiae esse. Expedita quibusdam ut sit id animi eos. Molestias molestiae enim expedita.','<p>Doloremque maxime assumenda sint modi eum illo voluptatibus. Tenetur commodi rem et aut vitae. Aut tempora ut nostrum distinctio qui quis.</p><p>Nulla qui unde quae cupiditate ut minus. Aliquam asperiores odio suscipit omnis. Et dignissimos doloremque exercitationem quo cum quis. Assumenda quam minus id aut qui deleniti qui.</p><p>Sapiente voluptatem ad sit autem quaerat sunt libero. Facere blanditiis cupiditate molestiae sint. Aut qui hic molestiae sed non voluptatem.</p><p>Et quaerat sunt ipsum vitae ipsum quod debitis. Ducimus ipsum ut et expedita voluptatem aut. Nemo corrupti vitae voluptatibus pariatur ad reprehenderit exercitationem voluptate.</p><p>Dolor laborum esse ad quam voluptas iste. A et earum dolorum distinctio consequuntur debitis. Quisquam dignissimos atque quisquam ullam quam exercitationem consequatur. Aspernatur a voluptas cupiditate distinctio veritatis qui.</p>',NULL,'2022-01-04 04:52:58','2022-01-04 04:52:58'),(19,1,1,'Sapiente sed.','laboriosam-voluptatum-eaque-sit-quis','Odio et non suscipit et modi mollitia enim. Quia tempore perspiciatis odit eum. Ut iste placeat labore possimus aut. Aliquam ad quae at eius dolorem ipsa.','<p>Non ipsum fugit distinctio ut ea veniam architecto. Natus quis voluptas iste reprehenderit aut. Exercitationem officiis et maxime. Incidunt minima quam ex vitae mollitia.</p><p>Earum accusantium error quasi qui. Dignissimos atque id tempora nobis voluptatibus mollitia nulla. Incidunt ab repellat officiis delectus. Facere excepturi occaecati aut mollitia.</p><p>Sed unde nihil dolores itaque. Dolore tempora odit ea. Molestiae repellat id optio sequi. Quaerat est quam blanditiis consequatur dolor voluptatem.</p><p>In at dolore nam qui. Nisi et aliquid et optio et.</p><p>Veritatis itaque voluptas sunt qui sunt expedita nostrum. Sed doloremque nihil quas officiis amet sit delectus. Vitae sit inventore et omnis eligendi nihil consequatur.</p><p>Reiciendis dolorum dolorum unde aut beatae. Iste eius quidem maiores. Itaque aliquam qui autem nihil. Incidunt maiores voluptas qui qui. Enim quo odit dolores reiciendis voluptatem.</p><p>Laboriosam omnis vitae cum rem rerum repellat voluptas nostrum. Rerum quod qui a ad quia et eveniet. Veniam quod laboriosam qui consectetur. Iusto sit quibusdam soluta est tempore.</p><p>Dolore voluptatum dignissimos eveniet quam quas dicta sint. Dignissimos animi quos a rerum. Iusto aut eum quisquam laborum non.</p><p>Et voluptas beatae dolor expedita velit omnis. Tenetur veniam cum sit impedit non eligendi. Nihil velit et officiis quae.</p><p>Perspiciatis et culpa quisquam ipsa quia possimus in sed. Aut omnis maiores in pariatur suscipit dolores et exercitationem. Reprehenderit aliquid voluptas corrupti ut. Corrupti soluta fugit delectus sint dicta dolores dolor.</p>',NULL,'2022-01-04 04:52:58','2022-01-04 04:52:58'),(20,1,2,'Cum ut soluta.','voluptates-rerum-ut-veritatis-vel','Nulla hic doloribus ut quasi. Excepturi rerum fugit voluptatem qui provident voluptatem. Iste sunt officia porro quam laudantium cupiditate saepe.','<p>Consequatur est nostrum quis nam neque. Architecto sunt aut repellat placeat illo eos quasi.</p><p>Voluptatem culpa et ducimus repellat voluptate. Sit omnis excepturi voluptatem ut saepe. Vitae nulla ut et ea consequatur error expedita.</p><p>Doloribus qui autem illo molestias et atque. Accusamus dolor ea ut voluptas. Nulla consectetur voluptatem possimus sed praesentium pariatur.</p><p>Reiciendis consequatur officiis consequatur laboriosam. Illum odio vitae sunt asperiores ad a laudantium. Expedita dolorum atque mollitia odio velit necessitatibus. Qui ut aut quaerat vel tempore et sunt.</p><p>Et ea perferendis odit eum et dolorem sit. Cum similique velit aut ut quo reprehenderit quo. A repellendus id nisi. Quia eum nihil enim fugiat quae natus in.</p><p>Tempora excepturi quae a praesentium tenetur ducimus omnis nulla. Ad quo molestias cupiditate consequatur placeat ut fugiat praesentium. Quis dolorem provident quisquam tempora quis. Soluta qui nulla eius praesentium id fugiat dolor.</p>',NULL,'2022-01-04 04:52:58','2022-01-04 04:52:58');
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
INSERT INTO `users` VALUES (1,'Dalima Cinthia Hariyah','bahuwarna.wasita','anggraini.maimunah@example.net','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2022-01-04 04:52:52','RARs3w5Xzo','2022-01-04 04:52:52','2022-01-04 04:52:52'),(2,'Zelda Shania Hasanah','xanana.manullang','elaksita@example.net','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2022-01-04 04:52:52','tcaQpYPUiE','2022-01-04 04:52:52','2022-01-04 04:52:52'),(3,'Nyana Sabar Manullang','handayani.ilyas','fprasetya@example.net','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2022-01-04 04:52:52','RbV77y6v7i','2022-01-04 04:52:52','2022-01-04 04:52:52');
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

-- Dump completed on 2022-01-05  8:52:04
