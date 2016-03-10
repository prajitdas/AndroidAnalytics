--
-- Database: `googleplaystore`
--

USE `googleplaystore`;

-- --------------------------------------------------------

--
-- View app_perm_info_view
--

CREATE VIEW `app_perm_info_view` AS
SELECT a.`app_pkg_name`, p.`name`
FROM `appdata` a, `permissions` p, `appperm` ap 
WHERE ap.`app_id` = a.`id` AND ap.`perm_id` = p.`id` 
ORDER BY a.`app_pkg_name`;

-- --------------------------------------------------------

--
-- View app_perm_count_view
--

CREATE VIEW `app_perm_count_view` AS
SELECT a.`app_pkg_name`, count(ap.`perm_id`) perm_count
FROM `appdata` a, `appperm` ap 
WHERE ap.`app_id` = a.`id`
GROUP BY a.`app_pkg_name`
ORDER BY perm_count DESC;

-- --------------------------------------------------------

--
-- View perm_app_count_view
--

CREATE VIEW `perm_app_count_view` AS
SELECT count(a.`app_pkg_name`) app_count, p.`name`, p.`id`
FROM `appdata` a, `permissions` p, `appperm` ap 
WHERE ap.`app_id` = a.`id` AND ap.`perm_id` = p.`id`
GROUP BY p.`name`
ORDER BY app_count DESC;

-- --------------------------------------------------------

--
-- View perm_app_medical_cat_count_view
--

CREATE VIEW `perm_app_medical_cat_count_view` AS
SELECT count(a.`app_pkg_name`) app_count, p.`name`, p.`id`
FROM `appdata` a, `permissions` p, `appperm` ap 
WHERE ap.`app_id` = a.`id` AND ap.`perm_id` = p.`id` AND a.`app_category_id` = 13
GROUP BY p.`name`
ORDER BY app_count DESC;

-- --------------------------------------------------------

--
-- View perm_app_heatlth_and_fitness_cat_count_view
--

CREATE VIEW `perm_app_heatlth_and_fitness_cat_count_view` AS
SELECT count(a.`app_pkg_name`) app_count, p.`name`, p.`id`
FROM `appdata` a, `permissions` p, `appperm` ap 
WHERE ap.`app_id` = a.`id` AND ap.`perm_id` = p.`id` AND a.`app_category_id` = 8
GROUP BY p.`name`
ORDER BY app_count DESC;

-- --------------------------------------------------------

--
-- View count_of_app_perm_collected_view
--

CREATE VIEW `count_of_app_perm_collected_view` AS
SELECT count(DISTINCT app_id) FROM `appperm`;

-- --------------------------------------------------------

--
-- View valid_app_playdrone_metadata_url_view
--

CREATE VIEW `valid_app_playdrone_metadata_url_view` AS
SELECT a.`playdrone_metadata_url`, a.`app_pkg_name`, a.`id`
FROM `appurls` a, `appdata` b
WHERE
`playdrone_metadata_url` IS NOT NULL
AND
a.`app_pkg_name` = b.`app_pkg_name`
AND
a.`perm_extracted` = 0;