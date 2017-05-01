CREATE TABLE `area` (
  `id` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned DEFAULT NULL,
  `node` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `lat` double(8,2) NOT NULL,
  `lng` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `area_lat_lng_index` (`lat`,`lng`),
  KEY `area_pid_index` (`pid`),
  KEY `area_name_index` (`name`),
  KEY `area_level_index` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
