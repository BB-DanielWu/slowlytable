#用户表
create table slowly_adminuser
(
  id int(10) unsigned NOT NULL auto_increment,
  name char(20) not null COMMENT '姓名',
  status char(50) not null COMMENT '状态',
  telephone char(15) not null COMMENT '手机号',
  email char(15) not null COMMENT '邮箱',
  sex char(5) not null COMMENT '邮箱',
  address varchar(70) not null COMMENT '地址',
  birthday char(15) not null COMMENT '生日',
  reserve1 varchar(150) not null,
  reserve2 varchar(150) not null,
  reserve3 varchar(150) not null,
  raw_add_time datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  raw_update_time datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  INDEX (name),
  PRIMARY KEY  (id)
)engine=innodb default charset=utf8;

#密码表
create table slowly_adminuser_password
(
  user_id int(20) not null COMMENT '用户id',
  salt varchar(50) not null COMMENT '随机秘钥',
  password varchar(100) not null COMMENT '密码',
  reserve1 varchar(150) not null,
  reserve2 varchar(150) not null,
  reserve3 varchar(150) not null,
  raw_add_time TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  raw_update_time TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY  (user_id)
)engine=innodb default charset=utf8;

1，TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
在创建新记录和修改现有记录的时候都对这个数据列刷新

2，TIMESTAMP DEFAULT CURRENT_TIMESTAMP  在创建新记录的时候把这个
字段设置为当前时间，但以后修改时，不再刷新它

3，TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  在创建新记录的时候把这个字段设置为0

create table slowly_adminuser
(
  id int(10) unsigned NOT NULL auto_increment,
  name char(20) not null COMMENT '姓名',
  status char(50) not null COMMENT '状态',
  telephone char(15) not null COMMENT '手机号',
  email char(15) not null COMMENT '邮箱',
  sex char(5) not null COMMENT '性别',
  address varchar(70) not null COMMENT '地址',
  birthday char(15) not null COMMENT '生日',
  createby char(50) not null COMMENT '创建人',
  reserve1 varchar(150) not null,
  reserve2 varchar(150) not null,
  reserve3 varchar(150) not null,
  raw_add_time TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  raw_update_time TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  INDEX (name),
  PRIMARY KEY  (id)
)engine=innodb default charset=utf8;