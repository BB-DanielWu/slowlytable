#用户表
create table slowly_user
(
  id int(10) unsigned NOT NULL auto_increment,
  name char(20) not null COMMENT '姓名',
  nickname char(50) not null COMMENT '昵称',
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

create table jk_order_temperature
(
  id int(10) unsigned NOT NULL auto_increment,
  order_id int(15) not null COMMENT '订单号',
  exman_id int(11) not null COMMENT '快递员ID',
  temperature char(15) not null COMMENT '温度',
  tilt char(15) not null COMMENT '倾斜度',
  raw_add_time datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  raw_update_time datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  INDEX (order_id),
  PRIMARY KEY  (id)
)engine=innodb default charset=utf8;