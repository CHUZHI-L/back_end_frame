create database online_judge;

create table `user`(
    id varchar(20) not null PRIMARY KEY,
    name varchar(20) default NULL COMMENT "�û�����",
    type int default 1 COMMENT "����Ĭ��Ϊѧ�� 0-����Ա 1-ѧ�� 2-��ʦ",
    password varchar(16) not null,
    photo_url varchar(50) not null default ""
);


create table `knowledge_point`(
    id int NOT NULL auto_increment PRIMARY KEY,
    name varchar(20) default null
);

create table `subject`(
    id int NOT NULL auto_increment PRIMARY KEY,
    name varchar(200) NOT NULL,
    content varchar(1000) NOT NULL,
    answer varchar(1000) NOT NULL,
    knowledge_point int default 0,
    type int default 1
);

create table `test_paper`(
     id int NOT NULL auto_increment PRIMARY KEY,
     subject_list varchar(1000),
     creater varchar(20),
     facility_value int not null default 1 COMMENT "�Ѷ� 1-2-3-4-5 5����λ"
);

create table `program_test`(
    id int NOT NULL auto_increment PRIMARY KEY,
    subject_id int NOT NULL,
    example_in varchar(1000),
    example_out varchar(1000)
)

create table `program_data`(
    id int NOT NULL auto_increment PRIMARY KEY,
    subject_id int NOT NULL,
    data_in varchar(1000),
    data_out varchar(1000)
)