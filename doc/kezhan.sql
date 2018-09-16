/*
Navicat MySQL Data Transfer

Source Server         : 本地huanghai_db
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : kezhan

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-09-14 21:16:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '主键id',
  `openid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信openid',
  `nick_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员信息表';

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1d1ff34789604862af5a27bfe571bd2e', 'o3Y440m_gX2EhfjkybvHOXlXO2OM', '怒放de生命', 'http://thirdwx.qlogo.cn/mmopen/vicRTfuaGhOtmVwefvRmEkzVL1LBLBNibTibbqC3a8JxEYClBv0N3Q0K6dKnWp52d4aZooLS5s87wRTIAovProtPr5CcfwwtSIu/132');
INSERT INTO `member` VALUES ('3caf2e93403742b3bb387f349a9b8c43', 'o3Y440g3cv2wPUAfjTr3yfDg3V00', '宽度', 'http://thirdwx.qlogo.cn/mmopen/lV0d907m3OXatEicaO78O5Q2UScQ4tias4OM6vXabDFNRSc4GE643htvmj3aqITWrx1rAgXpb3icwLe7KmbGsUMZw/132');
INSERT INTO `member` VALUES ('42b8655db16049129fd4145c2a90558a', 'o3Y440jHVDD9GYdyyeJqlI2Dha-k', '黄海康涛', 'http://thirdwx.qlogo.cn/mmopen/b9BoEF7UiaomvE5zUZScuDjvswkdmhbiamMZnLOcppaZKe4mGWDr1vutSWBv3KMHOusDUY3Rp1SG61ibtxkjx8S0XR2NRRQJhSZ/132');
INSERT INTO `member` VALUES ('4cae9a5f85c64a6a868ee3c9265bf7ad', 'o3Y440vKVaGZP-WiCqPJZTa6Yyeo', '。吃个橘子消消烦', 'http://thirdwx.qlogo.cn/mmopen/lV0d907m3OVoZnn7yg2Ju3icfxQTLY4vwBnz1pyWLwBr3EBCiaXAwWXstjRV02YdxXFD6wm1ibz8LBvt0GF0vkbUg/132');
INSERT INTO `member` VALUES ('6e6a4b8f53c24ec4bcf40e4d1392daa4', 'o3Y440ukXKXulhNcKCDyB8GECwwc', '刘月文', 'http://thirdwx.qlogo.cn/mmopen/OXHribNz3JicAzRFjryy7W1Jv4tBUuCGTqyImNX5juVUDWfRxI1KeGUNUGZPHNCnk3oibpVHrI0WsicsQHXkLty3hObBy7qULzm4/132');
INSERT INTO `member` VALUES ('70a5194e3458461c8e3ef76150f9a49c', 'o3Y440uhbEWdhiOwJjdn-u-g4f8M', '恭喜发财，大吉大利', 'http://thirdwx.qlogo.cn/mmopen/vicRTfuaGhOtmVwefvRmEk0GRSyRXJYEAQRwdKa7AY2oO3PWmuQjJvm4yyK3ybuHFlFmBYg5cuqW4vzibaRqCibdQvxuMKPxDHn/132');
INSERT INTO `member` VALUES ('75a5e5d68a584b989c2e9847c306afd5', 'o3Y440hmf4sAdaqyfBCBCTLqg-F4', '小破孩', 'http://thirdwx.qlogo.cn/mmopen/lV0d907m3OURq8pNeuoyUT6NJlna2buychDZ16PCCK7gZ7xEXGibHGFEnYy5sicQCjxebMG8cpSIQKSkAMQPnan9ouKHSvNwfZ/132');
INSERT INTO `member` VALUES ('75bcd38222284717b0b0f58c0f36d622', 'o3Y440uMi6jCBgGOySrdgTomVHaE', '甜酱L', 'http://thirdwx.qlogo.cn/mmopen/OXHribNz3JicALy2XgTw62pVOOZ6ibWicFRicqBjwDXkKKOk5e7ic8zhQibgaJleYU0LzcGW5nYHPenoU9uy1o3hw5TIfyuqCEaWzKG/132');
INSERT INTO `member` VALUES ('a85c5b4353314aa1b3332da65982ba6d', 'o3Y440vCX_pL_nT1CLYMOTB_46Mo', '。', 'http://thirdwx.qlogo.cn/mmopen/uKSuJEO4lprtGQSTCnQuClicArDGsNlhDiatibUyzvoUWAtiaFYQg42MGtxyWic23c3dqDNcQP65kul7Iu1krYvN9d8hqgQCo7bqic/132');
INSERT INTO `member` VALUES ('ac144f429ec64c4f8d998c464abbb2af', 'o3Y440oQST1nA28VkjFfF51k9oUo', '费费', 'http://thirdwx.qlogo.cn/mmopen/b9BoEF7UiaomvE5zUZScuDpDWFjpibaeaJzR0um6hMCg8MSYKV1h1MKwWggIaZibkuKYGmnZ7ELVYxq6bZajT6tM7rzk7aO8qEl/132');
INSERT INTO `member` VALUES ('b1f0c0b1587e479994f3da2a03b8a0bb', 'o3Y440mDvtybkBOEJpWRE-X4QnbQ', '11', null);
INSERT INTO `member` VALUES ('d4b960d596ef4dea910b7d656a87ad92', 'o3Y440i8HMCs5eQqOkSBghsUO3B8', '乒乓丘', 'http://thirdwx.qlogo.cn/mmopen/lV0d907m3OXFGqfPiaw6UfUB1uK9Tjn30UulicibTIQU08neggd5CEmtMK0T35YQGC8ajuBR7VwDjctdMAnngUOdw/132');
INSERT INTO `member` VALUES ('d7fd4e3d45184a6eae24e661a710d75b', 'o3Y440tPa0_hZ3POiZu2EY1ZqT0o', '赵建伟🌹', 'http://thirdwx.qlogo.cn/mmopen/OXHribNz3JicAzRFjryy7W1LKBF63D1fgmicGZjl4Xn73sfYoJkswg9hOUW2VELib6mMRC1LfaZWoYDohMkkV7WfPYqSUxiaYx9uB/132');
INSERT INTO `member` VALUES ('e08c0fce87574170bfb256c2f5e64695', 'o3Y440mMNbbegEU7HWf1gpjmeeC8', '黄海全日制专升本刘月文', 'http://thirdwx.qlogo.cn/mmopen/b9BoEF7UiaomvE5zUZScuDpo9p6tu0Np6rqQwGricVeEbXyOUo3taDMmgCx2OMHOReLAbrnaa8HT1icgU7BIVHYxarC5OiaLicchV/132');
INSERT INTO `member` VALUES ('e4078173517c4e98b46baa353034caf7', 'o3Y440q1Uk65UwbpkyeBaAlH8KZ8', '睿志', 'http://thirdwx.qlogo.cn/mmopen/eA3V92YlFSHpsUicTbWnib3XYNa5ws1Bnia2UtUqPx1FuRGdwJHV0jVn7gt2KxCibxzgfg9svgibRuCHTKkO0j7FJxsyY0cT9aRSx/132');

-- ----------------------------
-- Table structure for member_tag
-- ----------------------------
DROP TABLE IF EXISTS `member_tag`;
CREATE TABLE `member_tag` (
  `member_id` varchar(32) NOT NULL COMMENT '会员id',
  `tag_id` int(11) NOT NULL COMMENT '标签id',
  PRIMARY KEY (`member_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员标签中间表';

-- ----------------------------
-- Records of member_tag
-- ----------------------------
INSERT INTO `member_tag` VALUES ('1d1ff34789604862af5a27bfe571bd2e', '100');
INSERT INTO `member_tag` VALUES ('1d1ff34789604862af5a27bfe571bd2e', '102');
INSERT INTO `member_tag` VALUES ('1d1ff34789604862af5a27bfe571bd2e', '103');
INSERT INTO `member_tag` VALUES ('70a5194e3458461c8e3ef76150f9a49c', '103');
INSERT INTO `member_tag` VALUES ('e08c0fce87574170bfb256c2f5e64695', '102');
INSERT INTO `member_tag` VALUES ('e4078173517c4e98b46baa353034caf7', '102');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('PlatformScheduler', 'TASK_3', 'DEFAULT', '0 0/30 * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('PlatformScheduler', 'TASK_3', 'DEFAULT', null, 'com.platform.utils.ScheduleJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B455973720025636F6D2E706C6174666F726D2E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000165D7691F6C7874000D3020302F31202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000374000E67657457656978696E546F6B656E70740016616363657373732D746F6B656EE5AE9AE697B6E599A8737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('PlatformScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('PlatformScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('PlatformScheduler', 'SC-2018071409461536929807111', '1536930974662', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('PlatformScheduler', 'TASK_3', 'DEFAULT', 'TASK_3', 'DEFAULT', null, '1536931800000', '1536930000000', '5', 'WAITING', 'CRON', '1536917315000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B455973720025636F6D2E706C6174666F726D2E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000165D7691DB87874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000374000E67657457656978696E546F6B656E70740016616363657373732D746F6B656EE5AE9AE697B6E599A8737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800);

-- ----------------------------
-- Table structure for rest_user
-- ----------------------------
DROP TABLE IF EXISTS `rest_user`;
CREATE TABLE `rest_user` (
  `user_id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_name` varchar(32) NOT NULL COMMENT '用户名',
  `pass_word` varchar(32) DEFAULT NULL COMMENT '密码',
  `gender` tinyint(1) DEFAULT NULL COMMENT '性别',
  `birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `mobile` varchar(32) NOT NULL COMMENT '手机号',
  `weixin_openid` varchar(200) DEFAULT NULL COMMENT 'weixin_openid',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员用户';

-- ----------------------------
-- Records of rest_user
-- ----------------------------

-- ----------------------------
-- Table structure for schedule_job
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint(4) DEFAULT NULL COMMENT '任务状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务';

-- ----------------------------
-- Records of schedule_job
-- ----------------------------
INSERT INTO `schedule_job` VALUES ('3', 'testTask', 'getWeixinToken', null, '0 0/30 * * * ?', '0', 'accesss-token定时器', '2018-09-14 17:28:35');

-- ----------------------------
-- Table structure for schedule_job_log
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job_log`;
CREATE TABLE `schedule_job_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `status` tinyint(4) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='定时任务日志';

-- ----------------------------
-- Records of schedule_job_log
-- ----------------------------
INSERT INTO `schedule_job_log` VALUES ('5', '3', 'testTask', 'getWeixinToken', null, '0', null, '496', '2018-09-14 17:28:41');
INSERT INTO `schedule_job_log` VALUES ('6', '3', 'testTask', 'getWeixinToken', null, '0', null, '267', '2018-09-14 17:29:00');
INSERT INTO `schedule_job_log` VALUES ('7', '3', 'testTask', 'getWeixinToken', null, '0', null, '828', '2018-09-14 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('8', '3', 'testTask', 'getWeixinToken', null, '0', null, '258', '2018-09-14 17:30:44');
INSERT INTO `schedule_job_log` VALUES ('9', '3', 'testTask', 'getWeixinToken', null, '0', null, '8254', '2018-09-14 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('10', '3', 'testTask', 'getWeixinToken', null, '1', 'java.util.concurrent.ExecutionException: com.platform.utils.RRException: 执行定时任务失败', '46', '2018-09-14 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('11', '3', 'testTask', 'getWeixinToken', null, '1', 'java.util.concurrent.ExecutionException: com.platform.utils.RRException: 执行定时任务失败', '470', '2018-09-14 19:46:00');
INSERT INTO `schedule_job_log` VALUES ('12', '3', 'testTask', 'getWeixinToken', null, '0', null, '3116', '2018-09-14 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('13', '3', 'testTask', 'getWeixinToken', null, '0', null, '379', '2018-09-14 20:45:01');
INSERT INTO `schedule_job_log` VALUES ('14', '3', 'testTask', 'getWeixinToken', null, '0', null, '2631', '2018-09-14 21:00:00');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `conf_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '键',
  `conf_value` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '值',
  `status` int(11) DEFAULT NULL COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `conf_key` (`conf_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='系统配置信息表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('2', 'SMS_CONFIG_KEY', '{\"domain\":\"http://web.cr6868.com/asmx/smsservice.aspx?\",\"name\":\"\",\"pwd\":\"\",\"sign\":\"\",\"type\":1}', '0', '短信配置');
INSERT INTO `sys_config` VALUES ('3', 'CLOUD_STORAGE_CONFIG_KEY', '{\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', '0', '云存储配置信息');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `dept_level` int(11) DEFAULT NULL COMMENT '级别',
  `status` int(11) DEFAULT '0' COMMENT '状态  0：无效   1：有效',
  `create_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新者ID',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='部门管理';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('01', null, '大平台', '1', '1', '0', null, '2017-11-21 10:00:19', '1', '2017-12-25 17:26:18');
INSERT INTO `sys_dept` VALUES ('0101', '01', '北京分公司', '1', '2', '0', '1', '2017-11-21 11:05:54', '1', '2017-11-21 15:34:31');
INSERT INTO `sys_dept` VALUES ('0102', '01', '上海分公司', '2', '2', '0', '1', '2017-11-21 11:09:28', '1', '2017-11-21 15:34:38');
INSERT INTO `sys_dept` VALUES ('010201', '0102', 'test', '1', '3', '-1', '1', '2017-12-04 19:38:38', null, null);
INSERT INTO `sys_dept` VALUES ('0103', '01', '广州分公司', '3', '2', '-1', '1', '2017-11-21 11:10:19', '1', '2017-11-21 15:34:46');
INSERT INTO `sys_dept` VALUES ('0104', '01', '333', '2', '2', '-1', '1', '2017-11-28 12:57:08', '1', '2017-11-28 12:57:16');
INSERT INTO `sys_dept` VALUES ('0105', '01', '12', '0', '2', '-1', '1', '2017-12-04 19:42:59', '1', '2017-12-04 19:43:05');
INSERT INTO `sys_dept` VALUES ('0106', '01', '合肥分公司', '3', '2', '0', '1', '2017-12-25 17:26:43', '1', '2017-12-25 17:26:52');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `group_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '码值唯一标识, 例如，SEX、SEX_1、SEX_2',
  `dict_key` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '码值的中文表示， 例如：是、否      、性别',
  `dict_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '码值 的数字表示，例如：1，2，3。。。。。、sex',
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '备注，备用字段',
  `create_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='系统数据字典';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------

-- ----------------------------
-- Table structure for sys_domain
-- ----------------------------
DROP TABLE IF EXISTS `sys_domain`;
CREATE TABLE `sys_domain` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `domain_code` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '域编码',
  `domain_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '域名称',
  `domain_url` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '域地址',
  `domain_status` int(11) DEFAULT NULL COMMENT '状态  0：无效   1：有效',
  `create_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新者ID',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='域对象';

-- ----------------------------
-- Records of sys_domain
-- ----------------------------
INSERT INTO `sys_domain` VALUES ('1r4egj4584gf4a911a66761d6g73918d', 'business', '业务系统', '', '1', '', '2017-11-20 11:34:54', '1', '2017-12-25 19:24:03', '业务系统', 'ivu-icon ivu-icon-android-cart');
INSERT INTO `sys_domain` VALUES ('735e3dd6bb4f4a9191a66761d6g73918', 'platform', '综合管理平台', '', '1', '', '2017-11-20 11:34:54', '1', '2017-11-28 15:41:30', '综合管理平台', 'ivu-icon ivu-icon-android-contacts');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `operation` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户操作',
  `params` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('004c768544424b459ab72225b93f73be', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '127.0.0.1', '2018-07-17 06:19:51');
INSERT INTO `sys_log` VALUES ('0077463a605b42639b0499173077de83', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 09:10:32');
INSERT INTO `sys_log` VALUES ('02f3c68575764bc4b1e0b17ae00fb16a', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 08:13:04');
INSERT INTO `sys_log` VALUES ('03ce74110c704116a3e5d16501d6d0e7', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 06:45:53');
INSERT INTO `sys_log` VALUES ('05a0ccb4ea434a8c8fc1b50a2375002d', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 19:55:11');
INSERT INTO `sys_log` VALUES ('08f7afc13706452bb336d7ed93225079', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 00:26:47');
INSERT INTO `sys_log` VALUES ('0b311c28c8544be3819b088b85752b1b', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 09:10:38');
INSERT INTO `sys_log` VALUES ('0b43f88dd7cf400685b1e8647cb0c7fd', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 12:01:26');
INSERT INTO `sys_log` VALUES ('0b7fd63b45ad404cbaca909545f8b74d', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-17 07:36:13');
INSERT INTO `sys_log` VALUES ('0b98df9a452c4b3bbcd3a0c49d4ff1d0', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 07:17:59');
INSERT INTO `sys_log` VALUES ('1315cba732b94a22abbd6f3b3e166cec', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 07:29:16');
INSERT INTO `sys_log` VALUES ('15601fd6e1d64300b177caa35dc7d04a', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 14:39:51');
INSERT INTO `sys_log` VALUES ('15d72bad42214e8885551c97edc2afff', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 06:49:17');
INSERT INTO `sys_log` VALUES ('16316968192447c5b1d30cfaef061a34', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 13:41:01');
INSERT INTO `sys_log` VALUES ('17af03181a634ee4acde5fd5464cf919', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 09:55:41');
INSERT INTO `sys_log` VALUES ('19b6c63b680b48bfa6adb888b6f839f2', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-13 14:46:06');
INSERT INTO `sys_log` VALUES ('19fea9fe658e4c4780fc49257d469003', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-17 08:43:45');
INSERT INTO `sys_log` VALUES ('1a0320badc77411680d5494cba38d395', 'admin', 'com.platform.controller.SysMenuController.update()', '修改菜单', '{\"checked\":false,\"createTime\":1511152719000,\"createUser\":\"1\",\"disableCheckbox\":false,\"disabled\":false,\"domainId\":\"735e3dd6bb4f4a9191a66761d6g73918\",\"expand\":false,\"leaf\":false,\"menuId\":\"0602\",\"name\":\"新增\",\"orderNum\":2,\"parentId\":\"06\",\"parentName\":\"标签管理\",\"perms\":\"sys:tag:save\",\"selected\":false,\"status\":1,\"type\":2,\"updateTime\":1511152721000}', '0:0:0:0:0:0:0:1', '2018-09-14 07:53:23');
INSERT INTO `sys_log` VALUES ('1d3b7872bf3343378ef5c618fbeb877a', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 15:58:40');
INSERT INTO `sys_log` VALUES ('2328ca7234c34ca4b8c3a41f7b0ab1ca', 'admin', 'com.platform.controller.ScheduleJobController.run()', '立即执行任务', '[3]', '0:0:0:0:0:0:0:1', '2018-09-14 17:30:44');
INSERT INTO `sys_log` VALUES ('240f9fea610b4bbe8d55dd1165c5b82c', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 19:54:40');
INSERT INTO `sys_log` VALUES ('2429b898b5564995a9ea2953f5f2cb33', 'admin', 'com.platform.controller.SysMenuController.save()', '保存菜单', '{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"domainId\":\"735e3dd6bb4f4a9191a66761d6g73918\",\"expand\":false,\"icon\":\"fa fa-sitemap\",\"leaf\":false,\"name\":\"标签管理\",\"orderNum\":0,\"parentId\":\"0\",\"parentName\":\"一级菜单\",\"perms\":\"\",\"selected\":false,\"status\":1,\"type\":1,\"url\":\"sys/tag.html\"}', '0:0:0:0:0:0:0:1', '2018-09-14 07:07:54');
INSERT INTO `sys_log` VALUES ('2bfbf43f637d45e6a6775371178ae4e3', 'admin', 'com.platform.controller.ScheduleJobController.run()', '立即执行任务', '[3]', '0:0:0:0:0:0:0:1', '2018-09-14 17:28:41');
INSERT INTO `sys_log` VALUES ('2c576eb67ae2481ba1effcac61c9f65f', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 05:51:45');
INSERT INTO `sys_log` VALUES ('2d7653be0a714ec28c5e000633a94fc2', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-17 10:38:03');
INSERT INTO `sys_log` VALUES ('2dbc02a6c19940c0b66a00e9af6f457e', 'admin', 'com.platform.controller.SysMenuController.update()', '修改菜单', '{\"checked\":false,\"createTime\":1536856764000,\"createUser\":\"1\",\"disableCheckbox\":false,\"disabled\":false,\"domainId\":\"735e3dd6bb4f4a9191a66761d6g73918\",\"expand\":false,\"icon\":\"fa fa-cog\",\"leaf\":false,\"menuId\":\"05\",\"name\":\"公众号\",\"orderNum\":0,\"parentId\":\"0\",\"parentName\":\"一级菜单\",\"selected\":false,\"status\":1,\"type\":1,\"updateTime\":1536875732000,\"updateUser\":\"1\",\"url\":\"sys/wechatsetting.html\"}', '0:0:0:0:0:0:0:1', '2018-09-14 07:04:51');
INSERT INTO `sys_log` VALUES ('2decc9c598b84df480d1e059234ee31e', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 09:29:44');
INSERT INTO `sys_log` VALUES ('30d070a48eb049b69d6c8289d9c6a85c', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-18 08:16:33');
INSERT INTO `sys_log` VALUES ('31bf1eb42cba43a5a530f5bc676ee0bf', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 20:02:52');
INSERT INTO `sys_log` VALUES ('3270091713624472a934a97d27e93191', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 10:45:34');
INSERT INTO `sys_log` VALUES ('334ade2b3fc2464a8289fa4ae0bd2e0f', 'admin', 'com.platform.controller.ScheduleJobController.delete()', '删除定时任务', '[2,1]', '0:0:0:0:0:0:0:1', '2018-09-14 17:51:43');
INSERT INTO `sys_log` VALUES ('34c8f4a060e84a07a380dcaf087efc62', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-16 21:39:14');
INSERT INTO `sys_log` VALUES ('357b6c7f36184b139c30f049b954f711', 'admin', 'com.platform.controller.SysMenuController.update()', '修改菜单', '{\"checked\":false,\"createTime\":1536856764000,\"createUser\":\"1\",\"disableCheckbox\":false,\"disabled\":false,\"domainId\":\"735e3dd6bb4f4a9191a66761d6g73918\",\"expand\":false,\"icon\":\"fa fa-cog\",\"leaf\":false,\"menuId\":\"05\",\"name\":\"公众号管理\",\"orderNum\":0,\"parentId\":\"0\",\"parentName\":\"一级菜单\",\"selected\":false,\"status\":1,\"type\":1,\"updateTime\":1536879891000,\"updateUser\":\"1\",\"url\":\"sys/wechatsetting.html\"}', '0:0:0:0:0:0:0:1', '2018-09-14 07:05:25');
INSERT INTO `sys_log` VALUES ('35cecd5ab3094f8aa8fa3826cd2209ba', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 09:39:42');
INSERT INTO `sys_log` VALUES ('364e43da43a6457692cbc754fb0ea97e', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 07:31:03');
INSERT INTO `sys_log` VALUES ('38e7223b1ad94a269f5a427f287bc53d', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 06:55:21');
INSERT INTO `sys_log` VALUES ('3aaedbfedbda43df9cde3ceaf6bacc2f', 'admin', 'com.platform.controller.SysMenuController.update()', '修改菜单', '{\"checked\":false,\"createTime\":1511152719000,\"createUser\":\"1\",\"disableCheckbox\":false,\"disabled\":false,\"domainId\":\"735e3dd6bb4f4a9191a66761d6g73918\",\"expand\":false,\"leaf\":false,\"menuId\":\"0702\",\"name\":\"新增\",\"orderNum\":2,\"parentId\":\"07\",\"parentName\":\"用户管理\",\"perms\":\"sys:member:save\",\"selected\":false,\"status\":1,\"type\":2,\"updateTime\":1511152721000}', '0:0:0:0:0:0:0:1', '2018-09-14 07:53:12');
INSERT INTO `sys_log` VALUES ('3e720618a40d4b9c8c01ba56622971a8', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 05:35:14');
INSERT INTO `sys_log` VALUES ('3e9a1a99241946aab6ffb8273633663a', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-17 10:43:35');
INSERT INTO `sys_log` VALUES ('3f8b342aa26440ec9d2c13e8e0a71a5c', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 14:04:39');
INSERT INTO `sys_log` VALUES ('446e6fc34abd4a10a0023f8d22dee276', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 09:57:35');
INSERT INTO `sys_log` VALUES ('48d0edbf9eb948bcbe14ab2c17bdf29c', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 11:20:21');
INSERT INTO `sys_log` VALUES ('4b3c52e076464d98ac48b1d20b7d0046', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-17 08:01:19');
INSERT INTO `sys_log` VALUES ('4c0f3368654e4968b14d3858653ae16a', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 05:48:36');
INSERT INTO `sys_log` VALUES ('4d424fcab0d54cc7aeff5921664f4cd3', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 07:05:38');
INSERT INTO `sys_log` VALUES ('4d4fd07cc21b46a3a60d09ed1755cd78', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 00:26:39');
INSERT INTO `sys_log` VALUES ('5589e3d98b0346a3acfccd71ae599354', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 14:53:53');
INSERT INTO `sys_log` VALUES ('5b8ff0082424435fb157256673d0f089', 'admin', 'com.platform.controller.SysMenuController.save()', '保存菜单', '{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"domainId\":\"735e3dd6bb4f4a9191a66761d6g73918\",\"expand\":false,\"icon\":\"fa fa-cog\",\"leaf\":false,\"name\":\"公众号设置\",\"orderNum\":0,\"parentId\":\"0\",\"parentName\":\"一级菜单\",\"selected\":false,\"status\":1,\"type\":0}', '0:0:0:0:0:0:0:1', '2018-09-14 00:39:24');
INSERT INTO `sys_log` VALUES ('605fd2f942564995aab4c11b268525b2', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 17:50:29');
INSERT INTO `sys_log` VALUES ('6767253024514bf381c26e2d372aa456', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-17 10:41:20');
INSERT INTO `sys_log` VALUES ('693cc8a49fba44ee868c3fe73f2d6d26', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 19:54:59');
INSERT INTO `sys_log` VALUES ('6ac8830135394b5398042cd93a3b0699', 'admin', 'com.platform.controller.SysMenuController.update()', '修改菜单', '{\"checked\":false,\"createTime\":1511152719000,\"createUser\":\"1\",\"disableCheckbox\":false,\"disabled\":false,\"domainId\":\"735e3dd6bb4f4a9191a66761d6g73918\",\"expand\":false,\"leaf\":false,\"menuId\":\"0502\",\"name\":\"新增\",\"orderNum\":2,\"parentId\":\"05\",\"parentName\":\"公众号管理\",\"perms\":\"sys:wechatsetting:save\",\"selected\":false,\"status\":1,\"type\":2,\"updateTime\":1511152721000}', '0:0:0:0:0:0:0:1', '2018-09-14 07:53:32');
INSERT INTO `sys_log` VALUES ('6e591d4ced02445ebc9df34c918e4842', 'admin', 'com.platform.controller.SysRoleController.update()', '修改角色', '{\"createTime\":1511241575000,\"createUser\":\"1\",\"deptId\":\"01\",\"deptIdList\":[\"01\",\"0101\",\"0102\",\"0106\"],\"deptName\":\"大平台\",\"menuIdList\":[\"05\",\"0501\",\"0502\",\"0503\",\"0504\",\"01\",\"0101\",\"010101\",\"010102\",\"010103\",\"010104\",\"0102\",\"010201\",\"010202\",\"010203\",\"010204\",\"0103\",\"010301\",\"010302\",\"010303\",\"010304\",\"0104\",\"010401\",\"010402\",\"010403\",\"010404\",\"0105\",\"010501\",\"010502\",\"010503\",\"010504\",\"0106\",\"0107\",\"010701\",\"010702\",\"010703\",\"010704\",\"0108\",\"010801\",\"010802\",\"010803\",\"010804\",\"0109\",\"010901\",\"02\",\"0201\",\"0202\",\"03\",\"0301\",\"030101\",\"030102\",\"030103\",\"030104\",\"030105\",\"030106\",\"030107\",\"0302\",\"04\",\"0401\",\"040101\"],\"remark\":\"superadmin\",\"roleId\":\"1acae81674cf4525a2b2eec2e065965c\",\"roleName\":\"superadmin\",\"updateTime\":1536874562000,\"updateUser\":\"1\"}', '0:0:0:0:0:0:0:1', '2018-09-14 06:50:20');
INSERT INTO `sys_log` VALUES ('75b3a8dd5f4543fdaebce6e3a0dc59bf', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 11:24:48');
INSERT INTO `sys_log` VALUES ('77325f99ac6d41d8973a4ad3b0ce58d7', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 17:52:28');
INSERT INTO `sys_log` VALUES ('79204b90f4494071960f41a0f2aaed3c', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 00:39:45');
INSERT INTO `sys_log` VALUES ('7ac67de3e73f49dcabd2ca840296fa54', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-17 07:50:08');
INSERT INTO `sys_log` VALUES ('7c6e694e5aa249108b1a1feddc6bcbff', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 17:56:29');
INSERT INTO `sys_log` VALUES ('80ad6e425d4c463bbce52fee24b53e39', 'admin', 'com.platform.controller.SysRoleController.update()', '修改角色', '{\"createTime\":1511241575000,\"createUser\":\"1\",\"deptId\":\"01\",\"deptIdList\":[\"01\",\"0101\",\"0102\",\"0106\"],\"deptName\":\"大平台\",\"menuIdList\":[\"05\",\"0501\",\"0502\",\"0503\",\"0504\",\"01\",\"0101\",\"010101\",\"010102\",\"010103\",\"010104\",\"0102\",\"010201\",\"010202\",\"010203\",\"010204\",\"0103\",\"010301\",\"010302\",\"010303\",\"010304\",\"0104\",\"010401\",\"010402\",\"010403\",\"010404\",\"0105\",\"010501\",\"010502\",\"010503\",\"010504\",\"0106\",\"0107\",\"010701\",\"010702\",\"010703\",\"010704\",\"0108\",\"010801\",\"010802\",\"010803\",\"010804\",\"0109\",\"010901\",\"02\",\"0201\",\"0202\",\"03\",\"0301\",\"030101\",\"030102\",\"030103\",\"030104\",\"030105\",\"030106\",\"030107\",\"0302\",\"04\",\"0401\",\"040101\"],\"remark\":\"superadmin\",\"roleId\":\"1acae81674cf4525a2b2eec2e065965c\",\"roleName\":\"superadmin\",\"updateTime\":1514194040000,\"updateUser\":\"1\"}', '0:0:0:0:0:0:0:1', '2018-09-14 05:35:00');
INSERT INTO `sys_log` VALUES ('8149855f66744cd7977c564e44f0882d', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 06:52:06');
INSERT INTO `sys_log` VALUES ('85c7bd9d9df046eca54b7bea9733c023', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 06:52:11');
INSERT INTO `sys_log` VALUES ('862178426efe4c3f88fbba4deba88883', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-17 10:41:13');
INSERT INTO `sys_log` VALUES ('8b4a252848c84bdca71fd237d254699a', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 07:33:01');
INSERT INTO `sys_log` VALUES ('8b4b1ff0696a46899a9ef16e254b26b1', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 20:44:31');
INSERT INTO `sys_log` VALUES ('8d2bc01b575343c99f4c3130d0aed4c0', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 17:44:32');
INSERT INTO `sys_log` VALUES ('8d485cbfebd34c4990d68eb06b800d5a', 'admin', 'com.platform.controller.ScheduleJobController.update()', '修改定时任务', '{\"beanName\":\"testTask\",\"createTime\":1536917315000,\"cronExpression\":\"0 0/30 * * * ?\",\"jobId\":3,\"methodName\":\"getWeixinToken\",\"remark\":\"accesss-token定时器\",\"status\":0}', '0:0:0:0:0:0:0:1', '2018-09-14 17:30:36');
INSERT INTO `sys_log` VALUES ('8da5b6ce8b494ef5a06c350693d7c4cc', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 05:25:56');
INSERT INTO `sys_log` VALUES ('8f39d65dc5634a168a1fb802f6fbbff1', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 14:43:22');
INSERT INTO `sys_log` VALUES ('8fb3b2066b154807a404dcf59d3a282d', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 09:10:45');
INSERT INTO `sys_log` VALUES ('95ccae1122484068a9a888999c45eb8d', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 14:38:07');
INSERT INTO `sys_log` VALUES ('9ac10638d72343b3be7829d49b0326eb', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 05:28:00');
INSERT INTO `sys_log` VALUES ('a0d8a5caa9e3462b9130a8b27990b99f', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 11:35:06');
INSERT INTO `sys_log` VALUES ('a13710f4b7624fd0af4de2d573a40e2a', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 09:32:45');
INSERT INTO `sys_log` VALUES ('a31b81a810254d2183062842c4e77dfb', 'admin', 'com.platform.controller.SysRoleController.update()', '修改角色', '{\"createTime\":1511241575000,\"createUser\":\"1\",\"deptId\":\"01\",\"deptIdList\":[\"01\",\"0101\",\"0102\",\"0106\"],\"deptName\":\"大平台\",\"menuIdList\":[\"05\",\"0501\",\"0502\",\"0503\",\"0504\",\"01\",\"0101\",\"010101\",\"010102\",\"010103\",\"010104\",\"0102\",\"010201\",\"010202\",\"010203\",\"010204\",\"0103\",\"010301\",\"010302\",\"010303\",\"010304\",\"0104\",\"010401\",\"010402\",\"010403\",\"010404\",\"0105\",\"010501\",\"010502\",\"010503\",\"010504\",\"0106\",\"0107\",\"010701\",\"010702\",\"010703\",\"010704\",\"0108\",\"010801\",\"010802\",\"010803\",\"010804\",\"0109\",\"010901\",\"02\",\"0201\",\"0202\",\"03\",\"0301\",\"030101\",\"030102\",\"030103\",\"030104\",\"030105\",\"030106\",\"030107\",\"0302\",\"04\",\"0401\",\"040101\"],\"remark\":\"superadmin\",\"roleId\":\"1acae81674cf4525a2b2eec2e065965c\",\"roleName\":\"superadmin\",\"updateTime\":1536874500000,\"updateUser\":\"1\"}', '0:0:0:0:0:0:0:1', '2018-09-14 05:36:02');
INSERT INTO `sys_log` VALUES ('a451eccc83e84eae8e05cd5303e194e7', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 05:13:37');
INSERT INTO `sys_log` VALUES ('a5602872dd5148edab4df211be501b8b', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 14:55:30');
INSERT INTO `sys_log` VALUES ('a65e870926614e7a955c18a510c57c66', 'admin', 'com.platform.controller.ScheduleJobController.save()', '保存定时任务', '{\"beanName\":\"testTask\",\"cronExpression\":\"0 0/1 * * * ?\",\"methodName\":\"getWeixinToken\",\"remark\":\"accesss-token定时器\"}', '0:0:0:0:0:0:0:1', '2018-09-14 17:28:35');
INSERT INTO `sys_log` VALUES ('a80a29b9f17245b49c677bce1628e7bd', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 05:32:54');
INSERT INTO `sys_log` VALUES ('ac111d7f1db743c3a6a17b2f4416b794', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 11:51:42');
INSERT INTO `sys_log` VALUES ('b75a15fcf1594722a97260033fac7fb1', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 06:50:37');
INSERT INTO `sys_log` VALUES ('b9d4c6efb8464cd2afde40aea57e8194', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 05:48:31');
INSERT INTO `sys_log` VALUES ('ba5952d4ac844846bd8dd10700da4dff', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-17 10:59:33');
INSERT INTO `sys_log` VALUES ('bb13207c2acf40f7bfe169f32d56ec9d', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 05:30:52');
INSERT INTO `sys_log` VALUES ('bd934d3dd73246efac18b8273c1a29a3', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 05:55:44');
INSERT INTO `sys_log` VALUES ('bf6e20c3f048449d8a24037463a8caf0', 'admin', 'com.platform.controller.SysMenuController.update()', '修改菜单', '{\"checked\":false,\"createTime\":1536856764000,\"createUser\":\"1\",\"disableCheckbox\":false,\"disabled\":false,\"domainId\":\"735e3dd6bb4f4a9191a66761d6g73918\",\"expand\":false,\"icon\":\"fa fa-cog\",\"leaf\":false,\"menuId\":\"05\",\"name\":\"标签管理\",\"orderNum\":0,\"parentId\":\"0\",\"parentName\":\"一级菜单\",\"selected\":false,\"status\":1,\"type\":1,\"updateTime\":1536874232000,\"updateUser\":\"1\",\"url\":\"sys/wechatsetting.html\"}', '0:0:0:0:0:0:0:1', '2018-09-14 05:55:32');
INSERT INTO `sys_log` VALUES ('bfa5fe4d2cbd41d6b615f38543829cdf', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-18 08:14:22');
INSERT INTO `sys_log` VALUES ('c01999a86d6f42248b603238bb410862', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 05:19:18');
INSERT INTO `sys_log` VALUES ('c02611148c014ee0b77aac9e1db3a72a', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 00:32:24');
INSERT INTO `sys_log` VALUES ('c1aed3fce512441c9e9fc538d4e28a47', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 19:54:47');
INSERT INTO `sys_log` VALUES ('c31f470a6e87467294ab94ec8b3b00b8', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 05:45:59');
INSERT INTO `sys_log` VALUES ('c3442250cc01499a932a36014bae9c94', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 11:02:39');
INSERT INTO `sys_log` VALUES ('c382cf2cb5dc491a86166da6c84fe3f6', 'admin', 'com.platform.controller.SysMenuController.save()', '保存菜单', '{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"domainId\":\"735e3dd6bb4f4a9191a66761d6g73918\",\"expand\":false,\"icon\":\"fa fa-user\",\"leaf\":false,\"name\":\"用户管理\",\"orderNum\":0,\"parentId\":\"0\",\"parentName\":\"一级菜单\",\"selected\":false,\"status\":1,\"type\":1,\"url\":\"sys/member.html\"}', '0:0:0:0:0:0:0:1', '2018-09-14 07:51:22');
INSERT INTO `sys_log` VALUES ('c4443313d5ae477c9787adf8860ff7d3', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 00:42:30');
INSERT INTO `sys_log` VALUES ('c84f396235ed400ca9ad84a974bfd2fe', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 11:26:26');
INSERT INTO `sys_log` VALUES ('c8f746a135b6472a9167610cea060bab', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-17 10:40:13');
INSERT INTO `sys_log` VALUES ('cbc4df86f3ee4bf2af120c862cc3b475', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-17 06:27:54');
INSERT INTO `sys_log` VALUES ('ccc9528f1ac94df28129284465918cf8', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 19:44:30');
INSERT INTO `sys_log` VALUES ('d058c3212fbe4b22aa531360e5a4bda5', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 17:26:53');
INSERT INTO `sys_log` VALUES ('d137946ee8ae4323876a47df8128713d', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-17 06:20:12');
INSERT INTO `sys_log` VALUES ('dbfa939227054ec39a4195e016bc6a29', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 14:00:15');
INSERT INTO `sys_log` VALUES ('ddf939e810364239baf0a0ee4e05fb57', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 16:24:06');
INSERT INTO `sys_log` VALUES ('e137d07308da4167a0bdff787707634c', 'admin', 'com.platform.controller.SysMenuController.update()', '修改菜单', '{\"checked\":false,\"createTime\":1511152680000,\"createUser\":\"1\",\"disableCheckbox\":false,\"disabled\":false,\"domainId\":\"735e3dd6bb4f4a9191a66761d6g73918\",\"expand\":false,\"leaf\":false,\"menuId\":\"0501\",\"name\":\"查看\",\"orderNum\":1,\"parentId\":\"05\",\"parentName\":\"公众号设置\",\"perms\":\"sys:wechatsetting:list,sys:wechatsetting:info\",\"selected\":false,\"status\":1,\"type\":2,\"updateTime\":1511152681000}', '0:0:0:0:0:0:0:1', '2018-09-14 05:50:11');
INSERT INTO `sys_log` VALUES ('e310aae364bc48eaac4abf1e6a000bb2', 'admin', 'com.platform.controller.ScheduleJobController.run()', '立即执行任务', '[3]', '0:0:0:0:0:0:0:1', '2018-09-14 19:45:59');
INSERT INTO `sys_log` VALUES ('e499a49916cb41999038a748c78a5f7b', 'admin', 'com.platform.controller.SysMenuController.update()', '修改菜单', '{\"checked\":false,\"createTime\":1536856764000,\"createUser\":\"1\",\"disableCheckbox\":false,\"disabled\":false,\"domainId\":\"735e3dd6bb4f4a9191a66761d6g73918\",\"expand\":false,\"icon\":\"fa fa-cog\",\"leaf\":false,\"menuId\":\"05\",\"name\":\"公众号设置\",\"orderNum\":0,\"parentId\":\"0\",\"parentName\":\"一级菜单\",\"selected\":false,\"status\":1,\"type\":1,\"updateTime\":1536873616000,\"updateUser\":\"1\",\"url\":\"sys/wechatsetting.html\"}', '0:0:0:0:0:0:0:1', '2018-09-14 05:30:32');
INSERT INTO `sys_log` VALUES ('e7a35e5c0c634ebe82ee768bc10bfbdd', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 06:51:23');
INSERT INTO `sys_log` VALUES ('ea530d93caa641dbbd584ad1a503ea40', 'admin', 'com.platform.controller.SysMenuController.update()', '修改菜单', '{\"checked\":false,\"createTime\":1536856764000,\"createUser\":\"1\",\"disableCheckbox\":false,\"disabled\":false,\"domainId\":\"735e3dd6bb4f4a9191a66761d6g73918\",\"expand\":false,\"icon\":\"fa fa-cog\",\"leaf\":false,\"menuId\":\"05\",\"name\":\"公众号设置\",\"orderNum\":0,\"parentId\":\"0\",\"parentName\":\"一级菜单\",\"selected\":false,\"status\":1,\"type\":1,\"url\":\"sys/wechatsetting.html\"}', '0:0:0:0:0:0:0:1', '2018-09-14 05:20:16');
INSERT INTO `sys_log` VALUES ('ec63c2e6263549dbad967b11aa7cb60e', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-17 10:45:38');
INSERT INTO `sys_log` VALUES ('ed9b36f4183d4db2a12070bfd5b9a6b9', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 11:17:57');
INSERT INTO `sys_log` VALUES ('f0a36e96482d416da3a4118894c1ecf3', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-17 06:04:57');
INSERT INTO `sys_log` VALUES ('f117a27b9c9d4501a6047c019adfba3d', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 08:54:03');
INSERT INTO `sys_log` VALUES ('f264a0836f064011b6942d3a6a335f2c', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-17 10:43:41');
INSERT INTO `sys_log` VALUES ('f2d34f3de20b4aeabefa7164f4019ddb', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 07:57:33');
INSERT INTO `sys_log` VALUES ('f3a81b0f079943d9804745e7a2ef1639', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 07:05:08');
INSERT INTO `sys_log` VALUES ('f3de7f9a1c8341aea7a1b862b502d8d5', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 07:14:28');
INSERT INTO `sys_log` VALUES ('fe16d7ca79364eb1ae1d4498f7eaf26a', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-09-14 14:50:19');
INSERT INTO `sys_log` VALUES ('fe507d01c457498c9597029b8cdc551d', '\"admin\"', 'com.platform.controller.SysLoginController.login()', '登录', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-07-17 08:25:53');
INSERT INTO `sys_log` VALUES ('fea3b4a220fb419d9ebfd57cae473954', 'admin', 'com.platform.controller.ScheduleJobController.run()', '立即执行任务', '[3]', '0:0:0:0:0:0:0:1', '2018-09-14 20:45:01');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `domain_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属域',
  `status` int(11) DEFAULT NULL COMMENT '状态   0：无效   1：有效',
  `create_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新者ID',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('03', '0', '任务管理', null, null, '0', 'fa fa-fire', '3', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:27:15', null, '2017-11-20 12:27:19');
INSERT INTO `sys_menu` VALUES ('0301', '03', '定时任务', 'sys/schedule.html', null, '1', 'fa fa-tasks', '1', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:28:45', null, '2017-11-20 12:28:47');
INSERT INTO `sys_menu` VALUES ('030101', '0301', '查看', null, 'sys:schedule:list,sys:schedule:info', '2', null, '1', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:47:45', null, '2017-11-20 12:47:48');
INSERT INTO `sys_menu` VALUES ('030102', '0301', '新增', null, 'sys:schedule:save', '2', null, '2', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:47:45', null, '2017-11-20 12:47:48');
INSERT INTO `sys_menu` VALUES ('030103', '0301', '修改', null, 'sys:schedule:update', '2', null, '3', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:47:45', null, '2017-11-20 12:47:48');
INSERT INTO `sys_menu` VALUES ('030104', '0301', '删除', null, 'sys:schedule:delete', '2', null, '4', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:47:45', null, '2017-11-20 12:47:48');
INSERT INTO `sys_menu` VALUES ('030105', '0301', '暂停', null, 'sys:schedule:pause', '2', null, '5', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:47:45', null, '2017-11-20 12:47:48');
INSERT INTO `sys_menu` VALUES ('030106', '0301', '恢复', null, 'sys:schedule:resume', '2', null, '6', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:47:45', null, '2017-11-20 12:47:48');
INSERT INTO `sys_menu` VALUES ('030107', '0301', '立即执行', null, 'sys:schedule:run', '2', null, '7', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:47:45', null, '2017-11-20 12:47:48');
INSERT INTO `sys_menu` VALUES ('0302', '03', '定时任务日志', 'sys/schedule_log.html', 'sys:schedule:log', '1', 'fa fa-code', '2', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:31:16', '1', '2017-11-21 15:35:45');
INSERT INTO `sys_menu` VALUES ('05', '0', '公众号管理', 'sys/wechatsetting.html', null, '1', 'fa fa-cog', '0', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2018-09-14 00:39:24', '1', '2018-09-14 07:05:25');
INSERT INTO `sys_menu` VALUES ('0501', '05', '查看', null, 'sys:wechatsetting:list,sys:wechatsetting:info', '2', null, '1', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:38:00', '1', '2018-09-14 05:50:11');
INSERT INTO `sys_menu` VALUES ('0502', '05', '新增', null, 'sys:wechatsetting:save', '2', null, '2', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:38:39', '1', '2018-09-14 07:53:32');
INSERT INTO `sys_menu` VALUES ('0503', '05', '修改', null, 'sys:wechatsetting:update', '2', null, '3', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:39:26', null, '2017-11-20 12:39:31');
INSERT INTO `sys_menu` VALUES ('0504', '05', '刪除', null, 'sys:wechatsetting:delete', '2', null, '4', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:39:27', null, '2017-11-20 12:39:31');
INSERT INTO `sys_menu` VALUES ('06', '0', '标签管理', 'sys/tag.html', '', '1', 'fa fa-sitemap', '0', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2018-09-14 07:07:54', null, null);
INSERT INTO `sys_menu` VALUES ('0601', '06', '查看', null, 'sys:tag:list,sys:tag:info', '2', null, '1', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:38:00', null, '2017-11-20 12:38:01');
INSERT INTO `sys_menu` VALUES ('0602', '06', '新增', null, 'sys:tag:save', '2', null, '2', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:38:39', '1', '2018-09-14 07:53:23');
INSERT INTO `sys_menu` VALUES ('0603', '06', '修改', null, 'sys:tag:update', '2', null, '3', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:39:26', null, '2017-11-20 12:39:31');
INSERT INTO `sys_menu` VALUES ('0604', '06', '刪除', null, 'sys:tag:delete', '2', null, '4', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:39:27', null, '2017-11-20 12:39:31');
INSERT INTO `sys_menu` VALUES ('07', '0', '用户管理', 'sys/member.html', null, '1', 'fa fa-user', '0', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2018-09-14 07:51:22', null, null);
INSERT INTO `sys_menu` VALUES ('0701', '07', '查看', null, 'sys:member:list,sys:member:info', '2', null, '1', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:38:00', null, '2017-11-20 12:38:01');
INSERT INTO `sys_menu` VALUES ('0702', '07', '新增', null, 'sys:member:save', '2', null, '2', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:38:39', '1', '2018-09-14 07:53:12');
INSERT INTO `sys_menu` VALUES ('0703', '07', '修改', null, 'sys:member:update', '2', null, '3', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:39:26', null, '2017-11-20 12:39:31');
INSERT INTO `sys_menu` VALUES ('0704', '07', '刪除', null, 'sys:member:delete', '2', null, '4', '735e3dd6bb4f4a9191a66761d6g73918', '1', '1', '2017-11-20 12:39:27', null, '2017-11-20 12:39:31');

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'URL地址',
  `create_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='文件上传';

-- ----------------------------
-- Records of sys_oss
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `role_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色名称',
  `dept_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属部门ID',
  `remark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `create_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新者ID',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1acae81674cf4525a2b2eec2e065965c', 'superadmin', '01', 'superadmin', '1', '2017-11-21 13:19:35', '1', '2018-09-14 06:50:20');
INSERT INTO `sys_role` VALUES ('6a9f76de20a944059dca5e2ae90d780d', '测试用户', '0106', '菜单权限测试', '1', '2017-12-25 17:28:44', null, null);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色ID',
  `dept_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='角色与部门对应关系';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('5b8ee930e95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '0106');
INSERT INTO `sys_role_dept` VALUES ('67154334b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '01');
INSERT INTO `sys_role_dept` VALUES ('671544a6b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0101');
INSERT INTO `sys_role_dept` VALUES ('671544eab7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0102');
INSERT INTO `sys_role_dept` VALUES ('6715451db7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0106');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色ID',
  `menu_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('5b8c6004e95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '01');
INSERT INTO `sys_role_menu` VALUES ('5b8c6398e95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '0109');
INSERT INTO `sys_role_menu` VALUES ('5b8c6445e95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '010901');
INSERT INTO `sys_role_menu` VALUES ('5b8c64b8e95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '02');
INSERT INTO `sys_role_menu` VALUES ('5b8c6522e95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '0201');
INSERT INTO `sys_role_menu` VALUES ('5b8c6589e95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '0202');
INSERT INTO `sys_role_menu` VALUES ('5b8c65dce95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '03');
INSERT INTO `sys_role_menu` VALUES ('5b8c6627e95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '0301');
INSERT INTO `sys_role_menu` VALUES ('5b8c6676e95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '030101');
INSERT INTO `sys_role_menu` VALUES ('5b8c66bde95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '030102');
INSERT INTO `sys_role_menu` VALUES ('5b8c66fce95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '030103');
INSERT INTO `sys_role_menu` VALUES ('5b8c673fe95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '030104');
INSERT INTO `sys_role_menu` VALUES ('5b8c6786e95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '030105');
INSERT INTO `sys_role_menu` VALUES ('5b8c67cde95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '030106');
INSERT INTO `sys_role_menu` VALUES ('5b8c6810e95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '030107');
INSERT INTO `sys_role_menu` VALUES ('5b8c685be95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '0302');
INSERT INTO `sys_role_menu` VALUES ('5b8c689fe95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '04');
INSERT INTO `sys_role_menu` VALUES ('5b8c68eae95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '0401');
INSERT INTO `sys_role_menu` VALUES ('5b8c6931e95611e7bdd354ee75866478', '6a9f76de20a944059dca5e2ae90d780d', '040101');
INSERT INTO `sys_role_menu` VALUES ('6714a8abb7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '05');
INSERT INTO `sys_role_menu` VALUES ('6714aac2b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0501');
INSERT INTO `sys_role_menu` VALUES ('6714ab12b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0502');
INSERT INTO `sys_role_menu` VALUES ('6714ab50b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0503');
INSERT INTO `sys_role_menu` VALUES ('6714ab84b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0504');
INSERT INTO `sys_role_menu` VALUES ('6714abb1b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '01');
INSERT INTO `sys_role_menu` VALUES ('6714abdfb7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0101');
INSERT INTO `sys_role_menu` VALUES ('6714ac06b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010101');
INSERT INTO `sys_role_menu` VALUES ('6714ac2eb7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010102');
INSERT INTO `sys_role_menu` VALUES ('6714ac50b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010103');
INSERT INTO `sys_role_menu` VALUES ('6714ac7eb7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010104');
INSERT INTO `sys_role_menu` VALUES ('6714acceb7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0102');
INSERT INTO `sys_role_menu` VALUES ('6714acf0b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010201');
INSERT INTO `sys_role_menu` VALUES ('6714ad12b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010202');
INSERT INTO `sys_role_menu` VALUES ('6714ad34b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010203');
INSERT INTO `sys_role_menu` VALUES ('6714ad56b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010204');
INSERT INTO `sys_role_menu` VALUES ('6714ad78b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0103');
INSERT INTO `sys_role_menu` VALUES ('6714ad9ab7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010301');
INSERT INTO `sys_role_menu` VALUES ('6714adbcb7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010302');
INSERT INTO `sys_role_menu` VALUES ('6714addfb7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010303');
INSERT INTO `sys_role_menu` VALUES ('6714ae01b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010304');
INSERT INTO `sys_role_menu` VALUES ('6714ae23b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0104');
INSERT INTO `sys_role_menu` VALUES ('6714ae45b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010401');
INSERT INTO `sys_role_menu` VALUES ('6714ae67b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010402');
INSERT INTO `sys_role_menu` VALUES ('6714ae89b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010403');
INSERT INTO `sys_role_menu` VALUES ('6714aeabb7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010404');
INSERT INTO `sys_role_menu` VALUES ('6714aed3b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0105');
INSERT INTO `sys_role_menu` VALUES ('6714aef0b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010501');
INSERT INTO `sys_role_menu` VALUES ('6714af12b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010502');
INSERT INTO `sys_role_menu` VALUES ('6714af34b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010503');
INSERT INTO `sys_role_menu` VALUES ('6714af56b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010504');
INSERT INTO `sys_role_menu` VALUES ('6714af78b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0106');
INSERT INTO `sys_role_menu` VALUES ('6714afa0b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0107');
INSERT INTO `sys_role_menu` VALUES ('6714afc2b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010701');
INSERT INTO `sys_role_menu` VALUES ('6714afeab7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010702');
INSERT INTO `sys_role_menu` VALUES ('6714b16db7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010703');
INSERT INTO `sys_role_menu` VALUES ('6714b19ab7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010704');
INSERT INTO `sys_role_menu` VALUES ('6714b1bcb7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0108');
INSERT INTO `sys_role_menu` VALUES ('6714b1dfb7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010801');
INSERT INTO `sys_role_menu` VALUES ('6714b201b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010802');
INSERT INTO `sys_role_menu` VALUES ('6714b223b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010803');
INSERT INTO `sys_role_menu` VALUES ('6714b245b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010804');
INSERT INTO `sys_role_menu` VALUES ('6714b267b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0109');
INSERT INTO `sys_role_menu` VALUES ('6714b289b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '010901');
INSERT INTO `sys_role_menu` VALUES ('6714b2abb7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '02');
INSERT INTO `sys_role_menu` VALUES ('6714b2ceb7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0201');
INSERT INTO `sys_role_menu` VALUES ('6714b2f0b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0202');
INSERT INTO `sys_role_menu` VALUES ('6714b317b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '03');
INSERT INTO `sys_role_menu` VALUES ('6714b33ab7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0301');
INSERT INTO `sys_role_menu` VALUES ('6714b361b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '030101');
INSERT INTO `sys_role_menu` VALUES ('6714b384b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '030102');
INSERT INTO `sys_role_menu` VALUES ('6714b3a6b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '030103');
INSERT INTO `sys_role_menu` VALUES ('6714b3c8b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '030104');
INSERT INTO `sys_role_menu` VALUES ('6714b3eab7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '030105');
INSERT INTO `sys_role_menu` VALUES ('6714b40cb7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '030106');
INSERT INTO `sys_role_menu` VALUES ('6714b42eb7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '030107');
INSERT INTO `sys_role_menu` VALUES ('6714b450b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0302');
INSERT INTO `sys_role_menu` VALUES ('6714b472b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '04');
INSERT INTO `sys_role_menu` VALUES ('6714b495b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '0401');
INSERT INTO `sys_role_menu` VALUES ('6714b4b7b7a711e8ba6f509a4cd21f74', '1acae81674cf4525a2b2eec2e065965c', '040101');

-- ----------------------------
-- Table structure for sys_sms_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms_log`;
CREATE TABLE `sys_sms_log` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `user_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作人',
  `content` text COLLATE utf8_unicode_ci COMMENT '必填参数。发送内容（1-500 个汉字）UTF-8编码',
  `mobile` text COLLATE utf8_unicode_ci COMMENT '必填参数。手机号码。多个以英文逗号隔开',
  `stime` datetime DEFAULT NULL COMMENT '可选参数。发送时间，填写时已填写的时间发送，不填时为当前时间发送',
  `sign` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '必填参数。用户签名',
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '必填参数。固定值 pt',
  `extno` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '可选参数。扩展码，用户定义扩展码，只能为数字',
  `send_status` int(11) DEFAULT NULL COMMENT '1成功 0失败',
  `send_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发送编号',
  `invalid_num` int(11) DEFAULT NULL COMMENT '无效号码数',
  `success_num` int(11) DEFAULT NULL COMMENT '成功提交数',
  `black_num` int(11) DEFAULT NULL COMMENT '黑名单数',
  `return_msg` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '返回消息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_sms_log
-- ----------------------------
INSERT INTO `sys_sms_log` VALUES ('3a526e31529e4f9683f2377ba4361124', '1', '尊敬的用户，您的验证码是：462457。', '15209831990', '2017-12-18 09:19:49', '【鲜风生活】', 'pt', null, '0', '2017121809180767189495840', '0', '1', '0', '提交成功');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `pass_word` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `mobile` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号',
  `dept_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属部门ID',
  `qq` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'QQ',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `status` int(11) DEFAULT NULL COMMENT '状态  0：无效   1：有效',
  `create_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新者ID',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '15209831990', '01', '939961241', '939961241@qq.com', '1', '', '2017-11-21 09:56:58', '1', '2017-11-21 13:44:26');
INSERT INTO `sys_user` VALUES ('bafb9ce52a67491e8cdcd801bcfe142c', 'test', '92925488b28ab12584ac8fcaa8a27a0f497b2c62940c8f4fbc8ef19ebc87c43e', '15209831990', '0106', null, '939961241@qq.com', '1', '1', '2017-12-25 17:32:58', null, null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户ID',
  `role_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('0b886bf7ce7f11e78f3b54ee75866478', '1', '1acae81674cf4525a2b2eec2e065965c');
INSERT INTO `sys_user_role` VALUES ('f2ed0b35e95611e7bdd354ee75866478', 'bafb9ce52a67491e8cdcd801bcfe142c', '6a9f76de20a944059dca5e2ae90d780d');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL COMMENT '标签id',
  `name` varchar(255) DEFAULT NULL COMMENT '标签名称',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `count` int(11) DEFAULT NULL COMMENT '粉丝数量',
  `default_code` varchar(20) DEFAULT '' COMMENT '是否默认 001 是 002不是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('2', '星标组', '2018-09-14 10:02:23', '2018-09-14 14:55:40', null, '002');
INSERT INTO `tag` VALUES ('100', '测试组1', '2018-09-14 10:02:25', '2018-09-14 14:55:40', null, '002');
INSERT INTO `tag` VALUES ('101', '测试组2', '2018-09-14 10:02:29', '2018-09-14 14:55:40', null, '002');
INSERT INTO `tag` VALUES ('102', '测试组3', '2018-09-14 14:56:03', '2018-09-14 14:57:34', null, '001');
INSERT INTO `tag` VALUES ('103', '测试组4', '2018-09-14 14:55:56', '2018-09-14 14:55:56', null, '002');

-- ----------------------------
-- Table structure for tb_token
-- ----------------------------
DROP TABLE IF EXISTS `tb_token`;
CREATE TABLE `tb_token` (
  `user_id` bigint(32) NOT NULL COMMENT 'id',
  `token` varchar(100) NOT NULL COMMENT 'token',
  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户Token';

-- ----------------------------
-- Records of tb_token
-- ----------------------------

-- ----------------------------
-- Table structure for tb_weixin_token
-- ----------------------------
DROP TABLE IF EXISTS `tb_weixin_token`;
CREATE TABLE `tb_weixin_token` (
  `schoolId` varchar(32) NOT NULL,
  `createTime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `token` varchar(255) NOT NULL,
  `jsapi_ticket` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`schoolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_weixin_token
-- ----------------------------
INSERT INTO `tb_weixin_token` VALUES ('d155164d7dd74f74833cb5b780ba49fa', '2018-09-14 21:00:03', '13_B0It4BDBO7PXej_YK9sexV4jk5b10-89QGuq1mhXnoFRHf588zdPnET3TMk9qvPBsulHANhvj7Ss_LZsz8qY2t-JWhBB7n_0VNcglIfU_TR92cClSPxT1eIg0YD-VuQNRMMwrez6IBAB7u-wPWJeAEAGNA', null);

-- ----------------------------
-- Table structure for wechat_setting
-- ----------------------------
DROP TABLE IF EXISTS `wechat_setting`;
CREATE TABLE `wechat_setting` (
  `id` varchar(32) DEFAULT NULL,
  `appid` varchar(100) DEFAULT NULL COMMENT '开发者id',
  `appsecret` varchar(100) DEFAULT NULL COMMENT '服务器令牌',
  `token` varchar(255) DEFAULT NULL COMMENT 'token',
  `encodingAESKey` varchar(255) DEFAULT NULL COMMENT '消息加解密密钥'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公众号设置';

-- ----------------------------
-- Records of wechat_setting
-- ----------------------------
INSERT INTO `wechat_setting` VALUES ('a93d7efa5f774ea4a3d4e009a544516c', 'wx1837bb00d024409b', '6fe04217c3550c2a9a34e64edc34dbb6', 'yapeS8jTRa5df3OVgIOdD4C7IkoFSGLw', '435435');
