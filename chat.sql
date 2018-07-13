# Host: localhost  (Version: 5.5.53)
# Date: 2018-07-13 11:27:52
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "chat_communication"
#

DROP TABLE IF EXISTS `chat_communication`;
CREATE TABLE `chat_communication` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `fromid` int(5) NOT NULL,
  `fromname` varchar(50) NOT NULL,
  `toid` int(5) NOT NULL,
  `toname` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `time` int(10) NOT NULL,
  `shopid` int(5) DEFAULT NULL,
  `isread` tinyint(2) DEFAULT '0',
  `type` tinyint(2) DEFAULT '1' COMMENT '1是普通文本，2是图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

#
# Data for table "chat_communication"
#

INSERT INTO `chat_communication` VALUES (1,85,'Love violet life',87,'大金','你好',1517888705,NULL,1,1),(2,87,'大金',85,'Love violet life','你也好',1517888712,NULL,1,1),(3,89,'雨薇',87,'大金','你在干嘛',1517888760,NULL,1,1),(4,85,'Love violet life',87,'大金','你还在吗',1517888797,NULL,0,1),(5,85,'Love violet life',87,'大金','订单',1517888872,NULL,0,1),(6,89,'雨薇',87,'大金','订单',1517888882,NULL,0,1),(7,85,'Love violet life',87,'大金','订单',1517892780,NULL,0,1),(8,85,'Love violet life',87,'大金','订单',1517892806,NULL,1,1),(9,87,'大金',85,'Love violet life','你好',1517892811,NULL,1,1),(10,85,'Love violet life',87,'大金','的',1517892817,NULL,1,1),(11,85,'Love violet life',87,'大金','你好',1517892912,NULL,1,1),(12,87,'大金',85,'Love violet life','你也好',1517892920,NULL,1,1),(13,85,'Love violet life',87,'大金','订单',1517892926,NULL,1,1),(14,87,'大金',85,'Love violet life','鞍山市',1517892929,NULL,1,1),(15,89,'雨薇',87,'大金','你们好',1517892954,NULL,1,1),(16,87,'大金',85,'Love violet life','你好',1517893390,NULL,1,1),(17,85,'Love violet life',87,'大金','dd',1517893399,NULL,1,1),(18,89,'雨薇',87,'大金','订单',1517893413,NULL,1,1),(19,85,'Love violet life',87,'大金','对对对',1517893944,NULL,1,1),(20,85,'Love violet life',87,'大金','出错',1517893979,NULL,1,1),(21,85,'Love violet life',87,'大金','订单',1517893984,NULL,1,1),(22,87,'大金',85,'Love violet life','实打实大',1517893988,NULL,1,1),(23,85,'Love violet life',87,'大金','发送',1517894138,NULL,1,1),(24,87,'大金',85,'Love violet life','订单',1517894149,NULL,1,1),(25,85,'Love violet life',87,'大金','你好',1517894847,NULL,1,1),(26,87,'大金',85,'Love violet life','你也好',1517894860,NULL,1,1),(27,89,'雨薇',87,'大金','你们在干什么',1517894879,NULL,1,1),(28,85,'Love violet life',87,'大金','淡定',1517895340,NULL,1,1),(29,85,'Love violet life',87,'大金','你好',1517895622,NULL,1,1),(30,86,'大美如斯',85,'Love violet life','asdfasfdsa',1531451556,NULL,1,1),(31,85,'Love violet life',86,'大美如斯','dasfasfas',1531451561,NULL,1,1),(32,85,'Love violet life',86,'大美如斯','asdfsfasdf',1531451569,NULL,1,1),(33,86,'大美如斯',85,'Love violet life','asdfdsafsfsdfa',1531451574,NULL,1,1),(34,85,'Love violet life',86,'大美如斯','asdfasfasdfdsafsdfsf',1531451584,NULL,1,1),(35,86,'大美如斯',85,'Love violet life','你好呀',1531452153,NULL,1,1),(36,85,'Love violet life',86,'大美如斯','你也好呀',1531452162,NULL,1,1);

#
# Structure for table "chat_user"
#

