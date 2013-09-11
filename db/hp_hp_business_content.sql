/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : tmp_hp

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2013-09-11 11:28:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hp_hp_business_content
-- ----------------------------
DROP TABLE IF EXISTS `hp_hp_business_content`;
CREATE TABLE `hp_hp_business_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`) USING BTREE,
  KEY `idx_checkout` (`checked_out`) USING BTREE,
  KEY `idx_state` (`state`) USING BTREE,
  KEY `idx_catid` (`catid`) USING BTREE,
  KEY `idx_createdby` (`created_by`) USING BTREE,
  KEY `idx_featured_catid` (`featured`,`catid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
