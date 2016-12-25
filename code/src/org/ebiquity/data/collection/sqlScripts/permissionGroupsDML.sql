USE `googleplaystore`;
--
-- Dumping data for table `permissionGroups`
--

INSERT INTO `permissionGroups` (`name`, `priority`) VALUES
('android.permission-group.CONTACTS', '100'),
('android.permission-group.CALENDAR', '200'),
('android.permission-group.SMS', '300'),
('android.permission-group.STORAGE', '900'),
('android.permission-group.LOCATION', '400'),
('android.permission-group.PHONE', '500'),
('android.permission-group.MICROPHONE', '600'),
('android.permission-group.CAMERA', '700'),
('android.permission-group.SENSORS', '800');

COMMIT;