DROP TABLE IF EXISTS `chat_user`;
CREATE TABLE `chat_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `mpid` int(10) NOT NULL COMMENT '公众号标识',
  `openid` varchar(255) NOT NULL COMMENT 'openid',
  `nickname` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '昵称',
  `headimgurl` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别',
  `subscribe` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否关注',
  `subscribe_time` int(10) DEFAULT NULL COMMENT '关注时间',
  `unsubscribe_time` int(10) DEFAULT NULL COMMENT '取消关注时间',
  `relname` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `signature` text COMMENT '个性签名',
  `mobile` varchar(15) DEFAULT NULL COMMENT '手机号',
  `is_bind` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否绑定',
  `language` varchar(50) DEFAULT NULL COMMENT '使用语言',
  `country` varchar(50) DEFAULT NULL COMMENT '国家',
  `province` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '省',
  `city` varchar(50) DEFAULT NULL COMMENT '城市',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `group_id` int(10) DEFAULT '0' COMMENT '分组ID',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '公众号分组标识',
  `tagid_list` varchar(255) DEFAULT NULL COMMENT '标签',
  `score` int(10) DEFAULT '0' COMMENT '积分',
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '金钱',
  `latitude` varchar(50) DEFAULT NULL COMMENT '纬度',
  `longitude` varchar(50) DEFAULT NULL COMMENT '经度',
  `location_precision` varchar(50) DEFAULT NULL COMMENT '精度',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0:公众号粉丝1：注册会员',
  `unionid` varchar(160) DEFAULT NULL COMMENT 'unionid字段',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `last_time` int(10) DEFAULT '586969200' COMMENT '最后交互时间',
  `parentid` int(10) DEFAULT '1' COMMENT '非扫码用户默认都是1',
  `isfenxiao` int(8) DEFAULT '0' COMMENT '是否为分销，默认为0，1,2,3，分别为1,2,3级分销',
  `totle_earn` decimal(8,2) DEFAULT '0.00' COMMENT '挣钱总额',
  `balance` decimal(8,2) DEFAULT '0.00' COMMENT '分销挣的剩余未提现额',
  `fenxiao_leavel` int(8) DEFAULT '2' COMMENT '分销等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COMMENT='公众号粉丝表';

#
# Data for table "chat_user"
#

INSERT INTO `chat_user` VALUES (85,1,'oYxpK0bPptICGQd3YP_1s7jfDTmE','Love violet life','http://qxd-file.oss-cn-beijing.aliyuncs.com/user-dir/HnNPrCZsAdKCfXCG.png',1,1,1517280919,1517280912,NULL,NULL,NULL,0,'zh_CN','中国','江西','赣州','',0,0,'[]',0,0.00,NULL,NULL,NULL,0,NULL,NULL,1517478028,1,0,26.00,26.00,2),(86,1,'oYxpK0W2u3Sbbp-wevdQtCuviDVM','大美如斯','http://qxd-file.oss-cn-beijing.aliyuncs.com/user-dir/D1viundefinedwEf0eUxSfsCyhxdTejfRVu02e6v.png',2,1,1507261446,NULL,NULL,NULL,NULL,0,'zh_CN','中国','河南','焦作','',0,0,'[]',0,0.00,NULL,NULL,NULL,0,NULL,NULL,586969200,1,0,0.00,0.00,2),(87,1,'oYxpK0RsvcwgS9DtmIOuyb_BgJbo','大金','https://sfault-avatar.b0.upaiyun.com/293/520/2935208940-59e05bd41b855_huge256',1,1,1508920878,NULL,NULL,NULL,NULL,0,'zh_CN','中国','河南','商丘','',0,0,'[]',0,0.00,NULL,NULL,NULL,0,NULL,NULL,586969200,1,0,0.00,0.00,2),(88,1,'oYxpK0VnHjESafUHzRpstS8mMwlE','悦悦','http://www.hwqugou.cn/img/222.jpg',2,1,1512281210,NULL,NULL,NULL,NULL,0,'zh_CN','中国','福建','福州','',0,0,'[]',0,0.00,NULL,NULL,NULL,0,NULL,NULL,586969200,1,0,0.00,0.00,2),(89,1,'oYxpK0fJVYveWC_nAd7CBwcvYZ3Q','雨薇','http://www.hwqugou.cn/img/111.jpg',2,1,1506320564,NULL,NULL,NULL,NULL,0,'zh_CN','','','','',0,0,'[]',0,0.00,NULL,NULL,NULL,0,NULL,NULL,586969200,1,0,0.00,0.00,2);
