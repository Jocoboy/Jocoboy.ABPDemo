INSERT INTO aspnetcoredemo.sysuser (Id, RoleCode, UserLgnId, UserName, UserPwd, IsLock, Remark, LoginNum, LastLoginDate, RegDate) VALUES(1, 'admin', 'jocoboy', 'Jocoboy', '96e79218965eb72c92a549dd5a330112', 0, 'Ĭ�����룺111111', NULL, NULL, '2024-09-15 00:00:00');

INSERT INTO aspnetcoredemo.sysrole (Id, RoleCode, MenuCode) VALUES(1, 'admin', '0100');
INSERT INTO aspnetcoredemo.sysrole (Id, RoleCode, MenuCode) VALUES(2, 'admin', '0200');
INSERT INTO aspnetcoredemo.sysrole (Id, RoleCode, MenuCode) VALUES(3, 'admin', '0201');
INSERT INTO aspnetcoredemo.sysrole (Id, RoleCode, MenuCode) VALUES(4, 'admin', '0202');
INSERT INTO aspnetcoredemo.sysrole (Id, RoleCode, MenuCode) VALUES(5, 'admin', '0300');
INSERT INTO aspnetcoredemo.sysrole (Id, RoleCode, MenuCode) VALUES(6, 'admin', '0301');

INSERT INTO aspnetcoredemo.sysmenu (Id, Code, Name, Url, Icon, Status, Seq) VALUES(1, '0100', '�˵�1', '/menu1', 'menu1', 'Y', 1);
INSERT INTO aspnetcoredemo.sysmenu (Id, Code, Name, Url, Icon, Status, Seq) VALUES(2, '0200', '�˵�2', '/menu2', 'menu2', 'Y', 2);
INSERT INTO aspnetcoredemo.sysmenu (Id, Code, Name, Url, Icon, Status, Seq) VALUES(3, '0201', '�˵�2-1', '/menu21', NULL, 'Y', 3);
INSERT INTO aspnetcoredemo.sysmenu (Id, Code, Name, Url, Icon, Status, Seq) VALUES(4, '0202', '�˵�2-2', '/menu22', NULL, 'Y', 4);
INSERT INTO aspnetcoredemo.sysmenu (Id, Code, Name, Url, Icon, Status, Seq) VALUES(5, '0300', '�˵�3', '/menu3', 'menu3', 'Y', 5);
INSERT INTO aspnetcoredemo.sysmenu (Id, Code, Name, Url, Icon, Status, Seq) VALUES(6, '0301', '�˵�3-1', '/menu31', NULL, 'Y', 6);

INSERT INTO aspnetcoredemo.person (Id, Phone, Pwd, RegDate, LoginNum, LastLoginDate) VALUES(1, '17367102860', '96e79218965eb72c92a549dd5a330112', '2024-09-15 00:00:00', 0, NULL);

INSERT INTO aspnetcoredemo.student (Id, Name, StudentLevel) VALUES(1, '�ŷ�', 0);
INSERT INTO aspnetcoredemo.student (Id, Name, StudentLevel) VALUES(2, '����', 1);
INSERT INTO aspnetcoredemo.student (Id, Name, StudentLevel) VALUES(3, '����', 2);
INSERT INTO aspnetcoredemo.student (Id, Name, StudentLevel) VALUES(4, '���', 2);
INSERT INTO aspnetcoredemo.student (Id, Name, StudentLevel) VALUES(5, '�Ÿ�', 1);

INSERT INTO aspnetcoredemo.course (Id, Name, Credit, `Type`) VALUES(1, '�ߵ���ѧ', 5.0, 0);
INSERT INTO aspnetcoredemo.course (Id, Name, Credit, `Type`) VALUES(2, '����ѧӦ��', 3.0, 0);
INSERT INTO aspnetcoredemo.course (Id, Name, Credit, `Type`) VALUES(3, 'Web����', 2.0, 1);
INSERT INTO aspnetcoredemo.course (Id, Name, Credit, `Type`) VALUES(4, '��������', 4.0, 0);

INSERT INTO aspnetcoredemo.studentcourse (Id, StudentId, CourseId, CreationTime) VALUES(1, 1, 1, '2023-08-07 00:00:00');
INSERT INTO aspnetcoredemo.studentcourse (Id, StudentId, CourseId, CreationTime) VALUES(2, 1, 3, '2023-08-25 01:16:03');

INSERT INTO aspnetcoredemo.studentscore (Id, StudentId, `Year`, TotalGrade) VALUES(1, 1, 2022, 30.0);