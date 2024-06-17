/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : spring_admin_1

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 17/06/2024 21:17:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'u_biology', '生物信息管理', NULL, NULL, 'Biology', 'crud', '', 'com.ruoyi.info', 'info', 'biology', '生物信息管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"4\"}', 'admin', '2024-06-17 14:47:01', '', '2024-06-17 15:02:34', NULL);
INSERT INTO `gen_table` VALUES (2, 'u_country', '国家信息管理', NULL, NULL, 'Country', 'crud', '', 'com.ruoyi.info', 'info', 'country', '国家信息管理', 'ruoyi', '0', '/', '{\"parentMenuId\":4}', 'admin', '2024-06-17 15:11:26', '', '2024-06-17 15:15:02', NULL);
INSERT INTO `gen_table` VALUES (3, 'u_port', '港口信息管理', '', '', 'Port', 'crud', '', 'com.ruoyi.info', 'info', 'port', '港口信息管理', 'ruoyi', '0', '/', '{\"parentMenuId\":4}', 'admin', '2024-06-17 15:18:08', '', '2024-06-17 15:20:05', NULL);
INSERT INTO `gen_table` VALUES (4, 'u_country_find', '国家发现生物', NULL, NULL, 'CountryFind', 'crud', '', 'com.ruoyi.info', 'info', 'country_find', '国家发现生物', 'ruoyi', '0', '/', '{\"parentMenuId\":\"4\"}', 'admin', '2024-06-17 15:22:16', '', '2024-06-17 15:41:16', NULL);
INSERT INTO `gen_table` VALUES (5, 'u_port_check', '港口检查生物', NULL, NULL, 'PortCheck', 'crud', '', 'com.ruoyi.info', 'info', 'port_check', '港口检查生物', 'ruoyi', '0', '/', '{\"parentMenuId\":4}', 'admin', '2024-06-17 15:22:25', '', '2024-06-17 15:25:47', NULL);
INSERT INTO `gen_table` VALUES (6, 'u_port_find', '港口发现生物', NULL, NULL, 'PortFind', 'crud', '', 'com.ruoyi.info', 'info', 'port_find', '港口发现生物', 'ruoyi', '0', '/', '{\"parentMenuId\":\"4\"}', 'admin', '2024-06-17 15:22:25', '', '2024-06-17 15:42:50', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, 1, 'id', 'ID', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-06-17 14:47:01', '', '2024-06-17 15:02:34');
INSERT INTO `gen_table_column` VALUES (2, 1, 'num', '生物编号', 'bigint(20)', 'Long', 'num', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-06-17 14:47:01', '', '2024-06-17 15:02:34');
INSERT INTO `gen_table_column` VALUES (3, 1, 'name', '生物名称', 'varchar(600)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-06-17 14:47:01', '', '2024-06-17 15:02:34');
INSERT INTO `gen_table_column` VALUES (4, 1, 'men', '生物门属', 'varchar(600)', 'String', 'men', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2024-06-17 14:47:01', '', '2024-06-17 15:02:34');
INSERT INTO `gen_table_column` VALUES (5, 1, 'harm', '生物危害', 'varchar(600)', 'String', 'harm', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'textarea', '', 5, 'admin', '2024-06-17 14:47:01', '', '2024-06-17 15:02:34');
INSERT INTO `gen_table_column` VALUES (6, 1, 'world_distribution', '世界分布', 'varchar(600)', 'String', 'worldDistribution', '0', '0', '1', '1', '1', '1', '0', 'LIKE', 'textarea', '', 6, 'admin', '2024-06-17 14:47:01', '', '2024-06-17 15:02:34');
INSERT INTO `gen_table_column` VALUES (7, 1, 'latin', '拉丁名', 'varchar(600)', 'String', 'latin', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2024-06-17 14:47:01', '', '2024-06-17 15:02:34');
INSERT INTO `gen_table_column` VALUES (8, 2, 'id', 'ID', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-06-17 15:11:26', '', '2024-06-17 15:15:02');
INSERT INTO `gen_table_column` VALUES (9, 2, 'num', '国家编号', 'bigint(20)', 'Long', 'num', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-06-17 15:11:26', '', '2024-06-17 15:15:02');
INSERT INTO `gen_table_column` VALUES (10, 2, 'name', '国家名称', 'varchar(50)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-06-17 15:11:26', '', '2024-06-17 15:15:02');
INSERT INTO `gen_table_column` VALUES (11, 2, 'status', '国家状态', 'tinyint(4)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_normal_disable', 4, 'admin', '2024-06-17 15:11:26', '', '2024-06-17 15:15:02');
INSERT INTO `gen_table_column` VALUES (12, 2, 'is_trader', '是否为贸易国家', 'varchar(50)', 'String', 'isTrader', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'sys_yes_no', 5, 'admin', '2024-06-17 15:11:26', '', '2024-06-17 15:15:02');
INSERT INTO `gen_table_column` VALUES (13, 3, 'id', 'ID', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-06-17 15:18:08', '', '2024-06-17 15:20:05');
INSERT INTO `gen_table_column` VALUES (14, 3, 'num', '港口编号', 'bigint(20)', 'Long', 'num', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-06-17 15:18:08', '', '2024-06-17 15:20:05');
INSERT INTO `gen_table_column` VALUES (15, 3, 'name', '港口名称', 'varchar(50)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-06-17 15:18:08', '', '2024-06-17 15:20:05');
INSERT INTO `gen_table_column` VALUES (16, 3, 'country_id', '国家名称', 'varchar(50)', 'String', 'countryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-06-17 15:18:08', '', '2024-06-17 15:20:05');
INSERT INTO `gen_table_column` VALUES (17, 3, 'province', '所在省份', 'varchar(50)', 'String', 'province', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-06-17 15:18:08', '', '2024-06-17 15:20:05');
INSERT INTO `gen_table_column` VALUES (18, 4, 'id', 'ID', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-06-17 15:22:16', '', '2024-06-17 15:41:16');
INSERT INTO `gen_table_column` VALUES (19, 4, 'biology_num', '生物编号', 'bigint(20)', 'Long', 'biologyNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-06-17 15:22:16', '', '2024-06-17 15:41:16');
INSERT INTO `gen_table_column` VALUES (20, 4, 'country_id', '国家名称', 'bigint(20)', 'Long', 'countryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-06-17 15:22:16', '', '2024-06-17 15:41:16');
INSERT INTO `gen_table_column` VALUES (21, 4, 'found_time', '发现时间', 'date', 'Date', 'foundTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2024-06-17 15:22:16', '', '2024-06-17 15:41:16');
INSERT INTO `gen_table_column` VALUES (22, 4, 'found_location', '发现位置', 'varchar(50)', 'String', 'foundLocation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-06-17 15:22:16', '', '2024-06-17 15:41:16');
INSERT INTO `gen_table_column` VALUES (23, 4, 'longitude', '经度', 'decimal(10,2)', 'BigDecimal', 'longitude', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2024-06-17 15:22:16', '', '2024-06-17 15:41:16');
INSERT INTO `gen_table_column` VALUES (24, 4, 'latitude', '纬度', 'decimal(10,2)', 'BigDecimal', 'latitude', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2024-06-17 15:22:16', '', '2024-06-17 15:41:16');
INSERT INTO `gen_table_column` VALUES (25, 5, 'id', 'ID', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-06-17 15:22:25', '', '2024-06-17 15:25:47');
INSERT INTO `gen_table_column` VALUES (26, 5, 'biology_num', '生物编号', 'bigint(20)', 'Long', 'biologyNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-06-17 15:22:25', '', '2024-06-17 15:25:47');
INSERT INTO `gen_table_column` VALUES (27, 5, 'port_id', '港口名称', 'varchar(50)', 'String', 'portId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-06-17 15:22:25', '', '2024-06-17 15:25:47');
INSERT INTO `gen_table_column` VALUES (28, 5, 'abundance', '丰富度', 'int(11)', 'Long', 'abundance', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-06-17 15:22:25', '', '2024-06-17 15:25:47');
INSERT INTO `gen_table_column` VALUES (29, 5, 'abundance_rate', '丰富度百分比', 'decimal(10,4)', 'BigDecimal', 'abundanceRate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-06-17 15:22:25', '', '2024-06-17 15:25:47');
INSERT INTO `gen_table_column` VALUES (30, 6, 'id', 'ID', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-06-17 15:22:25', '', '2024-06-17 15:42:50');
INSERT INTO `gen_table_column` VALUES (31, 6, 'biology_id', '生物名称', 'varchar(600)', 'String', 'biologyId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-06-17 15:22:25', '', '2024-06-17 15:42:50');
INSERT INTO `gen_table_column` VALUES (32, 6, 'port_id', '港口名称', 'varchar(600)', 'String', 'portId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-06-17 15:22:25', '', '2024-06-17 15:42:50');
INSERT INTO `gen_table_column` VALUES (33, 6, 'first_found_time', '首次发现时间', 'date', 'Date', 'firstFoundTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2024-06-17 15:22:25', '', '2024-06-17 15:42:50');
INSERT INTO `gen_table_column` VALUES (34, 6, 'first_found_location', '首次发现地点', 'varchar(600)', 'String', 'firstFoundLocation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-06-17 15:22:25', '', '2024-06-17 15:42:50');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-06-17 14:36:47', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-06-17 14:36:47', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-06-17 14:36:47', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-06-17 14:36:47', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-06-17 14:36:47', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-06-17 14:36:48', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-17 14:36:46', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-17 14:36:46', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-17 14:36:46', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-17 14:36:46', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-17 14:36:46', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-17 14:36:46', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-17 14:36:46', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-17 14:36:46', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-17 14:36:46', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-17 14:36:46', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-06-17 14:36:47', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-06-17 14:36:48', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-06-17 14:36:48', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-06-17 14:36:48', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-17 14:45:17');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-17 17:16:48');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-17 18:04:32');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2024-06-17 21:03:13');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-17 21:03:17');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-06-17 21:04:48');
INSERT INTO `sys_logininfor` VALUES (106, '15576364885', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-17 21:04:57');
INSERT INTO `sys_logininfor` VALUES (107, '15576364885', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-06-17 21:06:37');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-17 21:06:42');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-06-17 21:06:58');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-17 21:07:02');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-06-17 21:07:09');
INSERT INTO `sys_logininfor` VALUES (112, '15576364885', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-17 21:07:13');
INSERT INTO `sys_logininfor` VALUES (113, '15576364885', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-06-17 21:08:14');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-17 21:09:49');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-06-17 21:12:51');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-17 21:12:55');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-06-17 21:13:08');
INSERT INTO `sys_logininfor` VALUES (118, '15576364885', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-06-17 21:13:13');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2000 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-06-17 14:36:46', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-06-17 14:36:46', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-06-17 14:36:46', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '信息管理', 0, 4, 'info', NULL, '', 1, 0, 'M', '0', '0', '', 'guide', 'admin', '2024-06-17 14:36:46', 'admin', '2024-06-17 14:51:20', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-06-17 14:36:46', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-06-17 14:36:46', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-06-17 14:36:46', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-06-17 14:36:46', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-06-17 14:36:46', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-06-17 14:36:46', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-06-17 14:36:46', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-06-17 14:36:46', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-06-17 14:36:46', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-06-17 14:36:46', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-06-17 14:36:46', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-06-17 14:36:46', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-06-17 14:36:46', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-06-17 14:36:46', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-06-17 14:36:46', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-06-17 14:36:46', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-06-17 14:36:46', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-06-17 14:36:46', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-06-17 14:36:46', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-06-17 14:36:46', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-06-17 14:36:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-06-17 14:36:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-06-17 14:36:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-06-17 14:36:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-06-17 14:36:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-06-17 14:36:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-06-17 14:36:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '生物信息管理', 4, 1, 'biology', 'info/biology/index', NULL, 1, 0, 'C', '0', '0', 'info:biology:list', 'edit', 'admin', '2024-06-17 14:55:43', 'admin', '2024-06-17 15:36:59', '生物信息管理菜单');
INSERT INTO `sys_menu` VALUES (2001, '生物信息管理查询', 2000, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:biology:query', '#', 'admin', '2024-06-17 14:55:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2002, '生物信息管理新增', 2000, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:biology:add', '#', 'admin', '2024-06-17 14:55:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '生物信息管理修改', 2000, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:biology:edit', '#', 'admin', '2024-06-17 14:55:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '生物信息管理删除', 2000, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:biology:remove', '#', 'admin', '2024-06-17 14:55:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '生物信息管理导出', 2000, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:biology:export', '#', 'admin', '2024-06-17 14:55:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '国家信息管理', 4, 1, 'country', 'info/country/index', NULL, 1, 0, 'C', '0', '0', 'info:country:list', 'edit', 'admin', '2024-06-17 15:16:51', 'admin', '2024-06-17 15:37:08', '国家信息管理菜单');
INSERT INTO `sys_menu` VALUES (2007, '国家信息管理查询', 2006, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:country:query', '#', 'admin', '2024-06-17 15:16:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '国家信息管理新增', 2006, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:country:add', '#', 'admin', '2024-06-17 15:16:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '国家信息管理修改', 2006, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:country:edit', '#', 'admin', '2024-06-17 15:16:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '国家信息管理删除', 2006, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:country:remove', '#', 'admin', '2024-06-17 15:16:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '国家信息管理导出', 2006, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:country:export', '#', 'admin', '2024-06-17 15:16:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '港口信息管理', 4, 1, 'port', 'info/port/index', NULL, 1, 0, 'C', '0', '0', 'info:port:list', 'edit', 'admin', '2024-06-17 15:21:16', 'admin', '2024-06-17 15:37:19', '港口信息管理菜单');
INSERT INTO `sys_menu` VALUES (2013, '港口信息管理查询', 2012, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:port:query', '#', 'admin', '2024-06-17 15:21:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '港口信息管理新增', 2012, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:port:add', '#', 'admin', '2024-06-17 15:21:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '港口信息管理修改', 2012, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:port:edit', '#', 'admin', '2024-06-17 15:21:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '港口信息管理删除', 2012, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:port:remove', '#', 'admin', '2024-06-17 15:21:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '港口信息管理导出', 2012, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:port:export', '#', 'admin', '2024-06-17 15:21:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '国家发现生物', 4, 1, 'country_find', 'info/country_find/index', NULL, 1, 0, 'C', '0', '0', 'info:country_find:list', 'edit', 'admin', '2024-06-17 15:32:31', 'admin', '2024-06-17 15:37:27', '国家发现生物菜单');
INSERT INTO `sys_menu` VALUES (2019, '国家发现生物查询', 2018, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:country_find:query', '#', 'admin', '2024-06-17 15:32:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '国家发现生物新增', 2018, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:country_find:add', '#', 'admin', '2024-06-17 15:32:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '国家发现生物修改', 2018, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:country_find:edit', '#', 'admin', '2024-06-17 15:32:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '国家发现生物删除', 2018, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:country_find:remove', '#', 'admin', '2024-06-17 15:32:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '国家发现生物导出', 2018, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:country_find:export', '#', 'admin', '2024-06-17 15:32:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '港口检查生物', 4, 1, 'port_check', 'info/port_check/index', NULL, 1, 0, 'C', '0', '0', 'info:port_check:list', 'edit', 'admin', '2024-06-17 15:32:41', 'admin', '2024-06-17 15:37:34', '港口检查生物菜单');
INSERT INTO `sys_menu` VALUES (2025, '港口检查生物查询', 2024, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:port_check:query', '#', 'admin', '2024-06-17 15:32:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '港口检查生物新增', 2024, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:port_check:add', '#', 'admin', '2024-06-17 15:32:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '港口检查生物修改', 2024, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:port_check:edit', '#', 'admin', '2024-06-17 15:32:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '港口检查生物删除', 2024, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:port_check:remove', '#', 'admin', '2024-06-17 15:32:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '港口检查生物导出', 2024, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:port_check:export', '#', 'admin', '2024-06-17 15:32:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '港口发现生物', 4, 1, 'port_find', 'info/port_find/index', NULL, 1, 0, 'C', '0', '0', 'info:port_find:list', 'edit', 'admin', '2024-06-17 15:32:47', 'admin', '2024-06-17 15:37:40', '港口发现生物菜单');
INSERT INTO `sys_menu` VALUES (2031, '港口发现生物查询', 2030, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:port_find:query', '#', 'admin', '2024-06-17 15:32:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '港口发现生物新增', 2030, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:port_find:add', '#', 'admin', '2024-06-17 15:32:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '港口发现生物修改', 2030, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:port_find:edit', '#', 'admin', '2024-06-17 15:32:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '港口发现生物删除', 2030, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:port_find:remove', '#', 'admin', '2024-06-17 15:32:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '港口发现生物导出', 2030, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'info:port_find:export', '#', 'admin', '2024-06-17 15:32:47', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-06-17 14:36:48', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-06-17 14:36:48', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"u_biology\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 14:47:01', 84);
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"biology\",\"className\":\"UBiology\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"生物编号\",\"columnId\":2,\"columnName\":\"num\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"num\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"生物名称\",\"columnId\":3,\"columnName\":\"name\",\"columnType\":\"varchar(600)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Men\",\"columnComment\":\"生物门属\",\"columnId\":4,\"columnName\":\"men\",\"columnType\":\"varchar(600)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"men\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":4', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 14:49:03', 115);
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-06-17 14:36:46\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"info\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 14:51:05', 19);
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-06-17 14:36:46\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":4,\"menuName\":\"信息管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"info\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 14:51:20', 75);
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"biology\",\"className\":\"UBiology\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 14:49:03\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"生物编号\",\"columnId\":2,\"columnName\":\"num\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"num\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 14:49:03\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"生物名称\",\"columnId\":3,\"columnName\":\"name\",\"columnType\":\"varchar(600)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 14:49:03\",\"usableColumn\":false},{\"capJavaField\":\"Men\",\"columnComment\":\"生物门属\",\"columnId\":4,\"columnName\":\"men\",\"columnType\":\"varchar(600)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"men\",\"javaTy', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 14:51:31', 30);
INSERT INTO `sys_oper_log` VALUES (105, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"biology\",\"className\":\"UBiology\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 14:51:30\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"生物编号\",\"columnId\":2,\"columnName\":\"num\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"num\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 14:51:30\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"生物名称\",\"columnId\":3,\"columnName\":\"name\",\"columnType\":\"varchar(600)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 14:51:31\",\"usableColumn\":false},{\"capJavaField\":\"Men\",\"columnComment\":\"生物门属\",\"columnId\":4,\"columnName\":\"men\",\"columnType\":\"varchar(600)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"men\",\"javaTy', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 14:51:39', 47);
INSERT INTO `sys_oper_log` VALUES (106, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"biology\",\"className\":\"Biology\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 14:51:39\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"生物编号\",\"columnId\":2,\"columnName\":\"num\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"num\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 14:51:39\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"生物名称\",\"columnId\":3,\"columnName\":\"name\",\"columnType\":\"varchar(600)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 14:51:39\",\"usableColumn\":false},{\"capJavaField\":\"Men\",\"columnComment\":\"生物门属\",\"columnId\":4,\"columnName\":\"men\",\"columnType\":\"varchar(600)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"men\",\"javaTyp', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 14:51:56', 68);
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"u_biology\"}', NULL, 0, NULL, '2024-06-17 14:52:29', 43);
INSERT INTO `sys_oper_log` VALUES (108, '生物信息管理', 2, 'com.ruoyi.info.controller.BiologyController.edit()', 'PUT', 1, 'admin', NULL, '/info/biology', '127.0.0.1', '内网IP', '{\"harm\":\"甲藻大量繁殖使水分层,并发出腥臭味,并且使水中溶解氧急剧下降,导致养殖动物鳃负担过重或直接附着在鳃丝上出现黄鳃肿鳃等现象;\",\"id\":1,\"latin\":\"Ceratium fusus\\r\\n\",\"men\":\"甲藻门\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\",\"name\":\"梭甲藻\",\"num\":2024010,\"params\":{},\"worldDistribution\":\"各地\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:01:29', 24);
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"biology\",\"className\":\"Biology\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 14:51:56\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"生物编号\",\"columnId\":2,\"columnName\":\"num\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"num\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 14:51:56\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"生物名称\",\"columnId\":3,\"columnName\":\"name\",\"columnType\":\"varchar(600)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 14:51:56\",\"usableColumn\":false},{\"capJavaField\":\"Men\",\"columnComment\":\"生物门属\",\"columnId\":4,\"columnName\":\"men\",\"columnType\":\"varchar(600)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:47:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isP', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:02:34', 104);
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"u_biology\"}', NULL, 0, NULL, '2024-06-17 15:02:37', 182);
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"u_country\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:11:26', 74);
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"country\",\"className\":\"Country\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":8,\"columnName\":\"id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:11:26\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"国家编号\",\"columnId\":9,\"columnName\":\"num\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:11:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"num\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"国家名称\",\"columnId\":10,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:11:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"国家状态\",\"columnId\":11,\"columnName\":\"status\",\"columnType\":\"tinyint(4)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:11:26\",\"dictType\":\"sys_normal_disable\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"status\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"qu', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:15:02', 155);
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"u_country\"}', NULL, 0, NULL, '2024-06-17 15:15:05', 133);
INSERT INTO `sys_oper_log` VALUES (114, '国家信息管理', 2, 'com.ruoyi.info.controller.CountryController.edit()', 'PUT', 1, 'admin', NULL, '/info/country', '127.0.0.1', '内网IP', '{\"id\":17,\"isTrader\":\"否\",\"name\":\"中国\",\"num\":222024001,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:17:09', 13);
INSERT INTO `sys_oper_log` VALUES (115, '国家信息管理', 2, 'com.ruoyi.info.controller.CountryController.edit()', 'PUT', 1, 'admin', NULL, '/info/country', '127.0.0.1', '内网IP', '{\"id\":18,\"isTrader\":\"是\",\"name\":\"新加坡\",\"num\":222024004,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:17:13', 11);
INSERT INTO `sys_oper_log` VALUES (116, '国家信息管理', 2, 'com.ruoyi.info.controller.CountryController.edit()', 'PUT', 1, 'admin', NULL, '/info/country', '127.0.0.1', '内网IP', '{\"id\":19,\"isTrader\":\"是\",\"name\":\"美国\",\"num\":222024005,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:17:19', 13);
INSERT INTO `sys_oper_log` VALUES (117, '国家信息管理', 2, 'com.ruoyi.info.controller.CountryController.edit()', 'PUT', 1, 'admin', NULL, '/info/country', '127.0.0.1', '内网IP', '{\"id\":20,\"isTrader\":\"Y\",\"name\":\"荷兰\",\"num\":222024006,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:17:24', 4);
INSERT INTO `sys_oper_log` VALUES (118, '国家信息管理', 2, 'com.ruoyi.info.controller.CountryController.edit()', 'PUT', 1, 'admin', NULL, '/info/country', '127.0.0.1', '内网IP', '{\"id\":21,\"isTrader\":\"是\",\"name\":\"新西兰\",\"num\":222024007,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:17:28', 13);
INSERT INTO `sys_oper_log` VALUES (119, '国家信息管理', 2, 'com.ruoyi.info.controller.CountryController.edit()', 'PUT', 1, 'admin', NULL, '/info/country', '127.0.0.1', '内网IP', '{\"id\":19,\"isTrader\":\"是\",\"name\":\"美国\",\"num\":222024005,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:17:35', 3);
INSERT INTO `sys_oper_log` VALUES (120, '国家信息管理', 2, 'com.ruoyi.info.controller.CountryController.edit()', 'PUT', 1, 'admin', NULL, '/info/country', '127.0.0.1', '内网IP', '{\"id\":19,\"isTrader\":\"N\",\"name\":\"美国\",\"num\":222024005,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:17:40', 3);
INSERT INTO `sys_oper_log` VALUES (121, '国家信息管理', 2, 'com.ruoyi.info.controller.CountryController.edit()', 'PUT', 1, 'admin', NULL, '/info/country', '127.0.0.1', '内网IP', '{\"id\":18,\"isTrader\":\"Y\",\"name\":\"新加坡\",\"num\":222024004,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:17:44', 5);
INSERT INTO `sys_oper_log` VALUES (122, '国家信息管理', 2, 'com.ruoyi.info.controller.CountryController.edit()', 'PUT', 1, 'admin', NULL, '/info/country', '127.0.0.1', '内网IP', '{\"id\":17,\"isTrader\":\"Y\",\"name\":\"中国\",\"num\":222024001,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:17:48', 11);
INSERT INTO `sys_oper_log` VALUES (123, '国家信息管理', 2, 'com.ruoyi.info.controller.CountryController.edit()', 'PUT', 1, 'admin', NULL, '/info/country', '127.0.0.1', '内网IP', '{\"id\":21,\"isTrader\":\"Y\",\"name\":\"新西兰\",\"num\":222024007,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:17:52', 4);
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"u_port\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:18:08', 105);
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"port\",\"className\":\"Port\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":13,\"columnName\":\"id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:18:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"港口编号\",\"columnId\":14,\"columnName\":\"num\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:18:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"num\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"港口名称\",\"columnId\":15,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:18:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CountryId\",\"columnComment\":\"国家名称\",\"columnId\":16,\"columnName\":\"country_id\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:18:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"countryId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:20:05', 45);
INSERT INTO `sys_oper_log` VALUES (126, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"u_port\"}', NULL, 0, NULL, '2024-06-17 15:20:09', 180);
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"u_country_find\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:22:16', 50);
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"u_port_find,u_port_check\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:22:25', 44);
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"find\",\"className\":\"CountryFind\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":18,\"columnName\":\"id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:16\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"BiologyNum\",\"columnComment\":\"生物编号\",\"columnId\":19,\"columnName\":\"biology_num\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:16\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"biologyNum\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CountryId\",\"columnComment\":\"国家名称\",\"columnId\":20,\"columnName\":\"country_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:16\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"countryId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FoundTime\",\"columnComment\":\"发现时间\",\"columnId\":21,\"columnName\":\"found_time\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:16\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"foundTime\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:23:34', 73);
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"port_find\",\"className\":\"PortFind\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":30,\"columnName\":\"id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:25\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"BiologyId\",\"columnComment\":\"生物名称\",\"columnId\":31,\"columnName\":\"biology_id\",\"columnType\":\"varchar(600)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:25\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"biologyId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PortId\",\"columnComment\":\"港口名称\",\"columnId\":32,\"columnName\":\"port_id\",\"columnType\":\"varchar(600)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:25\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"portId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FirstFoundTime\",\"columnComment\":\"首次发现时间\",\"columnId\":33,\"columnName\":\"first_found_time\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:25\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"firstFoundTime\",\"javaType\":\"Date\",\"list\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:24:43', 30);
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"country_find\",\"className\":\"CountryFind\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":18,\"columnName\":\"id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:16\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 15:23:34\",\"usableColumn\":false},{\"capJavaField\":\"BiologyNum\",\"columnComment\":\"生物编号\",\"columnId\":19,\"columnName\":\"biology_num\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:16\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"biologyNum\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 15:23:34\",\"usableColumn\":false},{\"capJavaField\":\"CountryId\",\"columnComment\":\"国家名称\",\"columnId\":20,\"columnName\":\"country_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:16\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"countryId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 15:23:34\",\"usableColumn\":false},{\"capJavaField\":\"FoundTime\",\"columnComment\":\"发现时间\",\"columnId\":21,\"columnName\":\"found_time\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:16\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:24:55', 39);
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"port_check\",\"className\":\"PortCheck\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":25,\"columnName\":\"id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:25\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"BiologyNum\",\"columnComment\":\"生物编号\",\"columnId\":26,\"columnName\":\"biology_num\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:25\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"biologyNum\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PortId\",\"columnComment\":\"港口名称\",\"columnId\":27,\"columnName\":\"port_id\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:25\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"portId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Abundance\",\"columnComment\":\"丰富度\",\"columnId\":28,\"columnName\":\"abundance\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:25\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"abundance\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":fals', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:25:47', 115);
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"u_country_find\"}', NULL, 0, NULL, '2024-06-17 15:25:50', 53);
INSERT INTO `sys_oper_log` VALUES (134, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"u_port_check\"}', NULL, 0, NULL, '2024-06-17 15:25:53', 36);
INSERT INTO `sys_oper_log` VALUES (135, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"u_port_find\"}', NULL, 0, NULL, '2024-06-17 15:25:58', 36);
INSERT INTO `sys_oper_log` VALUES (136, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"info/port_check/index\",\"createTime\":\"2024-06-17 15:32:41\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2024,\"menuName\":\"港口检查生物\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"port_check\",\"perms\":\"info:port_check:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:34:38', 91);
INSERT INTO `sys_oper_log` VALUES (137, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"info/biology/index\",\"createTime\":\"2024-06-17 14:55:43\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"生物信息管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"biology\",\"perms\":\"info:biology:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:37:00', 60);
INSERT INTO `sys_oper_log` VALUES (138, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"info/country/index\",\"createTime\":\"2024-06-17 15:16:51\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"国家信息管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"country\",\"perms\":\"info:country:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:37:08', 37);
INSERT INTO `sys_oper_log` VALUES (139, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"info/port/index\",\"createTime\":\"2024-06-17 15:21:16\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2012,\"menuName\":\"港口信息管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"port\",\"perms\":\"info:port:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:37:20', 84);
INSERT INTO `sys_oper_log` VALUES (140, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"info/country_find/index\",\"createTime\":\"2024-06-17 15:32:31\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"国家发现生物\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"country_find\",\"perms\":\"info:country_find:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:37:27', 35);
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"info/port_check/index\",\"createTime\":\"2024-06-17 15:32:41\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2024,\"menuName\":\"港口检查生物\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"port_check\",\"perms\":\"info:port_check:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:37:34', 22);
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"info/port_find/index\",\"createTime\":\"2024-06-17 15:32:47\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2030,\"menuName\":\"港口发现生物\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"port_find\",\"perms\":\"info:port_find:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:37:40', 23);
INSERT INTO `sys_oper_log` VALUES (143, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-17 14:36:46\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:38:39', 94);
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"country_find\",\"className\":\"CountryFind\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":18,\"columnName\":\"id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:16\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 15:24:55\",\"usableColumn\":false},{\"capJavaField\":\"BiologyNum\",\"columnComment\":\"生物编号\",\"columnId\":19,\"columnName\":\"biology_num\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:16\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"biologyNum\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 15:24:55\",\"usableColumn\":false},{\"capJavaField\":\"CountryId\",\"columnComment\":\"国家名称\",\"columnId\":20,\"columnName\":\"country_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:16\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"countryId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 15:24:55\",\"usableColumn\":false},{\"capJavaField\":\"FoundTime\",\"columnComment\":\"发现时间\",\"columnId\":21,\"columnName\":\"found_time\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:16\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:41:16', 51);
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"u_country_find\"}', NULL, 0, NULL, '2024-06-17 15:41:20', 289);
INSERT INTO `sys_oper_log` VALUES (146, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"port_find\",\"className\":\"PortFind\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":30,\"columnName\":\"id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:25\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 15:24:43\",\"usableColumn\":false},{\"capJavaField\":\"BiologyId\",\"columnComment\":\"生物名称\",\"columnId\":31,\"columnName\":\"biology_id\",\"columnType\":\"varchar(600)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:25\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"biologyId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 15:24:43\",\"usableColumn\":false},{\"capJavaField\":\"PortId\",\"columnComment\":\"港口名称\",\"columnId\":32,\"columnName\":\"port_id\",\"columnType\":\"varchar(600)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:25\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"portId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 15:24:43\",\"usableColumn\":false},{\"capJavaField\":\"FirstFoundTime\",\"columnComment\":\"首次发现时间\",\"columnId\":33,\"columnName\":\"first_found_time\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 15:22:25\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInser', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 15:42:50', 101);
INSERT INTO `sys_oper_log` VALUES (147, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"u_port_find\"}', NULL, 0, NULL, '2024-06-17 15:42:52', 43);
INSERT INTO `sys_oper_log` VALUES (148, '国家发现生物', 1, 'com.ruoyi.info.controller.CountryFindController.add()', 'POST', 1, 'admin', NULL, '/info/country_find', '127.0.0.1', '内网IP', '{\"biologyNum\":212,\"countryId\":17,\"foundLocation\":\"12\",\"foundTime\":\"2024-06-04\",\"id\":10,\"latitude\":12,\"longitude\":12,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 16:23:17', 30);
INSERT INTO `sys_oper_log` VALUES (149, '国家发现生物', 2, 'com.ruoyi.info.controller.CountryFindController.edit()', 'PUT', 1, 'admin', NULL, '/info/country_find', '127.0.0.1', '内网IP', '{\"biologyId\":3,\"countryId\":20,\"foundLocation\":\"中国\",\"foundTime\":\"2019-01-06\",\"id\":1,\"latitude\":89.5,\"longitude\":45.1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:24:30', 19);
INSERT INTO `sys_oper_log` VALUES (150, '国家发现生物', 2, 'com.ruoyi.info.controller.CountryFindController.edit()', 'PUT', 1, 'admin', NULL, '/info/country_find', '127.0.0.1', '内网IP', '{\"biologyId\":4,\"countryId\":19,\"foundLocation\":\"中国\",\"foundTime\":\"2024-05-08\",\"id\":2,\"latitude\":45.78,\"longitude\":38.78,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:24:39', 16);
INSERT INTO `sys_oper_log` VALUES (151, '国家发现生物', 2, 'com.ruoyi.info.controller.CountryFindController.edit()', 'PUT', 1, 'admin', NULL, '/info/country_find', '127.0.0.1', '内网IP', '{\"biologyId\":4,\"countryId\":19,\"foundLocation\":\"中国\",\"foundTime\":\"2015-06-01\",\"id\":3,\"latitude\":45.7,\"longitude\":38.7,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:24:45', 13);
INSERT INTO `sys_oper_log` VALUES (152, '国家发现生物', 2, 'com.ruoyi.info.controller.CountryFindController.edit()', 'PUT', 1, 'admin', NULL, '/info/country_find', '127.0.0.1', '内网IP', '{\"biologyId\":2,\"countryId\":20,\"foundLocation\":\"中国\",\"foundTime\":\"1998-02-06\",\"id\":4,\"latitude\":45,\"longitude\":38,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:24:50', 13);
INSERT INTO `sys_oper_log` VALUES (153, '国家发现生物', 2, 'com.ruoyi.info.controller.CountryFindController.edit()', 'PUT', 1, 'admin', NULL, '/info/country_find', '127.0.0.1', '内网IP', '{\"biologyId\":5,\"countryId\":20,\"foundLocation\":\"中国\",\"foundTime\":\"2007-06-06\",\"id\":5,\"latitude\":65.2,\"longitude\":78.5,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:24:55', 13);
INSERT INTO `sys_oper_log` VALUES (154, '港口检查生物', 2, 'com.ruoyi.info.controller.PortCheckController.edit()', 'PUT', 1, 'admin', NULL, '/info/port_check', '127.0.0.1', '内网IP', '{\"abundance\":100,\"abundanceRate\":0.07,\"biologyId\":2,\"id\":1,\"params\":{},\"portId\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:35:40', 21);
INSERT INTO `sys_oper_log` VALUES (155, '港口检查生物', 2, 'com.ruoyi.info.controller.PortCheckController.edit()', 'PUT', 1, 'admin', NULL, '/info/port_check', '127.0.0.1', '内网IP', '{\"abundance\":100,\"abundanceRate\":0.07,\"biologyId\":3,\"biologyName\":\"洛氏角毛藻\\r\\n\",\"id\":1,\"params\":{},\"portId\":\"1\",\"portName\":\"塘沽港\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:37:34', 24);
INSERT INTO `sys_oper_log` VALUES (156, '港口检查生物', 2, 'com.ruoyi.info.controller.PortCheckController.edit()', 'PUT', 1, 'admin', NULL, '/info/port_check', '127.0.0.1', '内网IP', '{\"abundance\":100,\"abundanceRate\":0.07,\"biologyId\":2,\"id\":2,\"params\":{},\"portId\":\"塘沽港\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:37:40', 14);
INSERT INTO `sys_oper_log` VALUES (157, '港口检查生物', 2, 'com.ruoyi.info.controller.PortCheckController.edit()', 'PUT', 1, 'admin', NULL, '/info/port_check', '127.0.0.1', '内网IP', '{\"abundance\":100,\"abundanceRate\":0.07,\"biologyId\":3,\"id\":3,\"params\":{},\"portId\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:38:45', 11);
INSERT INTO `sys_oper_log` VALUES (158, '港口检查生物', 2, 'com.ruoyi.info.controller.PortCheckController.edit()', 'PUT', 1, 'admin', NULL, '/info/port_check', '127.0.0.1', '内网IP', '{\"abundance\":100,\"abundanceRate\":0.07,\"biologyId\":3,\"biologyName\":\"尺骨针杆藻\\r\\n\",\"id\":3,\"params\":{},\"portId\":\"1\",\"portName\":\"丹东港\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:40:03', 4);
INSERT INTO `sys_oper_log` VALUES (159, '港口检查生物', 2, 'com.ruoyi.info.controller.PortCheckController.edit()', 'PUT', 1, 'admin', NULL, '/info/port_check', '127.0.0.1', '内网IP', '{\"abundance\":100,\"abundanceRate\":0.07,\"biologyId\":2,\"biologyName\":\"洛氏角毛藻\\r\\n\",\"id\":2,\"params\":{},\"portId\":\"3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:40:06', 12);
INSERT INTO `sys_oper_log` VALUES (160, '港口检查生物', 2, 'com.ruoyi.info.controller.PortCheckController.edit()', 'PUT', 1, 'admin', NULL, '/info/port_check', '127.0.0.1', '内网IP', '{\"abundance\":100,\"abundanceRate\":0.07,\"biologyId\":2,\"biologyName\":\"洛氏角毛藻\\r\\n\",\"id\":2,\"params\":{},\"portId\":\"2\",\"portName\":\"大连港\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:40:12', 12);
INSERT INTO `sys_oper_log` VALUES (161, '港口检查生物', 2, 'com.ruoyi.info.controller.PortCheckController.edit()', 'PUT', 1, 'admin', NULL, '/info/port_check', '127.0.0.1', '内网IP', '{\"abundance\":100,\"abundanceRate\":0.07,\"biologyId\":2,\"biologyName\":\"洛氏角毛藻\\r\\n\",\"id\":2,\"params\":{},\"portId\":\"2\",\"portName\":\"塘沽港\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:40:17', 3);
INSERT INTO `sys_oper_log` VALUES (162, '港口检查生物', 2, 'com.ruoyi.info.controller.PortCheckController.edit()', 'PUT', 1, 'admin', NULL, '/info/port_check', '127.0.0.1', '内网IP', '{\"abundance\":121,\"abundanceRate\":0.62,\"biologyId\":4,\"id\":8,\"params\":{},\"portId\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:40:23', 16);
INSERT INTO `sys_oper_log` VALUES (163, '港口检查生物', 2, 'com.ruoyi.info.controller.PortCheckController.edit()', 'PUT', 1, 'admin', NULL, '/info/port_check', '127.0.0.1', '内网IP', '{\"abundance\":90,\"abundanceRate\":0.07,\"biologyId\":3,\"id\":6,\"params\":{},\"portId\":\"温州港\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:40:28', 12);
INSERT INTO `sys_oper_log` VALUES (164, '港口检查生物', 2, 'com.ruoyi.info.controller.PortCheckController.edit()', 'PUT', 1, 'admin', NULL, '/info/port_check', '127.0.0.1', '内网IP', '{\"abundance\":90,\"abundanceRate\":0.07,\"biologyId\":3,\"biologyName\":\"尺骨针杆藻\\r\\n\",\"id\":6,\"params\":{},\"portId\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:40:31', 4);
INSERT INTO `sys_oper_log` VALUES (165, '港口检查生物', 2, 'com.ruoyi.info.controller.PortCheckController.edit()', 'PUT', 1, 'admin', NULL, '/info/port_check', '127.0.0.1', '内网IP', '{\"abundance\":100,\"abundanceRate\":0.07,\"biologyId\":3,\"biologyName\":\"尺骨针杆藻\\r\\n\",\"id\":3,\"params\":{},\"portId\":\"2\",\"portName\":\"丹东港\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:40:59', 3);
INSERT INTO `sys_oper_log` VALUES (166, '港口检查生物', 2, 'com.ruoyi.info.controller.PortCheckController.edit()', 'PUT', 1, 'admin', NULL, '/info/port_check', '127.0.0.1', '内网IP', '{\"abundance\":100,\"abundanceRate\":0.07,\"biologyId\":3,\"biologyName\":\"尺骨针杆藻\\r\\n\",\"id\":3,\"params\":{},\"portId\":\"2\",\"portName\":\"塘沽港\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:41:03', 3);
INSERT INTO `sys_oper_log` VALUES (167, '港口发现生物', 2, 'com.ruoyi.info.controller.PortFindController.edit()', 'PUT', 1, 'admin', NULL, '/info/port_find', '127.0.0.1', '内网IP', '{\"biologyId\":3,\"firstFoundLocation\":\"新西兰\",\"firstFoundTime\":\"2020-06-09\",\"id\":1,\"params\":{},\"portId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:47:06', 29);
INSERT INTO `sys_oper_log` VALUES (168, '港口发现生物', 2, 'com.ruoyi.info.controller.PortFindController.edit()', 'PUT', 1, 'admin', NULL, '/info/port_find', '127.0.0.1', '内网IP', '{\"biologyId\":2,\"firstFoundLocation\":\"新西兰\",\"firstFoundTime\":\"2011-07-06\",\"id\":2,\"params\":{},\"portId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:48:11', 23);
INSERT INTO `sys_oper_log` VALUES (169, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"中国\",\"id\":1,\"name\":\"丹东港\",\"num\":222024001,\"params\":{},\"province\":\"辽宁\",\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:51:00', 7);
INSERT INTO `sys_oper_log` VALUES (170, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"新加坡\",\"id\":5,\"name\":\"新加坡港\",\"num\":222024004,\"params\":{},\"province\":\"新加坡\",\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:51:04', 4);
INSERT INTO `sys_oper_log` VALUES (171, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"新加坡\",\"id\":5,\"name\":\"新加坡港\",\"num\":222024004,\"params\":{},\"province\":\"新加坡\",\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:51:07', 3);
INSERT INTO `sys_oper_log` VALUES (172, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"新加坡\",\"id\":5,\"name\":\"新加坡港\",\"num\":222024004,\"params\":{},\"province\":\"新加坡\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:51:09', 3);
INSERT INTO `sys_oper_log` VALUES (173, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"新加坡\",\"id\":5,\"name\":\"新加坡港\",\"num\":222024004,\"params\":{},\"province\":\"新加坡\",\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:53:35', 6);
INSERT INTO `sys_oper_log` VALUES (174, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"新加坡\",\"id\":5,\"name\":\"新加坡港\",\"num\":222024004,\"params\":{},\"province\":\"新加坡\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:53:45', 2);
INSERT INTO `sys_oper_log` VALUES (175, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"新加坡\",\"id\":5,\"name\":\"新加坡港\",\"num\":222024004,\"params\":{},\"province\":\"新加坡\",\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:54:24', 22);
INSERT INTO `sys_oper_log` VALUES (176, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"新加坡\",\"id\":5,\"name\":\"0\",\"num\":222024004,\"params\":{},\"province\":\"新加坡\",\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:55:06', 3);
INSERT INTO `sys_oper_log` VALUES (177, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"新加坡\",\"id\":5,\"name\":\"0\",\"num\":222024004,\"params\":{},\"province\":\"新加坡\",\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:55:16', 3);
INSERT INTO `sys_oper_log` VALUES (178, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"新加坡\",\"id\":5,\"name\":\"0\",\"num\":222024004,\"params\":{},\"province\":\"新加坡\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:55:24', 12);
INSERT INTO `sys_oper_log` VALUES (179, '港口信息管理', 1, 'com.ruoyi.info.controller.PortController.add()', 'POST', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"18\",\"id\":18,\"name\":\"12\",\"num\":12,\"params\":{},\"province\":\"12\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:56:54', 15);
INSERT INTO `sys_oper_log` VALUES (180, '港口信息管理', 1, 'com.ruoyi.info.controller.PortController.add()', 'POST', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"21\",\"id\":19,\"name\":\"23\",\"num\":23,\"params\":{},\"province\":\"23\",\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:57:10', 4);
INSERT INTO `sys_oper_log` VALUES (181, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"18\",\"id\":18,\"name\":\"12\",\"num\":12,\"params\":{},\"province\":\"12\",\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:57:15', 11);
INSERT INTO `sys_oper_log` VALUES (182, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"18\",\"id\":18,\"name\":\"0\",\"num\":12,\"params\":{},\"province\":\"12\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:57:19', 12);
INSERT INTO `sys_oper_log` VALUES (183, '港口信息管理', 1, 'com.ruoyi.info.controller.PortController.add()', 'POST', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"17\",\"id\":20,\"name\":\"23\",\"num\":23,\"params\":{},\"province\":\"23\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:57:25', 15);
INSERT INTO `sys_oper_log` VALUES (184, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"21\",\"id\":19,\"name\":\"23\",\"num\":23,\"params\":{},\"province\":\"23\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:57:31', 5);
INSERT INTO `sys_oper_log` VALUES (185, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"21\",\"id\":19,\"name\":\"1\",\"num\":23,\"params\":{},\"province\":\"23\",\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:58:22', 8);
INSERT INTO `sys_oper_log` VALUES (186, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"21\",\"id\":19,\"name\":\"1\",\"num\":23,\"params\":{},\"province\":\"23\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:58:25', 4);
INSERT INTO `sys_oper_log` VALUES (187, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"21\",\"id\":19,\"name\":\"1\",\"num\":23,\"params\":{},\"province\":\"23\",\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:58:29', 13);
INSERT INTO `sys_oper_log` VALUES (188, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"18\",\"id\":18,\"name\":\"1\",\"num\":12,\"params\":{},\"province\":\"12\",\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:58:32', 7);
INSERT INTO `sys_oper_log` VALUES (189, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"18\",\"id\":18,\"name\":\"山东港\",\"num\":12,\"params\":{},\"province\":\"12\",\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:58:53', 4);
INSERT INTO `sys_oper_log` VALUES (190, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"21\",\"id\":19,\"name\":\"王八港\",\"num\":23,\"params\":{},\"province\":\"23\",\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 18:59:03', 5);
INSERT INTO `sys_oper_log` VALUES (191, '港口检查生物', 2, 'com.ruoyi.info.controller.PortCheckController.edit()', 'PUT', 1, 'admin', NULL, '/info/port_check', '127.0.0.1', '内网IP', '{\"abundance\":100,\"abundanceRate\":0.07,\"biologyId\":3,\"biologyName\":\"尺骨针杆藻\\r\\n\",\"id\":3,\"params\":{},\"portId\":19,\"portName\":\"塘沽港\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 19:00:16', 16);
INSERT INTO `sys_oper_log` VALUES (192, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"21\",\"id\":19,\"name\":\"王八港1111\",\"num\":23,\"params\":{},\"province\":\"23\",\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 19:00:24', 11);
INSERT INTO `sys_oper_log` VALUES (193, '港口信息管理', 2, 'com.ruoyi.info.controller.PortController.edit()', 'PUT', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"新加坡\",\"id\":5,\"name\":\"1\",\"num\":222024004,\"params\":{},\"province\":\"新加坡\",\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 19:02:51', 11);
INSERT INTO `sys_oper_log` VALUES (194, '国家信息管理', 1, 'com.ruoyi.info.controller.CountryController.add()', 'POST', 1, 'admin', NULL, '/info/country', '127.0.0.1', '内网IP', '{\"id\":222024014,\"isTrader\":\"Y\",\"name\":\"23\",\"num\":23,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 19:19:03', 7);
INSERT INTO `sys_oper_log` VALUES (195, '生物信息管理', 1, 'com.ruoyi.info.controller.BiologyController.add()', 'POST', 1, 'admin', NULL, '/info/biology', '127.0.0.1', '内网IP', '{\"harm\":\"23\",\"id\":2024024,\"latin\":\"23\",\"men\":\"23\",\"name\":\"23\",\"num\":23,\"params\":{},\"worldDistribution\":\"23\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 19:19:10', 7);
INSERT INTO `sys_oper_log` VALUES (196, '国家信息管理', 1, 'com.ruoyi.info.controller.CountryController.add()', 'POST', 1, 'admin', NULL, '/info/country', '127.0.0.1', '内网IP', '{\"id\":222024015,\"isTrader\":\"N\",\"name\":\"23\",\"num\":23,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 19:19:16', 13);
INSERT INTO `sys_oper_log` VALUES (197, '港口信息管理', 1, 'com.ruoyi.info.controller.PortController.add()', 'POST', 1, 'admin', NULL, '/info/port', '127.0.0.1', '内网IP', '{\"countryId\":\"17\",\"id\":21,\"name\":\"23\",\"num\":23,\"params\":{},\"province\":\"23\",\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 19:19:22', 11);
INSERT INTO `sys_oper_log` VALUES (198, '国家发现生物', 1, 'com.ruoyi.info.controller.CountryFindController.add()', 'POST', 1, 'admin', NULL, '/info/country_find', '127.0.0.1', '内网IP', '{\"biologyId\":2,\"countryId\":18,\"foundLocation\":\"23\",\"foundTime\":\"2024-06-04\",\"id\":11,\"latitude\":23,\"longitude\":23,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 19:19:30', 14);
INSERT INTO `sys_oper_log` VALUES (199, '港口检查生物', 1, 'com.ruoyi.info.controller.PortCheckController.add()', 'POST', 1, 'admin', NULL, '/info/port_check', '127.0.0.1', '内网IP', '{\"abundance\":23,\"abundanceRate\":23,\"biologyId\":2,\"id\":11,\"params\":{},\"portId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 19:19:37', 13);
INSERT INTO `sys_oper_log` VALUES (200, '港口发现生物', 1, 'com.ruoyi.info.controller.PortFindController.add()', 'POST', 1, 'admin', NULL, '/info/port_find', '127.0.0.1', '内网IP', '{\"biologyId\":2,\"firstFoundLocation\":\"2323\",\"firstFoundTime\":\"2024-05-28\",\"id\":20240163,\"params\":{},\"portId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 19:20:22', 13);
INSERT INTO `sys_oper_log` VALUES (201, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, '15576364885', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:36:46\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"测试部门\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":105,\"email\":\"admin@qq.com\",\"loginDate\":\"2024-06-17 14:36:46\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"15576364885\",\"userId\":2,\"userName\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 21:05:31', 52);
INSERT INTO `sys_oper_log` VALUES (202, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, '15576364885', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-17 14:36:46\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"15576364885\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 21:06:17', 86);
INSERT INTO `sys_oper_log` VALUES (203, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, '15576364885', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-17 14:36:46\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,4],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"15576364885\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 21:06:33', 108);
INSERT INTO `sys_oper_log` VALUES (204, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, '15576364885', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-17 14:36:46\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,4,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"系统管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"15576364885\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 21:07:44', 125);
INSERT INTO `sys_oper_log` VALUES (205, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, '15576364885', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-17 14:36:46\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,4,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035],\"params\":{},\"remark\":\"系统管理员\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"系统管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"15576364885\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 21:07:53', 38);
INSERT INTO `sys_oper_log` VALUES (206, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, '15576364885', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/06/17/blob_20240617211612A001.png\",\"code\":200}', 0, NULL, '2024-06-17 21:16:12', 102);
INSERT INTO `sys_oper_log` VALUES (207, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, '15576364885', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:36:46\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"研发部门\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{\"@type\":\"java.util.HashMap\"},\"parentId\":101,\"status\":\"0\"},\"deptId\":103,\"email\":\"15576364885@163.com\",\"loginDate\":\"2024-06-17 21:07:14\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"若依\",\"params\":{\"@type\":\"java.util.HashMap\"},\"phonenumber\":\"15576364885\",\"remark\":\"管理员\",\"roles\":[{\"admin\":true,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{\"@type\":\"java.util.HashMap\"},\"roleId\":1,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"roleSort\":1,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"userId\":1,\"userName\":\"15576364885\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 21:16:23', 54);
INSERT INTO `sys_oper_log` VALUES (208, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, '15576364885', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:36:46\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"研发部门\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{\"@type\":\"java.util.HashMap\"},\"parentId\":101,\"status\":\"0\"},\"deptId\":103,\"email\":\"15576364885@163.com\",\"loginDate\":\"2024-06-17 21:07:14\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"15576364885\",\"params\":{\"@type\":\"java.util.HashMap\"},\"phonenumber\":\"15576364885\",\"remark\":\"管理员\",\"roles\":[{\"admin\":true,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{\"@type\":\"java.util.HashMap\"},\"roleId\":1,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"roleSort\":1,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"userId\":1,\"userName\":\"15576364885\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-17 21:16:27', 22);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-06-17 14:36:46', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-06-17 14:36:46', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-06-17 14:36:46', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '系统管理员', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-06-17 14:36:46', '15576364885', '2024-06-17 21:07:53', '系统管理员');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 2000);
INSERT INTO `sys_role_menu` VALUES (2, 2001);
INSERT INTO `sys_role_menu` VALUES (2, 2002);
INSERT INTO `sys_role_menu` VALUES (2, 2003);
INSERT INTO `sys_role_menu` VALUES (2, 2004);
INSERT INTO `sys_role_menu` VALUES (2, 2005);
INSERT INTO `sys_role_menu` VALUES (2, 2006);
INSERT INTO `sys_role_menu` VALUES (2, 2007);
INSERT INTO `sys_role_menu` VALUES (2, 2008);
INSERT INTO `sys_role_menu` VALUES (2, 2009);
INSERT INTO `sys_role_menu` VALUES (2, 2010);
INSERT INTO `sys_role_menu` VALUES (2, 2011);
INSERT INTO `sys_role_menu` VALUES (2, 2012);
INSERT INTO `sys_role_menu` VALUES (2, 2013);
INSERT INTO `sys_role_menu` VALUES (2, 2014);
INSERT INTO `sys_role_menu` VALUES (2, 2015);
INSERT INTO `sys_role_menu` VALUES (2, 2016);
INSERT INTO `sys_role_menu` VALUES (2, 2017);
INSERT INTO `sys_role_menu` VALUES (2, 2018);
INSERT INTO `sys_role_menu` VALUES (2, 2019);
INSERT INTO `sys_role_menu` VALUES (2, 2020);
INSERT INTO `sys_role_menu` VALUES (2, 2021);
INSERT INTO `sys_role_menu` VALUES (2, 2022);
INSERT INTO `sys_role_menu` VALUES (2, 2023);
INSERT INTO `sys_role_menu` VALUES (2, 2024);
INSERT INTO `sys_role_menu` VALUES (2, 2025);
INSERT INTO `sys_role_menu` VALUES (2, 2026);
INSERT INTO `sys_role_menu` VALUES (2, 2027);
INSERT INTO `sys_role_menu` VALUES (2, 2028);
INSERT INTO `sys_role_menu` VALUES (2, 2029);
INSERT INTO `sys_role_menu` VALUES (2, 2030);
INSERT INTO `sys_role_menu` VALUES (2, 2031);
INSERT INTO `sys_role_menu` VALUES (2, 2032);
INSERT INTO `sys_role_menu` VALUES (2, 2033);
INSERT INTO `sys_role_menu` VALUES (2, 2034);
INSERT INTO `sys_role_menu` VALUES (2, 2035);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, '15576364885', '15576364885', '00', '15576364885@163.com', '15576364885', '0', '/profile/avatar/2024/06/17/blob_20240617211612A001.png', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-06-17 21:07:14', 'admin', '2024-06-17 14:36:46', '', '2024-06-17 21:16:27', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'admin', '若依', '00', 'admin@qq.com', '15666666666', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-06-17 21:12:55', 'admin', '2024-06-17 14:36:46', '15576364885', '2024-06-17 21:12:55', '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for u_biology
-- ----------------------------
DROP TABLE IF EXISTS `u_biology`;
CREATE TABLE `u_biology`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num` bigint(20) NULL DEFAULT NULL COMMENT '生物编号',
  `name` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生物名称',
  `men` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生物门属',
  `harm` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生物危害',
  `world_distribution` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '世界分布',
  `latin` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拉丁名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2024024 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '生物' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_biology
-- ----------------------------
INSERT INTO `u_biology` VALUES (1, 2024010, '梭甲藻', '甲藻门\n\n\n\n\n\n\n\n\n\n', '甲藻大量繁殖使水分层,并发出腥臭味,并且使水中溶解氧急剧下降,导致养殖动物鳃负担过重或直接附着在鳃丝上出现黄鳃肿鳃等现象;', '各地', 'Ceratium fusus\r\n');
INSERT INTO `u_biology` VALUES (2, 2024008, '洛氏角毛藻\r\n', '硅藻门', '引起赤潮', '主要分布在北半球，', 'Chaetoceras lorenzianus\r\n');
INSERT INTO `u_biology` VALUES (3, 2024009, '尺骨针杆藻\r\n', '硅藻门', '未知', '分布在贵州,云南,江西,福建。长江,嘉陵江,赖溪河,小安溪,笋溪河,壁南河,五布河。', 'Stauroneis anceps\r\n');
INSERT INTO `u_biology` VALUES (4, 2024007, '海链藻\r\n', '硅藻门', '生殖过盛,形成赤潮,使水质恶劣', '各地', 'Thalassiosirasp.\r\n');
INSERT INTO `u_biology` VALUES (5, 2024006, '绿球藻\r\n', '绿藻门', '未知', '各地', 'Cladophora aegagropila (Linn.) Trevisan');
INSERT INTO `u_biology` VALUES (6, 2024005, '二角盘星藻\r\n', '绿藻门', '未知', '各地生长在湖泊、池塘常见种类。', 'Pediatrum duplex\r\n');
INSERT INTO `u_biology` VALUES (7, 2024004, '单角盘星藻\r\n', '绿藻门', '未知', '各地湖泊、池塘常见', 'Pediastrum simplex\r\n');
INSERT INTO `u_biology` VALUES (8, 2024003, '平裂藻\r\n', '蓝藻门', '未知', '各地，多生活在静水水体，喜较肥沃水质或长有水草的沿岸区。', 'Merismopedia sp.\r\nMerismopedia sp.\r\n');
INSERT INTO `u_biology` VALUES (9, 2024001, '微囊藻\r\n', '蓝藻门', '其毒素（称为微囊藻毒素，microcystin）会导致肝脏、胆囊病变', '各地', 'Microcystis sp.\r\n');
INSERT INTO `u_biology` VALUES (10, 2024002, '色球藻\r\n', '蓝藻门', '未知', '各地', 'Chroococcussp.\r\n');
INSERT INTO `u_biology` VALUES (2024024, 23, '23', '23', '23', '23', '23');

-- ----------------------------
-- Table structure for u_country
-- ----------------------------
DROP TABLE IF EXISTS `u_country`;
CREATE TABLE `u_country`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num` bigint(20) NULL DEFAULT NULL COMMENT '国家编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国家名称',
  `status` tinyint(4) NULL DEFAULT 0,
  `is_trader` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为贸易国家',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 222024014 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_country
-- ----------------------------
INSERT INTO `u_country` VALUES (17, 222024001, '中国', 0, 'Y');
INSERT INTO `u_country` VALUES (18, 222024004, '新加坡', 0, 'Y');
INSERT INTO `u_country` VALUES (19, 222024005, '美国', 0, 'N');
INSERT INTO `u_country` VALUES (20, 222024006, '荷兰', 0, 'Y');
INSERT INTO `u_country` VALUES (21, 222024007, '新西兰', 0, 'Y');
INSERT INTO `u_country` VALUES (222024014, 23, '23', 0, 'Y');
INSERT INTO `u_country` VALUES (222024015, 23, '23', 0, 'N');

-- ----------------------------
-- Table structure for u_country_find
-- ----------------------------
DROP TABLE IF EXISTS `u_country_find`;
CREATE TABLE `u_country_find`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `biology_id` bigint(20) NULL DEFAULT NULL COMMENT '生物编号',
  `country_id` bigint(20) NULL DEFAULT NULL COMMENT '国家名称',
  `found_time` date NULL DEFAULT NULL COMMENT '发现时间',
  `found_location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发现位置',
  `longitude` decimal(10, 2) NULL DEFAULT NULL COMMENT '经度',
  `latitude` decimal(10, 2) NULL DEFAULT NULL COMMENT '纬度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_country_find
-- ----------------------------
INSERT INTO `u_country_find` VALUES (1, 3, 20, '2019-01-06', '中国', 45.10, 89.50);
INSERT INTO `u_country_find` VALUES (2, 4, 19, '2024-05-08', '中国', 38.78, 45.78);
INSERT INTO `u_country_find` VALUES (3, 4, 19, '2015-06-01', '中国', 38.70, 45.70);
INSERT INTO `u_country_find` VALUES (4, 2, 20, '1998-02-06', '中国', 38.00, 45.00);
INSERT INTO `u_country_find` VALUES (5, 5, 20, '2007-06-06', '中国', 78.50, 65.20);
INSERT INTO `u_country_find` VALUES (6, 2024006, 222024001, '2015-06-06', '中国', 35.00, 38.00);
INSERT INTO `u_country_find` VALUES (7, 2024008, 222024005, '2017-07-05', '美国', 45.00, 45.20);
INSERT INTO `u_country_find` VALUES (8, 2024003, 222024006, '2016-01-31', '荷兰', 13.78, 15.62);
INSERT INTO `u_country_find` VALUES (10, 212, 17, '2024-06-04', '12', 12.00, 12.00);
INSERT INTO `u_country_find` VALUES (11, 2, 18, '2024-06-04', '23', 23.00, 23.00);

-- ----------------------------
-- Table structure for u_port
-- ----------------------------
DROP TABLE IF EXISTS `u_port`;
CREATE TABLE `u_port`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num` bigint(20) NULL DEFAULT NULL COMMENT '港口编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '港口名称',
  `country_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国家名称',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所在省份',
  `status` int(11) NULL DEFAULT NULL COMMENT '港口状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '港口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_port
-- ----------------------------
INSERT INTO `u_port` VALUES (1, 222024001, '丹东港', '中国', '辽宁', 0);
INSERT INTO `u_port` VALUES (2, 222024001, '塘沽港', '中国', '天津', 0);
INSERT INTO `u_port` VALUES (3, 222024001, '大连港', '中国', '辽宁', 0);
INSERT INTO `u_port` VALUES (4, 222024001, '天津港', '中国', '天津', 0);
INSERT INTO `u_port` VALUES (5, 222024004, '1', '新加坡', '新加坡', 0);
INSERT INTO `u_port` VALUES (6, 222024001, '杭州港', '中国', '浙江', NULL);
INSERT INTO `u_port` VALUES (7, 222024001, '温州港', '中国', '浙江', NULL);
INSERT INTO `u_port` VALUES (8, 222024005, '纽约港', '美国', '美国', NULL);
INSERT INTO `u_port` VALUES (9, 222024001, '舟山港', '中国', '浙江', NULL);
INSERT INTO `u_port` VALUES (10, 222024001, '营口港', '中国', '辽宁', NULL);
INSERT INTO `u_port` VALUES (11, 222024006, '鹿特丹港', '荷兰', '荷兰', NULL);
INSERT INTO `u_port` VALUES (18, 12, '山东港', '18', '12', 0);
INSERT INTO `u_port` VALUES (19, 23, '王八港1111', '21', '23', 0);
INSERT INTO `u_port` VALUES (20, 23, '23', '17', '23', 1);
INSERT INTO `u_port` VALUES (21, 23, '23', '17', '23', 0);

-- ----------------------------
-- Table structure for u_port_check
-- ----------------------------
DROP TABLE IF EXISTS `u_port_check`;
CREATE TABLE `u_port_check`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `biology_id` bigint(20) NULL DEFAULT NULL COMMENT '生物编号',
  `port_id` bigint(20) NULL DEFAULT NULL COMMENT '港口名称',
  `abundance` int(11) NULL DEFAULT NULL COMMENT '丰富度',
  `abundance_rate` decimal(10, 4) NULL DEFAULT NULL COMMENT '丰富度百分比',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of u_port_check
-- ----------------------------
INSERT INTO `u_port_check` VALUES (1, 3, 1, 100, 0.0700);
INSERT INTO `u_port_check` VALUES (2, 2, 2, 100, 0.0700);
INSERT INTO `u_port_check` VALUES (3, 3, 19, 100, 0.0700);
INSERT INTO `u_port_check` VALUES (4, 3, 1, 380, 0.0300);
INSERT INTO `u_port_check` VALUES (5, 3, 1, 50, 0.0300);
INSERT INTO `u_port_check` VALUES (6, 3, 2, 90, 0.0700);
INSERT INTO `u_port_check` VALUES (7, 3, 1, 78, 0.0500);
INSERT INTO `u_port_check` VALUES (8, 4, 2, 121, 0.6200);
INSERT INTO `u_port_check` VALUES (11, 2, 1, 23, 23.0000);

-- ----------------------------
-- Table structure for u_port_find
-- ----------------------------
DROP TABLE IF EXISTS `u_port_find`;
CREATE TABLE `u_port_find`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `biology_id` bigint(20) NULL DEFAULT NULL COMMENT '生物名称',
  `port_id` bigint(20) NULL DEFAULT NULL COMMENT '港口名称',
  `first_found_time` date NULL DEFAULT NULL COMMENT '首次发现时间',
  `first_found_location` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '首次发现地点',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 20240163 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_port_find
-- ----------------------------
INSERT INTO `u_port_find` VALUES (1, 3, 2, '2020-06-09', '新西兰');
INSERT INTO `u_port_find` VALUES (2, 2, 3, '2011-07-06', '新西兰');
INSERT INTO `u_port_find` VALUES (3, 0, 0, '2018-06-06', '中国');
INSERT INTO `u_port_find` VALUES (4, 0, 0, '2017-02-06', '新加坡');
INSERT INTO `u_port_find` VALUES (5, 0, 0, '2024-05-01', '中国');
INSERT INTO `u_port_find` VALUES (6, 0, 0, '2016-07-06', '中国');
INSERT INTO `u_port_find` VALUES (7, 0, 0, '2005-02-06', '中国');
INSERT INTO `u_port_find` VALUES (8, 0, 0, '2024-04-10', '荷兰');
INSERT INTO `u_port_find` VALUES (20240163, 2, 3, '2024-05-28', '2323');

SET FOREIGN_KEY_CHECKS = 1;
