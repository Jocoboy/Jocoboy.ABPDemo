-- aspnetcoredemo.student definition

CREATE TABLE `student` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL COMMENT '����',
  `StudentLevel` int NOT NULL COMMENT '�꼶��0�׶�԰ 1Сѧ 2��ѧ��',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- aspnetcoredemo.course definition

CREATE TABLE `course` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL COMMENT '�γ�',
  `Credit` float NOT NULL COMMENT 'ѧ��',
  `Type` int NOT NULL DEFAULT '0' COMMENT '���ͣ�0�����Σ�1רҵ�Σ�',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- aspnetcoredemo.studentcourse definition

CREATE TABLE `studentcourse` (
  `StudentId` int NOT NULL,
  `CourseId` int NOT NULL,
  `CreationTime` datetime NOT NULL COMMENT 'ѡ��ʱ��',
  PRIMARY KEY (`StudentId`,`CourseId`),
  KEY `studentcourse_course_FK` (`CourseId`),
  CONSTRAINT `studentcourse_course_FK` FOREIGN KEY (`CourseId`) REFERENCES `course` (`Id`),
  CONSTRAINT `studentcourse_student_FK` FOREIGN KEY (`StudentId`) REFERENCES `student` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- aspnetcoredemo.studentscore definition

CREATE TABLE `studentscore` (
  `StudentId` int NOT NULL,
  `Year` int NOT NULL COMMENT 'ѧ��',
  `TotalGrade` float NOT NULL COMMENT '��������ѧ��',
  PRIMARY KEY (`StudentId`,`Year`),
  CONSTRAINT `studentscore_student_FK` FOREIGN KEY (`StudentId`) REFERENCES `student` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;