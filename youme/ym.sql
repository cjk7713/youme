/*
SQLyog Ultimate v8.32 
MySQL - 5.7.14 : Database - youme
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `ym_admin` */

DROP TABLE IF EXISTS `ym_admin`;

CREATE TABLE `ym_admin` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` char(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `ym_admin` */

insert  into `ym_admin`(`id`,`username`,`password`) values (1,'admin','e10adc3949ba59abbe56e057f20f883e'),(3,'admin2','e10adc3949ba59abbe56e057f20f883e'),(5,'cjk','e10adc3949ba59abbe56e057f20f883e'),(6,'123456','e10adc3949ba59abbe56e057f20f883e');

/*Table structure for table `ym_article` */

DROP TABLE IF EXISTS `ym_article`;

CREATE TABLE `ym_article` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL COMMENT '标题',
  `keywords` varchar(150) NOT NULL COMMENT '关键词',
  `desc` text NOT NULL COMMENT '描述',
  `pic` varchar(100) NOT NULL COMMENT '缩略图',
  `content` text NOT NULL COMMENT '内容',
  `click` mediumint(9) NOT NULL DEFAULT '0' COMMENT '点击量',
  `cateid` mediumint(9) NOT NULL,
  `time` int(10) NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `ym_article` */

insert  into `ym_article`(`id`,`title`,`keywords`,`desc`,`pic`,`content`,`click`,`cateid`,`time`) values (22,'adsf','adsfas','fdasfasfasf','/static/uploads/20170204/f3ae8c676f40b0441aa7cf62eccf3c17.jpg','<p><em><span style=\"text-decoration: underline;\"><strong>我上了</strong></span></em><em><strong><span style=\"text-decoration: none;\"></span></strong></em></p>',22,9,1486193042),(20,'a','a','a','','<p>a</p>',35,10,1486180085),(21,'acg','acg','acg','/static/uploads/20170204/ace5f00e0e4be74d1a9c95f7792b6150.png','<p>adf</p>',55,12,1486182766),(18,'风','风','拍付','','<p>风</p>',16,10,1486179685),(19,'mo','mo','mo','/static/uploads/20170204/ac5481305e5816a83aa4a2f651b92c38.jpg','<p>mo</p>',36,10,1486179834),(23,'天使的泪','泪水','被折断翅膀的天使','/static/uploads/20170205/7d6a0fdf3e450f658157f3750906f20b.jpg','<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">她是上辈子被折断翅膀的天使,幼儿时受尽折磨 她是一个浴火重生的孩子,一生受尽欺骗 她是一个富家千金,因为种种误会被家族赶出家门 她是一个可爱的孩子,却是一个最悲哀的孩子 她们有着不同的性格 他们是人人爱戴,人人敬佩的帅哥 他们自以为是,以为没有人能超过他们 可是当他们遇上她们,他们又有怎样的变化呢?如果他们相爱时,他们是选择相信她们,还是阴差阳道呢?尽请期待《天使的泪……</span></p>',20,9,1486263980),(26,'漂浮','漂浮','么么','','<p>追逐把</p>',5,11,1486283683),(24,'追逐繁星的孩子','梦想','《追逐繁星的孩子》是继2007年的《秒速5厘米》后，新海诚执导的另一部动画作品','/static/uploads/20170205/f0ad8d5591ef5bd04607638ce37ef9c7.jpg','<p><span style=\"color: rgb(238, 238, 238); font-family: arial, tahoma, &quot;Microsoft Yahei&quot;, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(52, 65, 95);\">《追逐繁星的孩子》是继2007年的《秒速5厘米》后，新海诚执导的另一部动画作品。故事环绕著女主角明日菜的冒险展开。主人公明日菜自从父亲死后，当护士的妈妈也因为工作繁忙而很少回家，明日菜便一直过著孤独寂寞的生活。有一天，透过从她爸爸留给她的水晶收音机遗物中，突然传出了不可思议的音乐，这首不可思议的音乐同时改变了她的日常生活。明日菜决定追寻著这把来自远方的声音而展开了新的冒险之旅，只为了再与一个生活在异国的男孩再相遇而来到了地下世界雅戈泰，最后明日菜终于明白，自己之所以开始这场冒险只是因为 ...</span><a class=\"lemmaWgt-lemmaSummary-more\" style=\"color: rgb(187, 187, 187); outline: 0px; font-family: arial, tahoma, &quot;Microsoft Yahei&quot;, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(52, 65, 95);\">&gt;&gt;&gt;</a></p>',16,9,1486264265),(25,'追梦','梦想','追逐梦想\r\n','/static/uploads/20170205/2a6b4d012c615c92d6e7ae4d1267b005.jpg','<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">梦想，是对未来的一种期望，指在现在想未来的事或是可以达到但必须努力才可以达到的境况。梦想就是一种让你感到坚持就是幸福的东西，甚至其可以视为一种信仰。</span></p>',11,11,1486273067),(27,'等待','默默','默默等待','','<p>追逐等待</p>',6,11,1486283709),(28,'烽火连城','烽火连城','峰火台，也就是狼粪烟','/static/uploads/20170205/e0b6a063664e894b56138e4b2b788b31.jpg','<pre id=\"best-content-538400980\" accuse=\"aContent\" class=\"best-text mb-10\" style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma; white-space: pre-wrap; word-wrap: break-word; line-height: 29px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); min-height: 55px;\">古代人们传递军情用的是峰火台，也就是狼粪烟，点燃后形成的浓烟聚在一起久久不散，很远的地方都能看到。一般设在城外和卫星城镇，以便于主城的防御。烽火连城：城与城之间用烽火台连接。形容戒备森严，积极备战，形势紧张等等</pre><p><br/></p>',14,17,1486299272),(29,'一场离别的化沙','离别','过往不前，思绪七零八落，身在何方，任惆怅缠绕指尖，转眼成空的梦，稍纵即逝的青春，想要挽留的终将离去，春又来，只是不再是那个春天，我立于佛前，将那篇经念了千百遍，归于静默流年。','/static/uploads/20170210/4283820c7cf6c95ed53541e1bdb434c3.png','<p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">于</span><a href=\"http://www.jj59.com/zti/time/\" class=\"keywordlink\" style=\"border: 0px; margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(51, 51, 51); outline: none; font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">时间</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">无尽的长河中，你说的忘记，原来就这样轻易的忘记了。宁愿归于滚滚红尘，历经尘世风霜，</span><a href=\"http://www.jj59.com/zti/weixiao/\" class=\"keywordlink\" style=\"border: 0px; margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(51, 51, 51); outline: none; font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">微笑</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">变得那样苍凉，一切触不可及。</span><br style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　</span><br style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　——题记</span><br style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　</span><br style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　无法阻挡这个变化的世界，是错过了太多精彩，还是一直固守陈规，不肯去改变。所有的思考在一刹那凝固，从未如此迷茫过，只因为放下了多年的执著。</span><br style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　</span><br style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　你曾说，如果一段</span><a href=\"http://www.jj59.com/qinggantiandi/\" class=\"keywordlink\" style=\"border: 0px; margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(51, 51, 51); outline: none; font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">情感</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">七年还未放下，那便是真爱，然而，再真的情感又能怎样，七年多少个日夜，多少风雨兼程，已离彼此相识的路口，千里万里，再相遇遥遥无期。</span><br style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　</span><br style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　前尘往事，就像那远去的涟漪，变得循环往复，再也没有波澜。从每一个朝暮中走来，又在每个季节里，升起无限的期盼，即使被雨打风吹，依然未放下心中的美好。</span><br style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　</span><br style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　某一年的某一天，你告诉我，所有的人都将是过客，那么谁又将与你携手天涯。看过了太多离别，冷暖自知，只听到风从耳边划过，</span><a href=\"http://www.jj59.com/zti/sinian/\" class=\"keywordlink\" style=\"border: 0px; margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(51, 51, 51); outline: none; font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">思念</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">滚烫，再也找不到所要去的远方，如一粒尘埃，被吹落，被掸起，无所谓方向。</span></p>',5,12,1486697191),(30,'何必放弃','梦想','梦想该坚持，还是放弃','/static/uploads/20170210/f2537a67c4259836ac04fbd4953ea51c.jpg','<p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; line-height: 2.8em; text-indent: 28px; color: rgb(102, 102, 102); font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);\"><span style=\"color: rgb(255, 0, 0);\"><em>我们常常在梦与现实中挣扎，分不清现实和梦中。</em></span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; line-height: 2.8em; text-indent: 28px; color: rgb(102, 102, 102); font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);\"><span style=\"font-size: 20px;\"><strong>梦在我们年幼懂事时就存在，也各有不同，成为一位作家，书法家，企业家，为国……</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; line-height: 2.8em; text-indent: 28px; color: rgb(102, 102, 102); font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);\"><span style=\"font-size: 20px;\"><strong>随着时间的成长，是否会忘了那只属于童年的梦，或者对你来说，梦始终是梦，不可能在现实中存活。</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; line-height: 2.8em; text-indent: 28px; color: rgb(102, 102, 102); font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);\"><span style=\"font-size: 20px;\"><strong>梦是夜晚给我们的遐想，或美好，可那时你是闭眼中，打开，是失望，还是</strong></span><a href=\"http://www.duanwenxue.com/diary/jili/\" style=\"margin: 0px; padding: 0px; color: rgb(102, 102, 102); outline: none; text-decoration: underline; font-size: 20px;\"><span style=\"font-size: 20px;\"><strong>激励</strong></span></a><span style=\"font-size: 20px;\"><strong>？日有所思，夜有所梦，这只是夜。是你无法行动，还是害怕行动？多少人开始时也是一无所有，而后来是应有尽有。这是为什么？同样的一头一脑，四肢，你不如他们？</strong></span></p><p><br/></p>',0,11,1486697974);

/*Table structure for table `ym_cate` */

DROP TABLE IF EXISTS `ym_cate`;

CREATE TABLE `ym_cate` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `catename` varchar(30) NOT NULL COMMENT '栏目名称',
  `keywords` varchar(150) NOT NULL COMMENT '栏目关键词',
  `desc` text NOT NULL COMMENT '栏目描述',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '栏目类型：0 ：列表 1：留言',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `ym_cate` */

insert  into `ym_cate`(`id`,`catename`,`keywords`,`desc`,`type`) values (12,'圈圈说','圈圈说','圈圈说',0),(16,'留言板','留言板','留言板',1),(17,'意境','意境','意境',0),(10,'光彩斑斓','光彩斑斓','光彩斑斓',0),(11,'如是观','如是观','如是观',0),(9,'大生活','大生活','大生活',0);

/*Table structure for table `ym_guest` */

DROP TABLE IF EXISTS `ym_guest`;

CREATE TABLE `ym_guest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(22) NOT NULL COMMENT '称呼',
  `gdesc` text NOT NULL COMMENT '描述评论',
  `gtime` int(10) NOT NULL COMMENT '评论时间',
  `gface` varchar(255) NOT NULL DEFAULT '0' COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

