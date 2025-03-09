

CREATE TABLE `evidence` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสหลักฐาน',
  `indicator_id` int(11) NOT NULL COMMENT 'รหัสตัวชี้วัด',
  `type` enum('text','link') NOT NULL DEFAULT 'text' COMMENT 'ชนิดหลักฐาน',
  `detail` text NOT NULL COMMENT 'รายละเอียดหลักฐาน',
  PRIMARY KEY (`id`),
  KEY `indicator_id` (`indicator_id`),
  CONSTRAINT `evidence_ibfk_1` FOREIGN KEY (`indicator_id`) REFERENCES `indicator` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;






CREATE TABLE `indicator` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสตัวชี้วัด',
  `project_id` int(11) NOT NULL COMMENT 'รหัสการประเมิน',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'ตัวชี้วัดหลัก 0 หมายถึงเป็นตัวชี้วัดสูงสุด',
  `title` varchar(1000) NOT NULL COMMENT 'หัวข้อ',
  `subject` text NOT NULL COMMENT 'คำอธิบายหัวข้อ',
  `detail` text DEFAULT NULL COMMENT 'รายละเอียด',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `indicator_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO indicator VALUES
("1","1","0","มาตรฐานที่ 1","คุณลักษณะของผู้สําเร็จการศึกษาอาชีวศึกษาที่พึงประสงค์",""),
("2","1","0","มาตรฐานที่ 2","การจัดการอาชีวศึกษา",""),
("3","1","0","มาตรฐานที่ 3","การสร้างสังคมแห่งการเรียนรู้",""),
("4","1","1","ตัวชี้วัดที่ 1.1","ความรู้ของผู้สําเร็จการศึกษาอาชีวศึกษา",""),
("5","1","1","ตัวชี้วัดที่ 1.2","ทักษะและการนําไปประยุกต์ใช้ของผู้สําเร็จการศึกษาอาชีวศึกษา",""),
("6","1","1","ตัวชี้วัดที่ 1.3","คุณธรรม จริยธรรม และคุณลักษณะที่พึงประสงค์ ของผู้สําเร็จการศึกษาอาชีวศึกษา",""),
("7","1","1","ตัวชี้วัดที่ 1.4","ผลสัมฤทธิ์ ของผู้สําเร็จการศึกษาอาชีวศึกษา",""),
("8","1","2","ตัวชี้วัดที่ 2.1","หลักสูตรอาชีวศึกษา",""),
("9","1","2","ตัวชี้วัดที่ 2.2","การจัดการเรียนการสอนอาชีวศึกษา",""),
("10","1","2","ตัวชี้วัดที่ 2.3","การบริหารจัดการสถานศึกษา",""),
("11","1","2","ตัวชี้วัดที่ 2.4","การนํานโยบายสู่การปฏิบัติ",""),
("12","1","3","ตัวชี้วัดที่ 3.1","ความร่วมมือในการสร้างสังคมแห่งการเรียนรู้",""),
("13","1","3","ตัวชี้วัดที่ 3.2","นวัตกรรม สิ่งประดิษฐ์ งานสร้างสรรค์ และงานวิจัย","");




CREATE TABLE `org` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสหน่วยงาน',
  `name` varchar(1000) NOT NULL COMMENT 'ชื่อหน่วยงาน',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO org VALUES
("1","วิทยาลัยอาชีวศึกษาร้อยเอ็ด");




CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสการประเมิน',
  `org_id` int(11) NOT NULL COMMENT 'รหัสหน่วยงาน',
  `subject` varchar(1000) NOT NULL COMMENT 'หัวข้อ',
  `due_date` date NOT NULL DEFAULT current_timestamp(),
  `visible` enum('public','private') NOT NULL DEFAULT 'private' COMMENT 'การเผยแพร่',
  PRIMARY KEY (`id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `project_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `org` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO project VALUES
("1","1","การประกันคุณภาพภายนอก 2567","2025-01-30","public");




CREATE TABLE `system_config` (
  `id` varchar(32) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO system_config VALUES
("systemName","SAM");




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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO user_type VALUES
("1","developer","qa,oqas,admin,developer,user_menu"),
("2","admin","qa,oqas,adminuser_menu"),
("3","user","qa,oqas,user_menu");


