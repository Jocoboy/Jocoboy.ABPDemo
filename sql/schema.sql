-- aspnetcoredemo.course definition

CREATE TABLE `course` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL COMMENT '�γ�',
  `Credit` float NOT NULL COMMENT 'ѧ��',
  `Type` int NOT NULL DEFAULT '0' COMMENT '���ͣ�0�����Σ�1רҵ�Σ�',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- aspnetcoredemo.student definition

CREATE TABLE `student` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL COMMENT '����',
  `StudentLevel` int NOT NULL COMMENT '�꼶��0�׶�԰ 1Сѧ 2��ѧ��',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- aspnetcoredemo.studentcourse definition

CREATE TABLE `studentcourse` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `StudentId` int NOT NULL,
  `CourseId` int NOT NULL,
  `CreationTime` datetime NOT NULL COMMENT 'ѡ��ʱ��',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- aspnetcoredemo.studentscore definition

CREATE TABLE `studentscore` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `StudentId` int NOT NULL,
  `Year` int NOT NULL COMMENT 'ѧ��',
  `TotalGrade` float NOT NULL COMMENT '��������ѧ��',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- aspnetcoredemo.person definition

CREATE TABLE `person` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Pwd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `RegDate` datetime DEFAULT NULL,
  `LoginNum` int DEFAULT NULL,
  `LastLoginDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;


-- aspnetcoredemo.smsinfo definition

CREATE TABLE `smsinfo` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `PersonId` int NOT NULL,
  `PassDate` datetime DEFAULT NULL,
  `SendDate` datetime NOT NULL,
  `Phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Message` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `SendStatus` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ArrStatus` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '��ִ������״̬',
  `Guid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `SendUser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '��¼UserName',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;


-- aspnetcoredemo.sysuser definition

CREATE TABLE `sysuser` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `RoleCode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `UserLgnId` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '��¼�˺�',
  `UserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '�û���(�ǳ�)',
  `UserPwd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `IsLock` tinyint(1) NOT NULL COMMENT '0����1����',
  `Remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '��ע',
  `LoginNum` int DEFAULT NULL,
  `LastLoginDate` datetime DEFAULT NULL,
  `RegDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;