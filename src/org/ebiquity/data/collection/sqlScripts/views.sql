--
-- Database: `googleplaystore`
--

USE `googleplaystore`;

-- --------------------------------------------------------

--
-- View app_perm_info
--

CREATE VIEW `app_perm_info_view` AS
SELECT a.`app_pkg_name`, p.`name`
FROM `appdata` a, `permissions` p, `appperm` ap 
WHERE ap.`app_id` = a.`id` AND ap.`perm_id` = p.`id` 
ORDER BY a.`app_pkg_name`;

-- --------------------------------------------------------

--
-- View app_perm_count
--

CREATE VIEW `app_perm_count_view` AS
SELECT a.`app_pkg_name`, count(ap.`perm_id`) perm_count
FROM `appdata` a, `appperm` ap 
WHERE ap.`app_id` = a.`id`
GROUP BY a.`app_pkg_name`
ORDER BY perm_count DESC;

-- --------------------------------------------------------

--
-- View count_of_app_perm_collected
--

CREATE VIEW `count_of_app_perm_collected_view` AS
SELECT count(DISTINCT app_id) FROM `appperm`;

-- --------------------------------------------------------

--
-- View valid_app_playdrone_metadata_url
--

CREATE VIEW `valid_app_playdrone_metadata_url_view` AS
SELECT a.`playdrone_metadata_url`, a.`app_pkg_name`
FROM `appurls` a, `appdata` b
WHERE `playdrone_metadata_url` IS NOT NULL
AND
a.`app_pkg_name` = b.`app_pkg_name`;