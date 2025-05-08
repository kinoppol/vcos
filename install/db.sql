

CREATE TABLE `system_config` (
  `id` varchar(32) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO system_config VALUES
("systemName","Student Activity Management"),
("systemSubName","SAM"),
("systemThaiName","ระบบงานกิจกรรมนักเรียนนักศึกษา");




CREATE TABLE `user_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` char(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `user_type_id` int(11) NOT NULL DEFAULT 2,
  `picture` varchar(100) DEFAULT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO user_data VALUES
("1","dev","81dc9bdb52d04dc20036dbd8313ed055","noppol.ins@gmail.com","นพพล","อินศร","1","ZGV2.jpg","1"),
("2","it","81dc9bdb52d04dc20036dbd8313ed055","it@rvc.ac.th","งานศูนย์ข้อมูลสารสนเทศ","วิทยาลัยอาชีวศึกษาร้อยเอ็ด","2","","1"),
("3","noppol","8689391a8b93cd2d55ccf3f436eef4e2","noppol@rvc.ac.th","","","2","","1");




CREATE TABLE `user_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(32) NOT NULL,
  `active_menu` text NOT NULL,
  `active_module` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO user_type VALUES
("1","developer","developer,admin,user_menu","hello,sam"),
("2","admin","adminuser_menu",""),
("3","user","user_menu","");