/*Data for the table `ym_guest` */

insert  into `ym_guest`(`id`,`gname`,`gdesc`,`gtime`,`gface`) values (3,'百度呀','啊啊错的',1486385631,'0'),(4,'百度呀啊','啊啊错的',1486385696,'0'),(19,'B站','bilibili',1486391481,'0'),(47,'风格u','卖萌',1486794593,'0'),(44,'dergh','refg ',1486453240,'0'),(43,'ss','dd',1486452765,'0'),(42,'s','dd',1486452758,'0'),(41,'123','123',1486452593,'0'),(46,'风格','卖萌',1486794586,'0'),(39,'dfsa','dsfafdsa',1486451951,'0'),(38,'梦魔','追族',1486451066,'0');

/*Table structure for table `ym_link` */

DROP TABLE IF EXISTS `ym_link`;

CREATE TABLE `ym_link` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL COMMENT '链接标题',
  `desc` varchar(255) NOT NULL COMMENT '链接描述',
  `url` varchar(255) NOT NULL COMMENT '连接地址',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `ym_link` */

insert  into `ym_link`(`id`,`title`,`desc`,`url`,`status`) values (12,'人间道道','天上人家','http://baike.baidu.com/link?url=PDAg76TBdMoqaiogJHA_IySy5BkIG7JBPRKkt_gphMKi2NGrOFU2HR2y7DAnFg9oESMc4yYkMQ0K0QnCTbjY7WmercDVWeDH5dBtuX85-kH2wdZ987aeOtNQiY3M9LNZ',0),(2,'百度','百度一下，你就知道','http://www.baidu.com',1),(3,'郭富城','我的热情好像一把火','http://baike.baidu.com/item/%E9%83%AD%E5%AF%8C%E5%9F%8E/149106',1),(5,'梦想合伙人','电影','http://baike.baidu.com/link?url=U0i8_REPnQtUTldVAWkoJYfDtxoX4met9zjJJdEuDr1DBeZrYj1hUp00VCCxhJ4sIQv_p059wkWFxMmq9YYVtNjS9wd-cn54pY9gsRFP31vdHBkd9iMG_DQGZtlhFI7WuM5EvMPC-ClyxK8CxZwPka',1),(6,'周杰伦','hit——hop','https://www.baidu.com/s?ie=UTF-8&wd=%E5%91%A8%E6%9D%B0%E4%BC%A6',0),(7,'马猴烧酒','马猴烧酒','http://baike.baidu.com/link?url=ILKNS9iPHfQoxLuEYVWVBRxVJTpDH0-NRQ_vxKl4jD6kFylcc4w7oofIBM_rlHimlS6qIpOzD-NqVKlvuAW0yVx1o5GLQKg5GTCZeV-SH9BODsh-Wls2-QWErUu7UIsr',0),(8,'东山大法','东山大法','https://www.baidu.com/s?ie=UTF-8&wd=%E4%B8%9C%E5%B1%B1%E5%A5%88%E5%A4%AE',0),(9,'佐仓绫音12','佐仓绫音','http://baike.baidu.com/link?url=93SqiNGzazUh7zzZBYvB41D-awCZ6OzR5coJRK_sf4PmxJekTp6m3hDrN1_QLIN5iWzLGhl3pS-PiHpVMry7nBtmSAWYJcGCjYzUD53WGxmRtS0Ta4nXTAM9v20OpkoK',0),(10,'张定有','http://tieba.baidu.com/f?kw=%D5%C5%B6%A8%D3%D0','http://tieba.baidu.com/f?kw=%D5%C5%B6%A8%D3%D0',1),(11,'风','百度落','http://www.baidu.com',1),(13,'人间道道','天上人家','http://baike.baidu.com/link?url=PDAg76TBdMoqaiogJHA_IySy5BkIG7JBPRKkt_gphMKi2NGrOFU2HR2y7DAnFg9oESMc4yYkMQ0K0QnCTbjY7WmercDVWeDH5dBtuX85-kH2wdZ987aeOtNQiY3M9LNZ',0),(14,'人间道道','天上人家2','http://baike.baidu.com/link?url=PDAg76TBdMoqaiogJHA_IySy5BkIG7JBPRKkt_gphMKi2NGrOFU2HR2y7DAnFg9oESMc4yYkMQ0K0QnCTbjY7WmercDVWeDH5dBtuX85-kH2wdZ987aeOtNQiY3M9LNZ',0),(15,'人间道道','天上人家2','http://baike.baidu.com/link?url=PDAg76TBdMoqaiogJHA_IySy5BkIG7JBPRKkt_gphMKi2NGrOFU2HR2y7DAnFg9oESMc4yYkMQ0K0QnCTbjY7WmercDVWeDH5dBtuX85-kH2wdZ987aeOtNQiY3M9LNZ',0),(17,'hi深','好好','www.kancloud.cn',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
