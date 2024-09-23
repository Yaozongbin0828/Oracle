/*创建student表*/
CREATE TABLE student 
    (
        sid char(6) NOT NULL PRIMARY KEY,
        sname char(12) NOT NULL,
        ssex char(3) NOT NULL ,
        sbirthday date NOT NULL,
        speciality char(12) NULL,
        tc number NULL
    );

/*创建course表*/
CREATE TABLE course
    (
        cid char(4) NOT NULL PRIMARY KEY,
        cname char(15) NOT NULL,
        credit number NULL
    );

/*创建score表*/
CREATE TABLE score
    (
        sid char (6) NOT NULL,
        cid char(4) NOT NULL,
        grade number NULL,
        PRIMARY KEY(sid,cid)
    );

/*创建teacher表*/
CREATE TABLE teacher
    (
        tid char (6) NOT NULL PRIMARY KEY,
        tname char(12) NOT NULL,
        tsex char (3) NOT NULL ,
        tbirthday date NOT NULL,
        title char (12) NULL,
        school char (15) NULL
    );

/*创建 lecture表*/
CREATE TABLE lecture
    (
        tid char(6) NOT NULL,
        cid char(4) NOT NULL,
        location char(6) NULL,
        PRIMARY KEY( tid,cid)
    );

/*插入数据到student表*/
INSERT INTO student VALUES('221001','何德明','男',TO_DATE('20010716','YYYYMMDD'),'计算机',52);
INSERT INTO student VALUES('221002','王丽','女',TO_DATE('20020921','YYYYMMDD'),'计算机',50);
INSERT INTO student VALUES('221004','田桂芳','女',TO_DATE('20021205','YYYYMMDD'),'计算机',52);
INSERT INTO student VALUES('224001','周思远','男',TO_DATE('20010318','YYYYMMDD'),'通信',52);
INSERT INTO student VALUES('224002','许月琴','女',TO_DATE('20020623','YYYYMMDD'),'通信',48);
INSERT INTO student VALUES('224003','孙俊松','男',TO_DATE('20011007','YYYYMMDD'),'通信',50);
COMMIT;


/*插入数据到course表*/
INSERT INTO course VALUES('1004','数据库系统',4);
INSERT INTO course VALUES('1015','数据结构',3);
INSERT INTO course VALUES('1201','英语',5);
INSERT INTO course VALUES('4002','数字电路',3);
INSERT INTO course VALUES('8001','高等数学',5);
COMMIT;


/*插入数据到score表*/
INSERT INTO score VALUES('221001','1004',94);
INSERT INTO score VALUES('221002','1004',86);
INSERT INTO score VALUES('221004','1004',90);
INSERT INTO score VALUES('221001','1201',93);
INSERT INTO score VALUES('221002','1201',76);
INSERT INTO score VALUES('221004','1201',92);
INSERT INTO score VALUES('224001','1201',82);
INSERT INTO score VALUES('224002','1201',75);
INSERT INTO score VALUES('224003','1201',91);
INSERT INTO score VALUES('224001','4002',92);
INSERT INTO score VALUES('224002','4002',78);
INSERT INTO score VALUES('224003','4002',89);
INSERT INTO score VALUES('221001','8001',91);
INSERT INTO score VALUES('221002','8001',87);
INSERT INTO score VALUES('221004','8001',85);
INSERT INTO score VALUES('224001','8001',86);
INSERT INTO score VALUES('224002','8001',NULL);
INSERT INTO score VALUES('224003','8001',93);
COMMIT;


/*插入数据到teacher表*/
INSERT INTO teacher VALUES('100006','汤俊才','男',TO_DATE('19790623','YYYYMMDD'),'教授','计算机学院');
INSERT INTO teacher VALUES('100015','梁倩','女',TO_DATE('19830409','YYYYMMDD'),'教授','计算机学院');
INSERT INTO teacher VALUES('120026','罗晓伟','男',TO_DATE('19870815','YYYYMMDD'),'副教授','外国语学院');
INSERT INTO teacher VALUES('400009','郭莉君','女',TO_DATE('19941228','YYYYMMDD'),'讲师','通信学院');
INSERT INTO teacher VALUES('800017','姚万祥','男',TO_DATE('19881104','YYYYMMDD'),'副教授','数学学院');
COMMIT;


/*插入数据到lecture表*/
INSERT INTO lecture VALUES('100006','1004','1-108');
INSERT INTO lecture VALUES('120026','1201','5-203');
INSERT INTO lecture VALUES('400009','4002','4-216');
INSERT INTO lecture VALUES('800017','8001','3-114');
COMMIT;


