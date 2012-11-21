/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : hanhphuc_vn

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2012-11-21 17:07:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `hp_wedding_album_photos`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_album_photos`;
CREATE TABLE `hp_wedding_album_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `photos` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=793 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_album_photos
-- ----------------------------
INSERT INTO `hp_wedding_album_photos` VALUES ('9', '6', 'Sunset', 'images/wedding/album/thumb-421282836538.jpg', 'images/wedding/album/photo-61282836538.jpg', '2010-08-26 22:28:58');
INSERT INTO `hp_wedding_album_photos` VALUES ('8', '6', 'blue hill', 'images/wedding/album/thumb-421282836521.jpg', 'images/wedding/album/photo-61282836521.jpg', '2010-08-26 22:28:41');
INSERT INTO `hp_wedding_album_photos` VALUES ('7', '6', 'beer', 'images/wedding/album/thumb-421282836492.jpg', 'images/wedding/album/photo-61282836492.jpg', '2010-08-26 22:28:12');
INSERT INTO `hp_wedding_album_photos` VALUES ('10', '6', 'water', 'images/wedding/album/thumb-421282836558.jpg', 'images/wedding/album/photo-61282836558.jpg', '2010-08-26 22:29:18');
INSERT INTO `hp_wedding_album_photos` VALUES ('537', '113', '', 'images/wedding/album/thumb-2201299207789.jpg', 'images/wedding/album/photo-1131299207789.jpg', '2011-03-04 10:03:09');
INSERT INTO `hp_wedding_album_photos` VALUES ('538', '113', 'Ảnh 4', 'images/wedding/album/thumb-2201299207864.jpg', 'images/wedding/album/photo-1131299207864.jpg', '2011-03-04 10:04:24');
INSERT INTO `hp_wedding_album_photos` VALUES ('539', '23', 'namvan1', 'images/wedding/album/thumb-761299722160.jpg', 'images/wedding/album/photo-231299722160.jpg', '2011-03-10 08:56:00');
INSERT INTO `hp_wedding_album_photos` VALUES ('540', '23', 'namvan2', 'images/wedding/album/thumb-761299722262.jpg', 'images/wedding/album/photo-231299722262.jpg', '2011-03-10 08:57:42');
INSERT INTO `hp_wedding_album_photos` VALUES ('541', '23', 'namvan3', 'images/wedding/album/thumb-761299722282.jpg', 'images/wedding/album/photo-231299722282.jpg', '2011-03-10 08:58:02');
INSERT INTO `hp_wedding_album_photos` VALUES ('542', '23', 'namvan4', 'images/wedding/album/thumb-761299722293.jpg', 'images/wedding/album/photo-231299722293.jpg', '2011-03-10 08:58:13');
INSERT INTO `hp_wedding_album_photos` VALUES ('543', '23', 'namvan5', 'images/wedding/album/thumb-761299722306.jpg', 'images/wedding/album/photo-231299722306.jpg', '2011-03-10 08:58:26');
INSERT INTO `hp_wedding_album_photos` VALUES ('544', '23', 'namvan6', 'images/wedding/album/thumb-761299722317.jpg', 'images/wedding/album/photo-231299722317.jpg', '2011-03-10 08:58:37');
INSERT INTO `hp_wedding_album_photos` VALUES ('545', '23', 'namvan7', 'images/wedding/album/thumb-761299722331.jpg', 'images/wedding/album/photo-231299722331.jpg', '2011-03-10 08:58:51');
INSERT INTO `hp_wedding_album_photos` VALUES ('546', '23', 'namvan8', 'images/wedding/album/thumb-761299722344.jpg', 'images/wedding/album/photo-231299722344.jpg', '2011-03-10 08:59:04');
INSERT INTO `hp_wedding_album_photos` VALUES ('547', '23', 'namvan9', 'images/wedding/album/thumb-761299722355.jpg', 'images/wedding/album/photo-231299722355.jpg', '2011-03-10 08:59:15');
INSERT INTO `hp_wedding_album_photos` VALUES ('548', '23', 'namvan10', 'images/wedding/album/thumb-761299722369.jpg', 'images/wedding/album/photo-231299722369.jpg', '2011-03-10 08:59:29');
INSERT INTO `hp_wedding_album_photos` VALUES ('549', '23', 'namvan11', 'images/wedding/album/thumb-761299722380.jpg', 'images/wedding/album/photo-231299722380.jpg', '2011-03-10 08:59:40');
INSERT INTO `hp_wedding_album_photos` VALUES ('261', '8', 'Ảnh phóng 1', 'images/wedding/album/thumb-541286944256.jpg', 'images/wedding/album/photo-81286944256.jpg', '2010-10-13 11:30:56');
INSERT INTO `hp_wedding_album_photos` VALUES ('262', '8', 'Ảnh phóng 2', 'images/wedding/album/thumb-541286944290.jpg', 'images/wedding/album/photo-81286944290.jpg', '2010-10-13 11:31:30');
INSERT INTO `hp_wedding_album_photos` VALUES ('263', '8', 'Ảnh phóng 3', 'images/wedding/album/thumb-541286944335.jpg', 'images/wedding/album/photo-81286944335.jpg', '2010-10-13 11:32:15');
INSERT INTO `hp_wedding_album_photos` VALUES ('29', '6', 'Test 1', 'images/wedding/album/thumb-421284602981.jpg', 'images/wedding/album/photo-61284602981.jpg', '2010-09-16 09:09:41');
INSERT INTO `hp_wedding_album_photos` VALUES ('536', '113', '', 'images/wedding/album/thumb-2201299207753.jpg', 'images/wedding/album/photo-1131299207753.jpg', '2011-03-04 10:02:33');
INSERT INTO `hp_wedding_album_photos` VALUES ('48', '6', 'kkk', 'images/wedding/album/thumb-421284626883.jpg', 'images/wedding/album/photo-61284626883.jpg', '2010-09-16 15:48:03');
INSERT INTO `hp_wedding_album_photos` VALUES ('49', '6', 'oo', 'images/wedding/album/thumb-421284626911.jpg', 'images/wedding/album/photo-61284626911.jpg', '2010-09-16 15:48:31');
INSERT INTO `hp_wedding_album_photos` VALUES ('99', '17', '', 'images/wedding/album/thumb-921285907350.jpg', 'images/wedding/album/photo-171285907350.jpg', '2010-10-01 11:29:10');
INSERT INTO `hp_wedding_album_photos` VALUES ('110', '17', '', 'images/wedding/album/thumb-921285907532.jpg', 'images/wedding/album/photo-171285907532.jpg', '2010-10-01 11:32:12');
INSERT INTO `hp_wedding_album_photos` VALUES ('97', '17', '', 'images/wedding/album/thumb-921285907321.jpg', 'images/wedding/album/photo-171285907321.jpg', '2010-10-01 11:28:41');
INSERT INTO `hp_wedding_album_photos` VALUES ('95', '17', '', 'images/wedding/album/thumb-921285907285.jpg', 'images/wedding/album/photo-171285907285.jpg', '2010-10-01 11:28:05');
INSERT INTO `hp_wedding_album_photos` VALUES ('96', '17', '', 'images/wedding/album/thumb-921285907309.jpg', 'images/wedding/album/photo-171285907309.jpg', '2010-10-01 11:28:29');
INSERT INTO `hp_wedding_album_photos` VALUES ('93', '17', '', 'images/wedding/album/thumb-921285907262.jpg', 'images/wedding/album/photo-171285907262.jpg', '2010-10-01 11:27:42');
INSERT INTO `hp_wedding_album_photos` VALUES ('92', '17', '', 'images/wedding/album/thumb-921285907248.jpg', 'images/wedding/album/photo-171285907248.jpg', '2010-10-01 11:27:28');
INSERT INTO `hp_wedding_album_photos` VALUES ('91', '17', '', 'images/wedding/album/thumb-921285907227.jpg', 'images/wedding/album/photo-171285907227.jpg', '2010-10-01 11:27:07');
INSERT INTO `hp_wedding_album_photos` VALUES ('90', '17', '', 'images/wedding/album/thumb-921285907209.jpg', 'images/wedding/album/photo-171285907209.jpg', '2010-10-01 11:26:49');
INSERT INTO `hp_wedding_album_photos` VALUES ('89', '17', '', 'images/wedding/album/thumb-921285907193.jpg', 'images/wedding/album/photo-171285907193.jpg', '2010-10-01 11:26:33');
INSERT INTO `hp_wedding_album_photos` VALUES ('88', '17', '', 'images/wedding/album/thumb-921285907125.jpg', 'images/wedding/album/photo-171285907125.jpg', '2010-10-01 11:25:25');
INSERT INTO `hp_wedding_album_photos` VALUES ('87', '17', '', 'images/wedding/album/thumb-921285907091.jpg', 'images/wedding/album/photo-171285907091.jpg', '2010-10-01 11:24:51');
INSERT INTO `hp_wedding_album_photos` VALUES ('86', '17', '', 'images/wedding/album/thumb-921285907081.jpg', 'images/wedding/album/photo-171285907081.jpg', '2010-10-01 11:24:41');
INSERT INTO `hp_wedding_album_photos` VALUES ('85', '17', '', 'images/wedding/album/thumb-921285906995.jpg', 'images/wedding/album/photo-171285906995.jpg', '2010-10-01 11:23:15');
INSERT INTO `hp_wedding_album_photos` VALUES ('84', '17', '', 'images/wedding/album/thumb-921285906986.jpg', 'images/wedding/album/photo-171285906986.jpg', '2010-10-01 11:23:06');
INSERT INTO `hp_wedding_album_photos` VALUES ('83', '17', '', 'images/wedding/album/thumb-921285906977.jpg', 'images/wedding/album/photo-171285906977.jpg', '2010-10-01 11:22:57');
INSERT INTO `hp_wedding_album_photos` VALUES ('100', '17', '', 'images/wedding/album/thumb-921285907369.jpg', 'images/wedding/album/photo-171285907369.jpg', '2010-10-01 11:29:29');
INSERT INTO `hp_wedding_album_photos` VALUES ('101', '17', '', 'images/wedding/album/thumb-921285907380.jpg', 'images/wedding/album/photo-171285907380.jpg', '2010-10-01 11:29:40');
INSERT INTO `hp_wedding_album_photos` VALUES ('102', '17', '', 'images/wedding/album/thumb-921285907390.jpg', 'images/wedding/album/photo-171285907390.jpg', '2010-10-01 11:29:50');
INSERT INTO `hp_wedding_album_photos` VALUES ('103', '17', '', 'images/wedding/album/thumb-921285907403.jpg', 'images/wedding/album/photo-171285907403.jpg', '2010-10-01 11:30:03');
INSERT INTO `hp_wedding_album_photos` VALUES ('104', '17', '', 'images/wedding/album/thumb-921285907414.jpg', 'images/wedding/album/photo-171285907414.jpg', '2010-10-01 11:30:14');
INSERT INTO `hp_wedding_album_photos` VALUES ('106', '17', '', 'images/wedding/album/thumb-921285907449.jpg', 'images/wedding/album/photo-171285907449.jpg', '2010-10-01 11:30:49');
INSERT INTO `hp_wedding_album_photos` VALUES ('107', '17', '', 'images/wedding/album/thumb-921285907464.jpg', 'images/wedding/album/photo-171285907464.jpg', '2010-10-01 11:31:04');
INSERT INTO `hp_wedding_album_photos` VALUES ('109', '17', '', 'images/wedding/album/thumb-921285907508.jpg', 'images/wedding/album/photo-171285907508.jpg', '2010-10-01 11:31:48');
INSERT INTO `hp_wedding_album_photos` VALUES ('111', '17', '', 'images/wedding/album/thumb-921285907542.jpg', 'images/wedding/album/photo-171285907542.jpg', '2010-10-01 11:32:22');
INSERT INTO `hp_wedding_album_photos` VALUES ('112', '17', '', 'images/wedding/album/thumb-921285907550.jpg', 'images/wedding/album/photo-171285907550.jpg', '2010-10-01 11:32:30');
INSERT INTO `hp_wedding_album_photos` VALUES ('113', '17', '', 'images/wedding/album/thumb-921285907561.jpg', 'images/wedding/album/photo-171285907561.jpg', '2010-10-01 11:32:41');
INSERT INTO `hp_wedding_album_photos` VALUES ('114', '17', '', 'images/wedding/album/thumb-921285907570.jpg', 'images/wedding/album/photo-171285907570.jpg', '2010-10-01 11:32:50');
INSERT INTO `hp_wedding_album_photos` VALUES ('115', '17', '', 'images/wedding/album/thumb-921285907581.jpg', 'images/wedding/album/photo-171285907581.jpg', '2010-10-01 11:33:01');
INSERT INTO `hp_wedding_album_photos` VALUES ('116', '17', '', 'images/wedding/album/thumb-921285907592.jpg', 'images/wedding/album/photo-171285907592.jpg', '2010-10-01 11:33:12');
INSERT INTO `hp_wedding_album_photos` VALUES ('117', '17', '', 'images/wedding/album/thumb-921285907605.jpg', 'images/wedding/album/photo-171285907605.jpg', '2010-10-01 11:33:25');
INSERT INTO `hp_wedding_album_photos` VALUES ('118', '17', '', 'images/wedding/album/thumb-921285907621.jpg', 'images/wedding/album/photo-171285907621.jpg', '2010-10-01 11:33:41');
INSERT INTO `hp_wedding_album_photos` VALUES ('119', '17', '', 'images/wedding/album/thumb-921285907647.jpg', 'images/wedding/album/photo-171285907647.jpg', '2010-10-01 11:34:07');
INSERT INTO `hp_wedding_album_photos` VALUES ('120', '17', '', 'images/wedding/album/thumb-921285907664.jpg', 'images/wedding/album/photo-171285907664.jpg', '2010-10-01 11:34:24');
INSERT INTO `hp_wedding_album_photos` VALUES ('122', '17', '', 'images/wedding/album/thumb-921285907693.jpg', 'images/wedding/album/photo-171285907693.jpg', '2010-10-01 11:34:53');
INSERT INTO `hp_wedding_album_photos` VALUES ('123', '17', '', 'images/wedding/album/thumb-921285907702.jpg', 'images/wedding/album/photo-171285907702.jpg', '2010-10-01 11:35:02');
INSERT INTO `hp_wedding_album_photos` VALUES ('124', '17', '', 'images/wedding/album/thumb-921285907713.jpg', 'images/wedding/album/photo-171285907713.jpg', '2010-10-01 11:35:13');
INSERT INTO `hp_wedding_album_photos` VALUES ('125', '17', '', 'images/wedding/album/thumb-921285907727.jpg', 'images/wedding/album/photo-171285907727.jpg', '2010-10-01 11:35:27');
INSERT INTO `hp_wedding_album_photos` VALUES ('126', '17', '', 'images/wedding/album/thumb-921285907741.jpg', 'images/wedding/album/photo-171285907741.jpg', '2010-10-01 11:35:41');
INSERT INTO `hp_wedding_album_photos` VALUES ('127', '17', '', 'images/wedding/album/thumb-921285907753.jpg', 'images/wedding/album/photo-171285907753.jpg', '2010-10-01 11:35:53');
INSERT INTO `hp_wedding_album_photos` VALUES ('128', '17', '', 'images/wedding/album/thumb-921285907767.jpg', 'images/wedding/album/photo-171285907767.jpg', '2010-10-01 11:36:07');
INSERT INTO `hp_wedding_album_photos` VALUES ('129', '17', '', 'images/wedding/album/thumb-921285907784.jpg', 'images/wedding/album/photo-171285907784.jpg', '2010-10-01 11:36:24');
INSERT INTO `hp_wedding_album_photos` VALUES ('130', '17', '', 'images/wedding/album/thumb-921285907802.jpg', 'images/wedding/album/photo-171285907802.jpg', '2010-10-01 11:36:42');
INSERT INTO `hp_wedding_album_photos` VALUES ('132', '17', '', 'images/wedding/album/thumb-921285907841.jpg', 'images/wedding/album/photo-171285907841.jpg', '2010-10-01 11:37:21');
INSERT INTO `hp_wedding_album_photos` VALUES ('134', '17', '', 'images/wedding/album/thumb-921285907880.jpg', 'images/wedding/album/photo-171285907880.jpg', '2010-10-01 11:38:00');
INSERT INTO `hp_wedding_album_photos` VALUES ('135', '17', '', 'images/wedding/album/thumb-921285907888.jpg', 'images/wedding/album/photo-171285907888.jpg', '2010-10-01 11:38:08');
INSERT INTO `hp_wedding_album_photos` VALUES ('136', '17', '', 'images/wedding/album/thumb-921285907898.jpg', 'images/wedding/album/photo-171285907898.jpg', '2010-10-01 11:38:18');
INSERT INTO `hp_wedding_album_photos` VALUES ('137', '17', '', 'images/wedding/album/thumb-921285907907.jpg', 'images/wedding/album/photo-171285907907.jpg', '2010-10-01 11:38:27');
INSERT INTO `hp_wedding_album_photos` VALUES ('138', '17', '', 'images/wedding/album/thumb-921285907918.jpg', 'images/wedding/album/photo-171285907918.jpg', '2010-10-01 11:38:38');
INSERT INTO `hp_wedding_album_photos` VALUES ('139', '17', '', 'images/wedding/album/thumb-921285907927.jpg', 'images/wedding/album/photo-171285907927.jpg', '2010-10-01 11:38:47');
INSERT INTO `hp_wedding_album_photos` VALUES ('140', '17', '', 'images/wedding/album/thumb-921285907937.jpg', 'images/wedding/album/photo-171285907937.jpg', '2010-10-01 11:38:57');
INSERT INTO `hp_wedding_album_photos` VALUES ('141', '18', '', 'images/wedding/album/thumb-921285908239.jpg', 'images/wedding/album/photo-181285908239.jpg', '2010-10-01 11:43:59');
INSERT INTO `hp_wedding_album_photos` VALUES ('142', '18', '', 'images/wedding/album/thumb-921285908257.jpg', 'images/wedding/album/photo-181285908257.jpg', '2010-10-01 11:44:17');
INSERT INTO `hp_wedding_album_photos` VALUES ('143', '18', '', 'images/wedding/album/thumb-921285908268.jpg', 'images/wedding/album/photo-181285908268.jpg', '2010-10-01 11:44:28');
INSERT INTO `hp_wedding_album_photos` VALUES ('144', '18', '', 'images/wedding/album/thumb-921285908283.jpg', 'images/wedding/album/photo-181285908283.jpg', '2010-10-01 11:44:43');
INSERT INTO `hp_wedding_album_photos` VALUES ('146', '18', '', 'images/wedding/album/thumb-921285908318.jpg', 'images/wedding/album/photo-181285908318.jpg', '2010-10-01 11:45:18');
INSERT INTO `hp_wedding_album_photos` VALUES ('147', '18', '', 'images/wedding/album/thumb-921285908335.jpg', 'images/wedding/album/photo-181285908335.jpg', '2010-10-01 11:45:35');
INSERT INTO `hp_wedding_album_photos` VALUES ('149', '18', '', 'images/wedding/album/thumb-921285908358.jpg', 'images/wedding/album/photo-181285908358.jpg', '2010-10-01 11:45:58');
INSERT INTO `hp_wedding_album_photos` VALUES ('151', '18', '', 'images/wedding/album/thumb-921285908385.jpg', 'images/wedding/album/photo-181285908385.jpg', '2010-10-01 11:46:25');
INSERT INTO `hp_wedding_album_photos` VALUES ('153', '18', '', 'images/wedding/album/thumb-921285908411.jpg', 'images/wedding/album/photo-181285908411.jpg', '2010-10-01 11:46:51');
INSERT INTO `hp_wedding_album_photos` VALUES ('154', '18', '', 'images/wedding/album/thumb-921285908491.jpg', 'images/wedding/album/photo-181285908491.jpg', '2010-10-01 11:48:11');
INSERT INTO `hp_wedding_album_photos` VALUES ('155', '18', '', 'images/wedding/album/thumb-921285908505.jpg', 'images/wedding/album/photo-181285908505.jpg', '2010-10-01 11:48:25');
INSERT INTO `hp_wedding_album_photos` VALUES ('157', '18', '', 'images/wedding/album/thumb-921285908551.jpg', 'images/wedding/album/photo-181285908551.jpg', '2010-10-01 11:49:11');
INSERT INTO `hp_wedding_album_photos` VALUES ('158', '18', '', 'images/wedding/album/thumb-921285908569.jpg', 'images/wedding/album/photo-181285908569.jpg', '2010-10-01 11:49:29');
INSERT INTO `hp_wedding_album_photos` VALUES ('159', '18', '', 'images/wedding/album/thumb-921285908701.jpg', 'images/wedding/album/photo-181285908701.jpg', '2010-10-01 11:51:41');
INSERT INTO `hp_wedding_album_photos` VALUES ('160', '18', '', 'images/wedding/album/thumb-921285908713.jpg', 'images/wedding/album/photo-181285908713.jpg', '2010-10-01 11:51:53');
INSERT INTO `hp_wedding_album_photos` VALUES ('161', '18', '', 'images/wedding/album/thumb-921285908727.jpg', 'images/wedding/album/photo-181285908727.jpg', '2010-10-01 11:52:07');
INSERT INTO `hp_wedding_album_photos` VALUES ('162', '18', '', 'images/wedding/album/thumb-921285908740.jpg', 'images/wedding/album/photo-181285908740.jpg', '2010-10-01 11:52:20');
INSERT INTO `hp_wedding_album_photos` VALUES ('163', '18', '', 'images/wedding/album/thumb-921285908804.jpg', 'images/wedding/album/photo-181285908804.jpg', '2010-10-01 11:53:24');
INSERT INTO `hp_wedding_album_photos` VALUES ('190', '19', '', 'images/wedding/album/thumb-921286259293.jpg', 'images/wedding/album/photo-191286259293.jpg', '2010-10-05 13:14:53');
INSERT INTO `hp_wedding_album_photos` VALUES ('165', '18', '', 'images/wedding/album/thumb-921285908826.jpg', 'images/wedding/album/photo-181285908826.jpg', '2010-10-01 11:53:46');
INSERT INTO `hp_wedding_album_photos` VALUES ('166', '18', '', 'images/wedding/album/thumb-921285908837.jpg', 'images/wedding/album/photo-181285908837.jpg', '2010-10-01 11:53:57');
INSERT INTO `hp_wedding_album_photos` VALUES ('168', '18', '', 'images/wedding/album/thumb-921285908865.jpg', 'images/wedding/album/photo-181285908865.jpg', '2010-10-01 11:54:25');
INSERT INTO `hp_wedding_album_photos` VALUES ('169', '18', '', 'images/wedding/album/thumb-921285908885.jpg', 'images/wedding/album/photo-181285908885.jpg', '2010-10-01 11:54:45');
INSERT INTO `hp_wedding_album_photos` VALUES ('191', '19', '', 'images/wedding/album/thumb-921286259301.jpg', 'images/wedding/album/photo-191286259301.jpg', '2010-10-05 13:15:01');
INSERT INTO `hp_wedding_album_photos` VALUES ('183', '19', '', 'images/wedding/album/thumb-921286259221.jpg', 'images/wedding/album/photo-191286259221.jpg', '2010-10-05 13:13:41');
INSERT INTO `hp_wedding_album_photos` VALUES ('184', '19', '', 'images/wedding/album/thumb-921286259231.jpg', 'images/wedding/album/photo-191286259231.jpg', '2010-10-05 13:13:51');
INSERT INTO `hp_wedding_album_photos` VALUES ('185', '19', '', 'images/wedding/album/thumb-921286259242.jpg', 'images/wedding/album/photo-191286259242.jpg', '2010-10-05 13:14:02');
INSERT INTO `hp_wedding_album_photos` VALUES ('186', '19', '', 'images/wedding/album/thumb-921286259253.jpg', 'images/wedding/album/photo-191286259253.jpg', '2010-10-05 13:14:13');
INSERT INTO `hp_wedding_album_photos` VALUES ('187', '19', '', 'images/wedding/album/thumb-921286259264.jpg', 'images/wedding/album/photo-191286259264.jpg', '2010-10-05 13:14:24');
INSERT INTO `hp_wedding_album_photos` VALUES ('188', '19', '', 'images/wedding/album/thumb-921286259274.jpg', 'images/wedding/album/photo-191286259274.jpg', '2010-10-05 13:14:34');
INSERT INTO `hp_wedding_album_photos` VALUES ('189', '19', '', 'images/wedding/album/thumb-921286259282.jpg', 'images/wedding/album/photo-191286259282.jpg', '2010-10-05 13:14:42');
INSERT INTO `hp_wedding_album_photos` VALUES ('192', '19', '', 'images/wedding/album/thumb-921286259310.jpg', 'images/wedding/album/photo-191286259310.jpg', '2010-10-05 13:15:10');
INSERT INTO `hp_wedding_album_photos` VALUES ('193', '20', '', 'images/wedding/album/thumb-921286259491.jpg', 'images/wedding/album/photo-201286259491.jpg', '2010-10-05 13:18:11');
INSERT INTO `hp_wedding_album_photos` VALUES ('194', '20', '', 'images/wedding/album/thumb-921286259508.jpg', 'images/wedding/album/photo-201286259508.jpg', '2010-10-05 13:18:28');
INSERT INTO `hp_wedding_album_photos` VALUES ('195', '20', '', 'images/wedding/album/thumb-921286259520.jpg', 'images/wedding/album/photo-201286259520.jpg', '2010-10-05 13:18:40');
INSERT INTO `hp_wedding_album_photos` VALUES ('196', '19', '', 'images/wedding/album/thumb-921286334498.jpg', 'images/wedding/album/photo-191286334498.jpg', '2010-10-06 10:08:18');
INSERT INTO `hp_wedding_album_photos` VALUES ('198', '19', '', 'images/wedding/album/thumb-921286334633.jpg', 'images/wedding/album/photo-191286334633.jpg', '2010-10-06 10:10:33');
INSERT INTO `hp_wedding_album_photos` VALUES ('199', '19', '', 'images/wedding/album/thumb-921286334649.jpg', 'images/wedding/album/photo-191286334649.jpg', '2010-10-06 10:10:49');
INSERT INTO `hp_wedding_album_photos` VALUES ('302', '24', 'Ảnh nạp tài 24', 'images/wedding/album/thumb-541286955974.jpg', 'images/wedding/album/photo-241286955974.jpg', '2010-10-13 14:46:14');
INSERT INTO `hp_wedding_album_photos` VALUES ('301', '24', 'Ảnh nạp tài 23', 'images/wedding/album/thumb-541286955966.jpg', 'images/wedding/album/photo-241286955966.jpg', '2010-10-13 14:46:06');
INSERT INTO `hp_wedding_album_photos` VALUES ('300', '24', 'Ảnh nạp tài 22', 'images/wedding/album/thumb-541286955958.jpg', 'images/wedding/album/photo-241286955958.jpg', '2010-10-13 14:45:58');
INSERT INTO `hp_wedding_album_photos` VALUES ('299', '24', 'Ảnh nạp tài 21', 'images/wedding/album/thumb-541286955951.jpg', 'images/wedding/album/photo-241286955951.jpg', '2010-10-13 14:45:51');
INSERT INTO `hp_wedding_album_photos` VALUES ('298', '24', 'Ảnh nạp tài 20', 'images/wedding/album/thumb-541286955943.jpg', 'images/wedding/album/photo-241286955943.jpg', '2010-10-13 14:45:43');
INSERT INTO `hp_wedding_album_photos` VALUES ('297', '24', 'Ảnh nạp tài 19', 'images/wedding/album/thumb-541286955922.jpg', 'images/wedding/album/photo-241286955922.jpg', '2010-10-13 14:45:22');
INSERT INTO `hp_wedding_album_photos` VALUES ('296', '24', 'Ảnh nạp tài 18', 'images/wedding/album/thumb-541286955914.jpg', 'images/wedding/album/photo-241286955914.jpg', '2010-10-13 14:45:14');
INSERT INTO `hp_wedding_album_photos` VALUES ('295', '24', 'Ảnh nạp tài 17', 'images/wedding/album/thumb-541286955906.jpg', 'images/wedding/album/photo-241286955906.jpg', '2010-10-13 14:45:06');
INSERT INTO `hp_wedding_album_photos` VALUES ('294', '24', 'Ảnh nạp tài 16', 'images/wedding/album/thumb-541286955890.jpg', 'images/wedding/album/photo-241286955890.jpg', '2010-10-13 14:44:50');
INSERT INTO `hp_wedding_album_photos` VALUES ('293', '24', 'Ảnh nạp tài 15', 'images/wedding/album/thumb-541286955872.jpg', 'images/wedding/album/photo-241286955872.jpg', '2010-10-13 14:44:32');
INSERT INTO `hp_wedding_album_photos` VALUES ('292', '24', 'Ảnh nạp tài 14', 'images/wedding/album/thumb-541286955858.jpg', 'images/wedding/album/photo-241286955858.jpg', '2010-10-13 14:44:18');
INSERT INTO `hp_wedding_album_photos` VALUES ('291', '24', 'Ảnh nạp tài 13', 'images/wedding/album/thumb-541286955841.jpg', 'images/wedding/album/photo-241286955841.jpg', '2010-10-13 14:44:01');
INSERT INTO `hp_wedding_album_photos` VALUES ('290', '24', 'Ảnh nạp tài 12', 'images/wedding/album/thumb-541286955831.jpg', 'images/wedding/album/photo-241286955831.jpg', '2010-10-13 14:43:51');
INSERT INTO `hp_wedding_album_photos` VALUES ('289', '24', 'Ảnh nạp tài 11', 'images/wedding/album/thumb-541286955823.jpg', 'images/wedding/album/photo-241286955823.jpg', '2010-10-13 14:43:43');
INSERT INTO `hp_wedding_album_photos` VALUES ('288', '24', 'Ảnh nạp tài 10', 'images/wedding/album/thumb-541286955815.jpg', 'images/wedding/album/photo-241286955815.jpg', '2010-10-13 14:43:35');
INSERT INTO `hp_wedding_album_photos` VALUES ('287', '24', 'Ảnh nạp tài 9', 'images/wedding/album/thumb-541286955806.jpg', 'images/wedding/album/photo-241286955806.jpg', '2010-10-13 14:43:26');
INSERT INTO `hp_wedding_album_photos` VALUES ('286', '24', 'Ảnh nạp tài 8', 'images/wedding/album/thumb-541286955796.jpg', 'images/wedding/album/photo-241286955796.jpg', '2010-10-13 14:43:16');
INSERT INTO `hp_wedding_album_photos` VALUES ('285', '24', 'Ảnh nạp tài 7', 'images/wedding/album/thumb-541286955788.jpg', 'images/wedding/album/photo-241286955788.jpg', '2010-10-13 14:43:08');
INSERT INTO `hp_wedding_album_photos` VALUES ('284', '24', 'Ảnh nạp tài 6', 'images/wedding/album/thumb-541286955777.jpg', 'images/wedding/album/photo-241286955777.jpg', '2010-10-13 14:42:57');
INSERT INTO `hp_wedding_album_photos` VALUES ('283', '24', 'Ảnh nạp tài 5', 'images/wedding/album/thumb-541286955765.jpg', 'images/wedding/album/photo-241286955765.jpg', '2010-10-13 14:42:45');
INSERT INTO `hp_wedding_album_photos` VALUES ('282', '24', 'Ảnh nạp tài 4', 'images/wedding/album/thumb-541286955756.jpg', 'images/wedding/album/photo-241286955756.jpg', '2010-10-13 14:42:36');
INSERT INTO `hp_wedding_album_photos` VALUES ('281', '24', 'Ảnh nạp tài 3', 'images/wedding/album/thumb-541286955745.jpg', 'images/wedding/album/photo-241286955745.jpg', '2010-10-13 14:42:25');
INSERT INTO `hp_wedding_album_photos` VALUES ('279', '24', 'Ảnh nạp tài 1', 'images/wedding/album/thumb-541286955661.jpg', 'images/wedding/album/photo-241286955661.jpg', '2010-10-13 14:41:01');
INSERT INTO `hp_wedding_album_photos` VALUES ('280', '24', 'Ảnh nạp tài 2', 'images/wedding/album/thumb-541286955672.jpg', 'images/wedding/album/photo-241286955672.jpg', '2010-10-13 14:41:12');
INSERT INTO `hp_wedding_album_photos` VALUES ('225', '6', '', 'images/wedding/album/thumb-421286868449.jpg', 'images/wedding/album/photo-61286868449.jpg', '2010-10-12 14:27:29');
INSERT INTO `hp_wedding_album_photos` VALUES ('557', '25', 'quanthuy3', 'images/wedding/album/thumb-911299722744.jpg', 'images/wedding/album/photo-251299722744.jpg', '2011-03-10 09:05:44');
INSERT INTO `hp_wedding_album_photos` VALUES ('558', '25', 'quanthuy4', 'images/wedding/album/thumb-911299722751.jpg', 'images/wedding/album/photo-251299722751.jpg', '2011-03-10 09:05:51');
INSERT INTO `hp_wedding_album_photos` VALUES ('559', '25', 'quanthuy5', 'images/wedding/album/thumb-911299722759.jpg', 'images/wedding/album/photo-251299722759.jpg', '2011-03-10 09:05:59');
INSERT INTO `hp_wedding_album_photos` VALUES ('560', '25', 'quanthuy6', 'images/wedding/album/thumb-911299722767.jpg', 'images/wedding/album/photo-251299722767.jpg', '2011-03-10 09:06:07');
INSERT INTO `hp_wedding_album_photos` VALUES ('561', '25', 'quanthuy7', 'images/wedding/album/thumb-911299722773.jpg', 'images/wedding/album/photo-251299722773.jpg', '2011-03-10 09:06:13');
INSERT INTO `hp_wedding_album_photos` VALUES ('562', '25', 'quanthuy8', 'images/wedding/album/thumb-911299722780.jpg', 'images/wedding/album/photo-251299722780.jpg', '2011-03-10 09:06:20');
INSERT INTO `hp_wedding_album_photos` VALUES ('563', '25', 'quanthuy9', 'images/wedding/album/thumb-911299722788.jpg', 'images/wedding/album/photo-251299722788.jpg', '2011-03-10 09:06:28');
INSERT INTO `hp_wedding_album_photos` VALUES ('564', '25', 'quanthuy10', 'images/wedding/album/thumb-911299722796.jpg', 'images/wedding/album/photo-251299722796.jpg', '2011-03-10 09:06:36');
INSERT INTO `hp_wedding_album_photos` VALUES ('565', '25', 'quanthuy11', 'images/wedding/album/thumb-911299722804.jpg', 'images/wedding/album/photo-251299722804.jpg', '2011-03-10 09:06:44');
INSERT INTO `hp_wedding_album_photos` VALUES ('566', '25', 'quanthuy12', 'images/wedding/album/thumb-911299722817.jpg', 'images/wedding/album/photo-251299722817.jpg', '2011-03-10 09:06:57');
INSERT INTO `hp_wedding_album_photos` VALUES ('567', '25', 'quanthuy13', 'images/wedding/album/thumb-911299722832.jpg', 'images/wedding/album/photo-251299722832.jpg', '2011-03-10 09:07:12');
INSERT INTO `hp_wedding_album_photos` VALUES ('568', '25', 'quanthuy14', 'images/wedding/album/thumb-911299722839.jpg', 'images/wedding/album/photo-251299722839.jpg', '2011-03-10 09:07:19');
INSERT INTO `hp_wedding_album_photos` VALUES ('569', '25', 'quanthuy15', 'images/wedding/album/thumb-911299722847.jpg', 'images/wedding/album/photo-251299722847.jpg', '2011-03-10 09:07:27');
INSERT INTO `hp_wedding_album_photos` VALUES ('244', '6', '', 'images/wedding/album/thumb-421286942698.jpg', 'images/wedding/album/photo-61286942698.jpg', '2010-10-13 11:04:58');
INSERT INTO `hp_wedding_album_photos` VALUES ('556', '25', 'quanthuy2', 'images/wedding/album/thumb-911299722737.jpg', 'images/wedding/album/photo-251299722737.jpg', '2011-03-10 09:05:37');
INSERT INTO `hp_wedding_album_photos` VALUES ('555', '25', 'quanthuy1', 'images/wedding/album/thumb-911299722729.jpg', 'images/wedding/album/photo-251299722729.jpg', '2011-03-10 09:05:29');
INSERT INTO `hp_wedding_album_photos` VALUES ('574', '114', 'Tiến Hoa 5', 'images/wedding/album/thumb-2231299765844.jpg', 'images/wedding/album/photo-1141299765844.jpg', '2011-03-10 21:04:04');
INSERT INTO `hp_wedding_album_photos` VALUES ('575', '114', 'Tiến Hoa 6', 'images/wedding/album/thumb-2231299766006.jpg', 'images/wedding/album/photo-1141299766006.jpg', '2011-03-10 21:06:46');
INSERT INTO `hp_wedding_album_photos` VALUES ('576', '114', 'Tiến Hoa 7', 'images/wedding/album/thumb-2231299766062.jpg', 'images/wedding/album/photo-1141299766062.jpg', '2011-03-10 21:07:42');
INSERT INTO `hp_wedding_album_photos` VALUES ('577', '114', 'Tiến Hoa 8', 'images/wedding/album/thumb-2231299766159.jpg', 'images/wedding/album/photo-1141299766159.jpg', '2011-03-10 21:09:19');
INSERT INTO `hp_wedding_album_photos` VALUES ('578', '114', 'Tiến Hoa 9', 'images/wedding/album/thumb-2231299766428.jpg', 'images/wedding/album/photo-1141299766428.jpg', '2011-03-10 21:13:48');
INSERT INTO `hp_wedding_album_photos` VALUES ('579', '114', 'Tiến Hoa 10', 'images/wedding/album/thumb-2231299766639.jpg', 'images/wedding/album/photo-1141299766639.jpg', '2011-03-10 21:17:19');
INSERT INTO `hp_wedding_album_photos` VALUES ('580', '114', 'Tiến Hoa 11', 'images/wedding/album/thumb-2231299766757.jpg', 'images/wedding/album/photo-1141299766757.jpg', '2011-03-10 21:19:17');
INSERT INTO `hp_wedding_album_photos` VALUES ('581', '114', 'Tiến Hoa 12', 'images/wedding/album/thumb-2231299766836.jpg', 'images/wedding/album/photo-1141299766836.jpg', '2011-03-10 21:20:36');
INSERT INTO `hp_wedding_album_photos` VALUES ('582', '114', 'Tiến Hoa 13', 'images/wedding/album/thumb-2231299766907.jpg', 'images/wedding/album/photo-1141299766907.jpg', '2011-03-10 21:21:47');
INSERT INTO `hp_wedding_album_photos` VALUES ('583', '114', 'Tiến Hoa 14', 'images/wedding/album/thumb-2231299766994.jpg', 'images/wedding/album/photo-1141299766994.jpg', '2011-03-10 21:23:14');
INSERT INTO `hp_wedding_album_photos` VALUES ('584', '114', 'Album Tiến Hoa 15', 'images/wedding/album/thumb-2231299767149.jpg', 'images/wedding/album/photo-1141299767149.jpg', '2011-03-10 21:25:49');
INSERT INTO `hp_wedding_album_photos` VALUES ('573', '114', 'Tiến Hoa 4', 'images/wedding/album/thumb-2231299757908.jpg', 'images/wedding/album/photo-1141299757908.jpg', '2011-03-10 18:51:48');
INSERT INTO `hp_wedding_album_photos` VALUES ('572', '114', 'Tiến Hoa 3', 'images/wedding/album/thumb-2231299757798.jpg', 'images/wedding/album/photo-1141299757798.jpg', '2011-03-10 18:49:58');
INSERT INTO `hp_wedding_album_photos` VALUES ('571', '114', 'Tiến Hoa 2', 'images/wedding/album/thumb-2231299757705.jpg', 'images/wedding/album/photo-1141299757705.jpg', '2011-03-10 18:48:25');
INSERT INTO `hp_wedding_album_photos` VALUES ('570', '114', 'Tiến Hoa 1', 'images/wedding/album/thumb-2231299757617.jpg', 'images/wedding/album/photo-1141299757617.jpg', '2011-03-10 18:46:57');
INSERT INTO `hp_wedding_album_photos` VALUES ('521', '7', 'hanh phuc 2', 'images/wedding/album/thumb-541298625546.jpg', 'images/wedding/album/photo-71298625546.jpg', '2011-02-25 16:19:06');
INSERT INTO `hp_wedding_album_photos` VALUES ('522', '7', 'hanh phuc 3', 'images/wedding/album/thumb-541298625553.jpg', 'images/wedding/album/photo-71298625553.jpg', '2011-02-25 16:19:13');
INSERT INTO `hp_wedding_album_photos` VALUES ('523', '7', 'hanh phuc 4', 'images/wedding/album/thumb-541298625561.jpg', 'images/wedding/album/photo-71298625561.jpg', '2011-02-25 16:19:21');
INSERT INTO `hp_wedding_album_photos` VALUES ('524', '7', 'hanh phuc 5', 'images/wedding/album/thumb-541298625568.jpg', 'images/wedding/album/photo-71298625568.jpg', '2011-02-25 16:19:28');
INSERT INTO `hp_wedding_album_photos` VALUES ('525', '7', 'hanh phuc 6', 'images/wedding/album/thumb-541298625574.jpg', 'images/wedding/album/photo-71298625574.jpg', '2011-02-25 16:19:34');
INSERT INTO `hp_wedding_album_photos` VALUES ('526', '7', 'hanh phuc 7', 'images/wedding/album/thumb-541298625583.jpg', 'images/wedding/album/photo-71298625583.jpg', '2011-02-25 16:19:43');
INSERT INTO `hp_wedding_album_photos` VALUES ('520', '7', 'hanh phuc 1', 'images/wedding/album/thumb-541298625537.jpg', 'images/wedding/album/photo-71298625537.jpg', '2011-02-25 16:18:57');
INSERT INTO `hp_wedding_album_photos` VALUES ('739', '133', '', 'images/wedding/album/thumb-2571347889216.jpg', 'images/wedding/album/photo-1331347889216.jpg', '2012-09-17 13:40:16');
INSERT INTO `hp_wedding_album_photos` VALUES ('531', '7', 'hanh phuc 12', 'images/wedding/album/thumb-541298625618.jpg', 'images/wedding/album/photo-71298625618.jpg', '2011-02-25 16:20:18');
INSERT INTO `hp_wedding_album_photos` VALUES ('532', '7', 'hanh phuc 13', 'images/wedding/album/thumb-541298625625.jpg', 'images/wedding/album/photo-71298625625.jpg', '2011-02-25 16:20:25');
INSERT INTO `hp_wedding_album_photos` VALUES ('530', '7', 'hanh phuc 11', 'images/wedding/album/thumb-541298625611.jpg', 'images/wedding/album/photo-71298625611.jpg', '2011-02-25 16:20:11');
INSERT INTO `hp_wedding_album_photos` VALUES ('529', '7', 'hanh phuc 10', 'images/wedding/album/thumb-541298625604.jpg', 'images/wedding/album/photo-71298625604.jpg', '2011-02-25 16:20:04');
INSERT INTO `hp_wedding_album_photos` VALUES ('738', '133', '', 'images/wedding/album/thumb-2571347889136.jpg', 'images/wedding/album/photo-1331347889136.jpg', '2012-09-17 13:38:56');
INSERT INTO `hp_wedding_album_photos` VALUES ('737', '133', '', 'images/wedding/album/thumb-2571347889026.jpg', 'images/wedding/album/photo-1331347889026.jpg', '2012-09-17 13:37:06');
INSERT INTO `hp_wedding_album_photos` VALUES ('735', '132', '', 'images/wedding/album/thumb-921345468509.jpg', 'images/wedding/album/photo-1321345468509.jpg', '2012-08-20 13:15:09');
INSERT INTO `hp_wedding_album_photos` VALUES ('736', '133', '', 'images/wedding/album/thumb-2571347889000.jpg', 'images/wedding/album/photo-1331347889000.jpg', '2012-09-17 13:36:40');
INSERT INTO `hp_wedding_album_photos` VALUES ('732', '132', '', 'images/wedding/album/thumb-921345468428.jpg', 'images/wedding/album/photo-1321345468428.jpg', '2012-08-20 13:13:48');
INSERT INTO `hp_wedding_album_photos` VALUES ('731', '132', '', 'images/wedding/album/thumb-921345468409.jpg', 'images/wedding/album/photo-1321345468409.jpg', '2012-08-20 13:13:29');
INSERT INTO `hp_wedding_album_photos` VALUES ('729', '132', '', 'images/wedding/album/thumb-921345468367.jpg', 'images/wedding/album/photo-1321345468367.jpg', '2012-08-20 13:12:47');
INSERT INTO `hp_wedding_album_photos` VALUES ('527', '7', 'hanh phuc 8', 'images/wedding/album/thumb-541298625589.jpg', 'images/wedding/album/photo-71298625589.jpg', '2011-02-25 16:19:49');
INSERT INTO `hp_wedding_album_photos` VALUES ('528', '7', 'hanh phuc 9', 'images/wedding/album/thumb-541298625596.jpg', 'images/wedding/album/photo-71298625596.jpg', '2011-02-25 16:19:56');
INSERT INTO `hp_wedding_album_photos` VALUES ('535', '113', '', 'images/wedding/album/thumb-2201299207724.jpg', 'images/wedding/album/photo-1131299207724.jpg', '2011-03-04 10:02:04');
INSERT INTO `hp_wedding_album_photos` VALUES ('728', '132', '', 'images/wedding/album/thumb-921345468345.jpg', 'images/wedding/album/photo-1321345468345.jpg', '2012-08-20 13:12:25');
INSERT INTO `hp_wedding_album_photos` VALUES ('730', '132', '', 'images/wedding/album/thumb-921345468391.jpg', 'images/wedding/album/photo-1321345468391.jpg', '2012-08-20 13:13:11');
INSERT INTO `hp_wedding_album_photos` VALUES ('726', '132', '', 'images/wedding/album/thumb-921345468100.jpg', 'images/wedding/album/photo-1321345468100.jpg', '2012-08-20 13:08:20');
INSERT INTO `hp_wedding_album_photos` VALUES ('725', '132', '', 'images/wedding/album/thumb-921345468005.jpg', 'images/wedding/album/photo-1321345468005.jpg', '2012-08-20 13:06:45');
INSERT INTO `hp_wedding_album_photos` VALUES ('724', '132', '', 'images/wedding/album/thumb-921345467988.jpg', 'images/wedding/album/photo-1321345467988.jpg', '2012-08-20 13:06:28');
INSERT INTO `hp_wedding_album_photos` VALUES ('723', '132', '', 'images/wedding/album/thumb-921345467970.jpg', 'images/wedding/album/photo-1321345467970.jpg', '2012-08-20 13:06:10');
INSERT INTO `hp_wedding_album_photos` VALUES ('722', '132', '', 'images/wedding/album/thumb-921345467949.jpg', 'images/wedding/album/photo-1321345467949.jpg', '2012-08-20 13:05:49');
INSERT INTO `hp_wedding_album_photos` VALUES ('721', '132', '', 'images/wedding/album/thumb-921345467935.jpg', 'images/wedding/album/photo-1321345467935.jpg', '2012-08-20 13:05:35');
INSERT INTO `hp_wedding_album_photos` VALUES ('720', '132', '', 'images/wedding/album/thumb-921345467910.jpg', 'images/wedding/album/photo-1321345467910.jpg', '2012-08-20 13:05:10');
INSERT INTO `hp_wedding_album_photos` VALUES ('719', '132', '', 'images/wedding/album/thumb-921345467894.jpg', 'images/wedding/album/photo-1321345467894.jpg', '2012-08-20 13:04:54');
INSERT INTO `hp_wedding_album_photos` VALUES ('718', '132', '', 'images/wedding/album/thumb-921345467876.jpg', 'images/wedding/album/photo-1321345467876.jpg', '2012-08-20 13:04:36');
INSERT INTO `hp_wedding_album_photos` VALUES ('717', '132', '', 'images/wedding/album/thumb-921345467851.jpg', 'images/wedding/album/photo-1321345467851.jpg', '2012-08-20 13:04:11');
INSERT INTO `hp_wedding_album_photos` VALUES ('716', '132', '', 'images/wedding/album/thumb-921345467834.jpg', 'images/wedding/album/photo-1321345467834.jpg', '2012-08-20 13:03:54');
INSERT INTO `hp_wedding_album_photos` VALUES ('715', '132', '', 'images/wedding/album/thumb-921345467817.jpg', 'images/wedding/album/photo-1321345467817.jpg', '2012-08-20 13:03:37');
INSERT INTO `hp_wedding_album_photos` VALUES ('714', '132', '', 'images/wedding/album/thumb-921345467800.jpg', 'images/wedding/album/photo-1321345467800.jpg', '2012-08-20 13:03:20');
INSERT INTO `hp_wedding_album_photos` VALUES ('713', '132', '', 'images/wedding/album/thumb-921345467773.jpg', 'images/wedding/album/photo-1321345467773.jpg', '2012-08-20 13:02:53');
INSERT INTO `hp_wedding_album_photos` VALUES ('486', '112', 'Thắng An 1', 'images/wedding/album/thumb-541298617320.jpg', 'images/wedding/album/photo-1121298617320.jpg', '2011-02-25 14:02:00');
INSERT INTO `hp_wedding_album_photos` VALUES ('487', '112', 'Thắng An 2', 'images/wedding/album/thumb-541298617329.jpg', 'images/wedding/album/photo-1121298617329.jpg', '2011-02-25 14:02:09');
INSERT INTO `hp_wedding_album_photos` VALUES ('488', '112', 'Thắng An 3', 'images/wedding/album/thumb-541298624570.jpg', 'images/wedding/album/photo-1121298624570.jpg', '2011-02-25 16:02:50');
INSERT INTO `hp_wedding_album_photos` VALUES ('489', '112', 'Thắng An 4', 'images/wedding/album/thumb-541298624583.jpg', 'images/wedding/album/photo-1121298624583.jpg', '2011-02-25 16:03:03');
INSERT INTO `hp_wedding_album_photos` VALUES ('490', '112', 'Thắng An 5', 'images/wedding/album/thumb-541298624591.jpg', 'images/wedding/album/photo-1121298624591.jpg', '2011-02-25 16:03:11');
INSERT INTO `hp_wedding_album_photos` VALUES ('491', '112', 'Thắng An 6', 'images/wedding/album/thumb-541298624601.jpg', 'images/wedding/album/photo-1121298624601.jpg', '2011-02-25 16:03:21');
INSERT INTO `hp_wedding_album_photos` VALUES ('492', '112', 'Thắng An 7', 'images/wedding/album/thumb-541298624610.jpg', 'images/wedding/album/photo-1121298624610.jpg', '2011-02-25 16:03:30');
INSERT INTO `hp_wedding_album_photos` VALUES ('493', '112', 'Thắng An 8', 'images/wedding/album/thumb-541298624620.jpg', 'images/wedding/album/photo-1121298624620.jpg', '2011-02-25 16:03:40');
INSERT INTO `hp_wedding_album_photos` VALUES ('494', '112', 'Thắng An 9', 'images/wedding/album/thumb-541298624629.jpg', 'images/wedding/album/photo-1121298624629.jpg', '2011-02-25 16:03:49');
INSERT INTO `hp_wedding_album_photos` VALUES ('495', '112', 'Thắng An 10', 'images/wedding/album/thumb-541298624643.jpg', 'images/wedding/album/photo-1121298624643.jpg', '2011-02-25 16:04:03');
INSERT INTO `hp_wedding_album_photos` VALUES ('496', '112', 'Thắng An 11', 'images/wedding/album/thumb-541298624651.jpg', 'images/wedding/album/photo-1121298624651.jpg', '2011-02-25 16:04:11');
INSERT INTO `hp_wedding_album_photos` VALUES ('497', '112', 'Thắng An 12', 'images/wedding/album/thumb-541298624659.jpg', 'images/wedding/album/photo-1121298624659.jpg', '2011-02-25 16:04:19');
INSERT INTO `hp_wedding_album_photos` VALUES ('498', '112', 'Thắng An 13', 'images/wedding/album/thumb-541298624669.jpg', 'images/wedding/album/photo-1121298624669.jpg', '2011-02-25 16:04:29');
INSERT INTO `hp_wedding_album_photos` VALUES ('499', '112', 'Thắng An 14', 'images/wedding/album/thumb-541298624677.jpg', 'images/wedding/album/photo-1121298624677.jpg', '2011-02-25 16:04:37');
INSERT INTO `hp_wedding_album_photos` VALUES ('500', '112', 'Thắng An 15', 'images/wedding/album/thumb-541298624685.jpg', 'images/wedding/album/photo-1121298624685.jpg', '2011-02-25 16:04:45');
INSERT INTO `hp_wedding_album_photos` VALUES ('501', '112', 'Thắng An 16', 'images/wedding/album/thumb-541298624695.jpg', 'images/wedding/album/photo-1121298624695.jpg', '2011-02-25 16:04:55');
INSERT INTO `hp_wedding_album_photos` VALUES ('502', '112', 'Thắng An 17', 'images/wedding/album/thumb-541298624704.jpg', 'images/wedding/album/photo-1121298624704.jpg', '2011-02-25 16:05:04');
INSERT INTO `hp_wedding_album_photos` VALUES ('504', '111', 'hat1', 'images/wedding/album/thumb-1971298624937.jpg', 'images/wedding/album/photo-1111298624937.jpg', '2011-02-25 16:08:57');
INSERT INTO `hp_wedding_album_photos` VALUES ('505', '111', 'hat2', 'images/wedding/album/thumb-1971298624947.jpg', 'images/wedding/album/photo-1111298624947.jpg', '2011-02-25 16:09:07');
INSERT INTO `hp_wedding_album_photos` VALUES ('506', '111', 'hat3', 'images/wedding/album/thumb-1971298624955.jpg', 'images/wedding/album/photo-1111298624955.jpg', '2011-02-25 16:09:15');
INSERT INTO `hp_wedding_album_photos` VALUES ('507', '111', 'hat4', 'images/wedding/album/thumb-1971298624967.jpg', 'images/wedding/album/photo-1111298624967.jpg', '2011-02-25 16:09:27');
INSERT INTO `hp_wedding_album_photos` VALUES ('508', '111', 'hat5', 'images/wedding/album/thumb-1971298624983.jpg', 'images/wedding/album/photo-1111298624983.jpg', '2011-02-25 16:09:43');
INSERT INTO `hp_wedding_album_photos` VALUES ('509', '111', 'hat6', 'images/wedding/album/thumb-1971298624990.jpg', 'images/wedding/album/photo-1111298624990.jpg', '2011-02-25 16:09:50');
INSERT INTO `hp_wedding_album_photos` VALUES ('510', '111', 'hat7', 'images/wedding/album/thumb-1971298624998.jpg', 'images/wedding/album/photo-1111298624998.jpg', '2011-02-25 16:09:58');
INSERT INTO `hp_wedding_album_photos` VALUES ('511', '111', 'hat8', 'images/wedding/album/thumb-1971298625005.jpg', 'images/wedding/album/photo-1111298625005.jpg', '2011-02-25 16:10:05');
INSERT INTO `hp_wedding_album_photos` VALUES ('512', '111', 'hat9', 'images/wedding/album/thumb-1971298625014.jpg', 'images/wedding/album/photo-1111298625014.jpg', '2011-02-25 16:10:14');
INSERT INTO `hp_wedding_album_photos` VALUES ('513', '111', 'hat10', 'images/wedding/album/thumb-1971298625023.jpg', 'images/wedding/album/photo-1111298625023.jpg', '2011-02-25 16:10:23');
INSERT INTO `hp_wedding_album_photos` VALUES ('514', '111', 'hat11', 'images/wedding/album/thumb-1971298625031.jpg', 'images/wedding/album/photo-1111298625031.jpg', '2011-02-25 16:10:31');
INSERT INTO `hp_wedding_album_photos` VALUES ('515', '111', 'hat12', 'images/wedding/album/thumb-1971298625038.jpg', 'images/wedding/album/photo-1111298625038.jpg', '2011-02-25 16:10:38');
INSERT INTO `hp_wedding_album_photos` VALUES ('516', '111', 'hat13', 'images/wedding/album/thumb-1971298625047.jpg', 'images/wedding/album/photo-1111298625047.jpg', '2011-02-25 16:10:47');
INSERT INTO `hp_wedding_album_photos` VALUES ('517', '111', 'hat14', 'images/wedding/album/thumb-1971298625054.jpg', 'images/wedding/album/photo-1111298625054.jpg', '2011-02-25 16:10:54');
INSERT INTO `hp_wedding_album_photos` VALUES ('518', '111', 'hat15', 'images/wedding/album/thumb-1971298625063.jpg', 'images/wedding/album/photo-1111298625063.jpg', '2011-02-25 16:11:03');
INSERT INTO `hp_wedding_album_photos` VALUES ('519', '111', 'hat16', 'images/wedding/album/thumb-1971298625072.jpg', 'images/wedding/album/photo-1111298625072.jpg', '2011-02-25 16:11:12');
INSERT INTO `hp_wedding_album_photos` VALUES ('533', '7', 'hanh phuc 14', 'images/wedding/album/thumb-541298625632.jpg', 'images/wedding/album/photo-71298625632.jpg', '2011-02-25 16:20:32');
INSERT INTO `hp_wedding_album_photos` VALUES ('534', '7', 'hanh phuc 15', 'images/wedding/album/thumb-541298625639.jpg', 'images/wedding/album/photo-71298625639.jpg', '2011-02-25 16:20:39');
INSERT INTO `hp_wedding_album_photos` VALUES ('550', '23', 'namvan12', 'images/wedding/album/thumb-761299722445.jpg', 'images/wedding/album/photo-231299722445.jpg', '2011-03-10 09:00:45');
INSERT INTO `hp_wedding_album_photos` VALUES ('551', '23', 'namvan13', 'images/wedding/album/thumb-761299722455.jpg', 'images/wedding/album/photo-231299722455.jpg', '2011-03-10 09:00:55');
INSERT INTO `hp_wedding_album_photos` VALUES ('552', '23', 'namvan14', 'images/wedding/album/thumb-761299722465.jpg', 'images/wedding/album/photo-231299722465.jpg', '2011-03-10 09:01:05');
INSERT INTO `hp_wedding_album_photos` VALUES ('553', '23', 'namvan15', 'images/wedding/album/thumb-761299722476.jpg', 'images/wedding/album/photo-231299722476.jpg', '2011-03-10 09:01:16');
INSERT INTO `hp_wedding_album_photos` VALUES ('554', '23', 'namvan16', 'images/wedding/album/thumb-761299722488.jpg', 'images/wedding/album/photo-231299722488.jpg', '2011-03-10 09:01:28');
INSERT INTO `hp_wedding_album_photos` VALUES ('585', '118', '', 'images/wedding/album/thumb-2441303792999.jpg', 'images/wedding/album/photo-1181303792999.jpg', '2011-04-26 11:43:19');
INSERT INTO `hp_wedding_album_photos` VALUES ('586', '119', 'VOYEU', 'images/wedding/album/thumb-2481304239961.jpg', 'images/wedding/album/photo-1191304239961.jpg', '2011-05-01 15:52:41');
INSERT INTO `hp_wedding_album_photos` VALUES ('587', '119', 'CHONGYEU', 'images/wedding/album/thumb-2481304240027.jpg', 'images/wedding/album/photo-1191304240027.jpg', '2011-05-01 15:53:47');
INSERT INTO `hp_wedding_album_photos` VALUES ('588', '119', '', 'images/wedding/album/thumb-2481304240095.jpg', 'images/wedding/album/photo-1191304240095.jpg', '2011-05-01 15:54:55');
INSERT INTO `hp_wedding_album_photos` VALUES ('589', '119', 'LOVE', 'images/wedding/album/thumb-2481304240151.jpg', 'images/wedding/album/photo-1191304240151.jpg', '2011-05-01 15:55:51');
INSERT INTO `hp_wedding_album_photos` VALUES ('590', '119', '', 'images/wedding/album/thumb-2481304240790.jpg', 'images/wedding/album/photo-1191304240790.jpg', '2011-05-01 16:06:30');
INSERT INTO `hp_wedding_album_photos` VALUES ('591', '119', 'mylove', 'images/wedding/album/thumb-2481304240882.jpg', 'images/wedding/album/photo-1191304240882.jpg', '2011-05-01 16:08:02');
INSERT INTO `hp_wedding_album_photos` VALUES ('595', '121', '3', 'images/wedding/album/thumb-2571304656498.jpg', 'images/wedding/album/photo-1211304656498.jpg', '2011-05-06 11:34:58');
INSERT INTO `hp_wedding_album_photos` VALUES ('593', '121', '2', 'images/wedding/album/thumb-2571304656346.jpg', 'images/wedding/album/photo-1211304656346.jpg', '2011-05-06 11:32:26');
INSERT INTO `hp_wedding_album_photos` VALUES ('594', '121', '3', 'images/wedding/album/thumb-2571304656398.jpg', 'images/wedding/album/photo-1211304656398.jpg', '2011-05-06 11:33:18');
INSERT INTO `hp_wedding_album_photos` VALUES ('596', '121', '4', 'images/wedding/album/thumb-2571304657503.jpg', 'images/wedding/album/photo-1211304657503.jpg', '2011-05-06 11:51:43');
INSERT INTO `hp_wedding_album_photos` VALUES ('597', '121', '5', 'images/wedding/album/thumb-2571304657872.jpg', 'images/wedding/album/photo-1211304657872.jpg', '2011-05-06 11:57:52');
INSERT INTO `hp_wedding_album_photos` VALUES ('598', '121', '6', 'images/wedding/album/thumb-2571304658027.jpg', 'images/wedding/album/photo-1211304658027.jpg', '2011-05-06 12:00:27');
INSERT INTO `hp_wedding_album_photos` VALUES ('599', '121', '7', 'images/wedding/album/thumb-2571304659838.jpg', 'images/wedding/album/photo-1211304659838.jpg', '2011-05-06 12:30:38');
INSERT INTO `hp_wedding_album_photos` VALUES ('601', '121', '8', 'images/wedding/album/thumb-2571304660029.jpg', 'images/wedding/album/photo-1211304660029.jpg', '2011-05-06 12:33:49');
INSERT INTO `hp_wedding_album_photos` VALUES ('602', '121', '9', 'images/wedding/album/thumb-2571304660097.jpg', 'images/wedding/album/photo-1211304660097.jpg', '2011-05-06 12:34:57');
INSERT INTO `hp_wedding_album_photos` VALUES ('603', '121', '9', 'images/wedding/album/thumb-2571304667207.jpg', 'images/wedding/album/photo-1211304667207.jpg', '2011-05-06 14:33:27');
INSERT INTO `hp_wedding_album_photos` VALUES ('604', '121', '10', 'images/wedding/album/thumb-2571304667281.jpg', 'images/wedding/album/photo-1211304667281.jpg', '2011-05-06 14:34:41');
INSERT INTO `hp_wedding_album_photos` VALUES ('605', '121', '11', 'images/wedding/album/thumb-2571304668152.jpg', 'images/wedding/album/photo-1211304668152.jpg', '2011-05-06 14:49:12');
INSERT INTO `hp_wedding_album_photos` VALUES ('606', '121', '12', 'images/wedding/album/thumb-2571304669030.jpg', 'images/wedding/album/photo-1211304669030.jpg', '2011-05-06 15:03:50');
INSERT INTO `hp_wedding_album_photos` VALUES ('607', '121', '13', 'images/wedding/album/thumb-2571304669827.jpg', 'images/wedding/album/photo-1211304669827.jpg', '2011-05-06 15:17:07');
INSERT INTO `hp_wedding_album_photos` VALUES ('608', '121', '14', 'images/wedding/album/thumb-2571304670340.jpg', 'images/wedding/album/photo-1211304670340.jpg', '2011-05-06 15:25:40');
INSERT INTO `hp_wedding_album_photos` VALUES ('609', '121', '15', 'images/wedding/album/thumb-2571304670721.jpg', 'images/wedding/album/photo-1211304670721.jpg', '2011-05-06 15:32:01');
INSERT INTO `hp_wedding_album_photos` VALUES ('610', '121', '16', 'images/wedding/album/thumb-2571304674767.jpg', 'images/wedding/album/photo-1211304674767.jpg', '2011-05-06 16:39:27');
INSERT INTO `hp_wedding_album_photos` VALUES ('611', '121', '17', 'images/wedding/album/thumb-2571304674827.jpg', 'images/wedding/album/photo-1211304674827.jpg', '2011-05-06 16:40:27');
INSERT INTO `hp_wedding_album_photos` VALUES ('612', '121', '', 'images/wedding/album/thumb-2571304674913.jpg', 'images/wedding/album/photo-1211304674913.jpg', '2011-05-06 16:41:53');
INSERT INTO `hp_wedding_album_photos` VALUES ('613', '121', '', 'images/wedding/album/thumb-2571304675132.jpg', 'images/wedding/album/photo-1211304675132.jpg', '2011-05-06 16:45:32');
INSERT INTO `hp_wedding_album_photos` VALUES ('614', '121', '', 'images/wedding/album/thumb-2571304675271.jpg', 'images/wedding/album/photo-1211304675271.jpg', '2011-05-06 16:47:51');
INSERT INTO `hp_wedding_album_photos` VALUES ('615', '121', '', 'images/wedding/album/thumb-2571304675316.jpg', 'images/wedding/album/photo-1211304675316.jpg', '2011-05-06 16:48:36');
INSERT INTO `hp_wedding_album_photos` VALUES ('616', '121', '', 'images/wedding/album/thumb-2571304675595.jpg', 'images/wedding/album/photo-1211304675595.jpg', '2011-05-06 16:53:15');
INSERT INTO `hp_wedding_album_photos` VALUES ('617', '121', '', 'images/wedding/album/thumb-2571304676171.jpg', 'images/wedding/album/photo-1211304676171.jpg', '2011-05-06 17:02:51');
INSERT INTO `hp_wedding_album_photos` VALUES ('618', '121', '', 'images/wedding/album/thumb-2571304676309.jpg', 'images/wedding/album/photo-1211304676309.jpg', '2011-05-06 17:05:09');
INSERT INTO `hp_wedding_album_photos` VALUES ('619', '121', '', 'images/wedding/album/thumb-2571304676368.jpg', 'images/wedding/album/photo-1211304676368.jpg', '2011-05-06 17:06:08');
INSERT INTO `hp_wedding_album_photos` VALUES ('620', '121', '', 'images/wedding/album/thumb-2571304676441.jpg', 'images/wedding/album/photo-1211304676441.jpg', '2011-05-06 17:07:21');
INSERT INTO `hp_wedding_album_photos` VALUES ('621', '121', '', 'images/wedding/album/thumb-2571304676524.jpg', 'images/wedding/album/photo-1211304676524.jpg', '2011-05-06 17:08:44');
INSERT INTO `hp_wedding_album_photos` VALUES ('622', '121', '', 'images/wedding/album/thumb-2571304676733.jpg', 'images/wedding/album/photo-1211304676733.jpg', '2011-05-06 17:12:13');
INSERT INTO `hp_wedding_album_photos` VALUES ('623', '121', '', 'images/wedding/album/thumb-2571304676833.jpg', 'images/wedding/album/photo-1211304676833.jpg', '2011-05-06 17:13:53');
INSERT INTO `hp_wedding_album_photos` VALUES ('624', '121', '', 'images/wedding/album/thumb-2571304677050.jpg', 'images/wedding/album/photo-1211304677050.jpg', '2011-05-06 17:17:30');
INSERT INTO `hp_wedding_album_photos` VALUES ('625', '121', '', 'images/wedding/album/thumb-2571304677201.jpg', 'images/wedding/album/photo-1211304677201.jpg', '2011-05-06 17:20:01');
INSERT INTO `hp_wedding_album_photos` VALUES ('626', '121', '', 'images/wedding/album/thumb-2571304928222.jpg', 'images/wedding/album/photo-1211304928222.jpg', '2011-05-09 15:03:42');
INSERT INTO `hp_wedding_album_photos` VALUES ('627', '121', '', 'images/wedding/album/thumb-2571304932310.jpg', 'images/wedding/album/photo-1211304932310.jpg', '2011-05-09 16:11:50');
INSERT INTO `hp_wedding_album_photos` VALUES ('628', '121', '', 'images/wedding/album/thumb-2571304932966.jpg', 'images/wedding/album/photo-1211304932966.jpg', '2011-05-09 16:22:46');
INSERT INTO `hp_wedding_album_photos` VALUES ('629', '121', '', 'images/wedding/album/thumb-2571304933703.jpg', 'images/wedding/album/photo-1211304933703.jpg', '2011-05-09 16:35:03');
INSERT INTO `hp_wedding_album_photos` VALUES ('630', '121', '', 'images/wedding/album/thumb-2571304933810.jpg', 'images/wedding/album/photo-1211304933810.jpg', '2011-05-09 16:36:50');
INSERT INTO `hp_wedding_album_photos` VALUES ('631', '121', '', 'images/wedding/album/thumb-2571304934499.jpg', 'images/wedding/album/photo-1211304934499.jpg', '2011-05-09 16:48:19');
INSERT INTO `hp_wedding_album_photos` VALUES ('632', '121', '', 'images/wedding/album/thumb-2571304934749.jpg', 'images/wedding/album/photo-1211304934749.jpg', '2011-05-09 16:52:29');
INSERT INTO `hp_wedding_album_photos` VALUES ('633', '121', '', 'images/wedding/album/thumb-2571304935552.jpg', 'images/wedding/album/photo-1211304935552.jpg', '2011-05-09 17:05:52');
INSERT INTO `hp_wedding_album_photos` VALUES ('636', '121', '', 'images/wedding/album/thumb-2571304936846.jpg', 'images/wedding/album/photo-1211304936846.jpg', '2011-05-09 17:27:26');
INSERT INTO `hp_wedding_album_photos` VALUES ('635', '121', '', 'images/wedding/album/thumb-2571304936424.jpg', 'images/wedding/album/photo-1211304936424.jpg', '2011-05-09 17:20:24');
INSERT INTO `hp_wedding_album_photos` VALUES ('637', '121', '', 'images/wedding/album/thumb-2571304936889.jpg', 'images/wedding/album/photo-1211304936889.jpg', '2011-05-09 17:28:09');
INSERT INTO `hp_wedding_album_photos` VALUES ('638', '121', '', 'images/wedding/album/thumb-2571304937056.jpg', 'images/wedding/album/photo-1211304937056.jpg', '2011-05-09 17:30:56');
INSERT INTO `hp_wedding_album_photos` VALUES ('639', '121', '', 'images/wedding/album/thumb-2571304937123.jpg', 'images/wedding/album/photo-1211304937123.jpg', '2011-05-09 17:32:03');
INSERT INTO `hp_wedding_album_photos` VALUES ('640', '121', '', 'images/wedding/album/thumb-2571304937176.jpg', 'images/wedding/album/photo-1211304937176.jpg', '2011-05-09 17:32:56');
INSERT INTO `hp_wedding_album_photos` VALUES ('641', '121', '', 'images/wedding/album/thumb-2571304937235.jpg', 'images/wedding/album/photo-1211304937235.jpg', '2011-05-09 17:33:55');
INSERT INTO `hp_wedding_album_photos` VALUES ('658', '123', '', 'images/wedding/album/thumb-2571305184591.jpg', 'images/wedding/album/photo-1231305184591.jpg', '2011-05-12 14:16:31');
INSERT INTO `hp_wedding_album_photos` VALUES ('657', '123', '', 'images/wedding/album/thumb-2571305184569.jpg', 'images/wedding/album/photo-1231305184569.jpg', '2011-05-12 14:16:09');
INSERT INTO `hp_wedding_album_photos` VALUES ('656', '123', '', 'images/wedding/album/thumb-2571305183693.jpg', 'images/wedding/album/photo-1231305183693.jpg', '2011-05-12 14:01:33');
INSERT INTO `hp_wedding_album_photos` VALUES ('655', '123', '', 'images/wedding/album/thumb-2571305183155.jpg', 'images/wedding/album/photo-1231305183155.jpg', '2011-05-12 13:52:35');
INSERT INTO `hp_wedding_album_photos` VALUES ('651', '123', '', 'images/wedding/album/thumb-2571305182830.jpg', 'images/wedding/album/photo-1231305182830.jpg', '2011-05-12 13:47:10');
INSERT INTO `hp_wedding_album_photos` VALUES ('652', '123', '', 'images/wedding/album/thumb-2571305182930.jpg', 'images/wedding/album/photo-1231305182930.jpg', '2011-05-12 13:48:50');
INSERT INTO `hp_wedding_album_photos` VALUES ('660', '123', '', 'images/wedding/album/thumb-2571305184675.jpg', 'images/wedding/album/photo-1231305184675.jpg', '2011-05-12 14:17:55');
INSERT INTO `hp_wedding_album_photos` VALUES ('654', '123', '', 'images/wedding/album/thumb-2571305183097.jpg', 'images/wedding/album/photo-1231305183097.jpg', '2011-05-12 13:51:37');
INSERT INTO `hp_wedding_album_photos` VALUES ('659', '123', '', 'images/wedding/album/thumb-2571305184606.jpg', 'images/wedding/album/photo-1231305184606.jpg', '2011-05-12 14:16:46');
INSERT INTO `hp_wedding_album_photos` VALUES ('661', '123', '', 'images/wedding/album/thumb-2571305184691.jpg', 'images/wedding/album/photo-1231305184691.jpg', '2011-05-12 14:18:11');
INSERT INTO `hp_wedding_album_photos` VALUES ('662', '123', '', 'images/wedding/album/thumb-2571305184729.jpg', 'images/wedding/album/photo-1231305184729.jpg', '2011-05-12 14:18:49');
INSERT INTO `hp_wedding_album_photos` VALUES ('663', '123', '', 'images/wedding/album/thumb-2571305184746.jpg', 'images/wedding/album/photo-1231305184746.jpg', '2011-05-12 14:19:06');
INSERT INTO `hp_wedding_album_photos` VALUES ('664', '123', '', 'images/wedding/album/thumb-2571305184762.jpg', 'images/wedding/album/photo-1231305184762.jpg', '2011-05-12 14:19:22');
INSERT INTO `hp_wedding_album_photos` VALUES ('665', '123', '', 'images/wedding/album/thumb-2571305184804.jpg', 'images/wedding/album/photo-1231305184804.jpg', '2011-05-12 14:20:04');
INSERT INTO `hp_wedding_album_photos` VALUES ('666', '123', '', 'images/wedding/album/thumb-2571305184835.jpg', 'images/wedding/album/photo-1231305184835.jpg', '2011-05-12 14:20:35');
INSERT INTO `hp_wedding_album_photos` VALUES ('667', '123', '', 'images/wedding/album/thumb-2571305184860.jpg', 'images/wedding/album/photo-1231305184860.jpg', '2011-05-12 14:21:00');
INSERT INTO `hp_wedding_album_photos` VALUES ('668', '123', '', 'images/wedding/album/thumb-2571305184873.jpg', 'images/wedding/album/photo-1231305184873.jpg', '2011-05-12 14:21:13');
INSERT INTO `hp_wedding_album_photos` VALUES ('672', '123', '', 'images/wedding/album/thumb-2571305185227.jpg', 'images/wedding/album/photo-1231305185227.jpg', '2011-05-12 14:27:07');
INSERT INTO `hp_wedding_album_photos` VALUES ('670', '123', '', 'images/wedding/album/thumb-2571305184922.jpg', 'images/wedding/album/photo-1231305184922.jpg', '2011-05-12 14:22:02');
INSERT INTO `hp_wedding_album_photos` VALUES ('671', '123', '', 'images/wedding/album/thumb-2571305184972.jpg', 'images/wedding/album/photo-1231305184972.jpg', '2011-05-12 14:22:52');
INSERT INTO `hp_wedding_album_photos` VALUES ('673', '123', '', 'images/wedding/album/thumb-2571305185237.jpg', 'images/wedding/album/photo-1231305185237.jpg', '2011-05-12 14:27:17');
INSERT INTO `hp_wedding_album_photos` VALUES ('674', '123', '', 'images/wedding/album/thumb-2571305186214.jpg', 'images/wedding/album/photo-1231305186214.jpg', '2011-05-12 14:43:34');
INSERT INTO `hp_wedding_album_photos` VALUES ('675', '123', '', 'images/wedding/album/thumb-2571305186248.jpg', 'images/wedding/album/photo-1231305186248.jpg', '2011-05-12 14:44:08');
INSERT INTO `hp_wedding_album_photos` VALUES ('676', '124', '', 'images/wedding/album/thumb-2571305188176.jpg', 'images/wedding/album/photo-1241305188176.jpg', '2011-05-12 15:16:16');
INSERT INTO `hp_wedding_album_photos` VALUES ('677', '125', '', 'images/wedding/album/thumb-2571305260983.jpg', 'images/wedding/album/photo-1251305260983.jpg', '2011-05-13 11:29:43');
INSERT INTO `hp_wedding_album_photos` VALUES ('678', '125', '', 'images/wedding/album/thumb-2571305269901.jpg', 'images/wedding/album/photo-1251305269901.jpg', '2011-05-13 13:58:21');
INSERT INTO `hp_wedding_album_photos` VALUES ('679', '125', '', 'images/wedding/album/thumb-2571305269940.jpg', 'images/wedding/album/photo-1251305269940.jpg', '2011-05-13 13:59:00');
INSERT INTO `hp_wedding_album_photos` VALUES ('680', '119', 'love.jpg', 'images/wedding/album/thumb-2481305344394.jpg', 'images/wedding/album/photo-1191305344394.jpg', '2011-05-14 10:39:54');
INSERT INTO `hp_wedding_album_photos` VALUES ('681', '119', '', 'images/wedding/album/thumb-2481305344528.jpg', 'images/wedding/album/photo-1191305344528.jpg', '2011-05-14 10:42:08');
INSERT INTO `hp_wedding_album_photos` VALUES ('682', '122', '', 'images/wedding/album/thumb-2571306329236.jpg', 'images/wedding/album/photo-1221306329236.jpg', '2011-05-25 20:13:56');
INSERT INTO `hp_wedding_album_photos` VALUES ('683', '122', '', 'images/wedding/album/thumb-2571306329300.jpg', 'images/wedding/album/photo-1221306329300.jpg', '2011-05-25 20:15:00');
INSERT INTO `hp_wedding_album_photos` VALUES ('684', '122', '', 'images/wedding/album/thumb-2571306329415.jpg', 'images/wedding/album/photo-1221306329415.jpg', '2011-05-25 20:16:55');
INSERT INTO `hp_wedding_album_photos` VALUES ('685', '122', '', 'images/wedding/album/thumb-2571306329555.jpg', 'images/wedding/album/photo-1221306329555.jpg', '2011-05-25 20:19:15');
INSERT INTO `hp_wedding_album_photos` VALUES ('686', '122', '', 'images/wedding/album/thumb-2571306329665.jpg', 'images/wedding/album/photo-1221306329665.jpg', '2011-05-25 20:21:05');
INSERT INTO `hp_wedding_album_photos` VALUES ('687', '122', '', 'images/wedding/album/thumb-2571306329986.jpg', 'images/wedding/album/photo-1221306329986.jpg', '2011-05-25 20:26:26');
INSERT INTO `hp_wedding_album_photos` VALUES ('688', '124', '', 'images/wedding/album/thumb-2571306333910.jpg', 'images/wedding/album/photo-1241306333910.jpg', '2011-05-25 21:31:50');
INSERT INTO `hp_wedding_album_photos` VALUES ('689', '124', '', 'images/wedding/album/thumb-2571306334025.jpg', 'images/wedding/album/photo-1241306334025.jpg', '2011-05-25 21:33:45');
INSERT INTO `hp_wedding_album_photos` VALUES ('690', '122', '', 'images/wedding/album/thumb-2571306386666.jpg', 'images/wedding/album/photo-1221306386666.jpg', '2011-05-26 12:11:06');
INSERT INTO `hp_wedding_album_photos` VALUES ('691', '122', '', 'images/wedding/album/thumb-2571306386723.jpg', 'images/wedding/album/photo-1221306386723.jpg', '2011-05-26 12:12:03');
INSERT INTO `hp_wedding_album_photos` VALUES ('692', '126', 'k1', 'images/wedding/album/thumb-541315532849.jpg', 'images/wedding/album/photo-1261315532849.jpg', '2011-09-09 01:47:29');
INSERT INTO `hp_wedding_album_photos` VALUES ('693', '126', 'k2', 'images/wedding/album/thumb-541315532862.jpg', 'images/wedding/album/photo-1261315532862.jpg', '2011-09-09 01:47:42');
INSERT INTO `hp_wedding_album_photos` VALUES ('694', '126', 'k3', 'images/wedding/album/thumb-541315532873.jpg', 'images/wedding/album/photo-1261315532873.jpg', '2011-09-09 01:47:53');
INSERT INTO `hp_wedding_album_photos` VALUES ('695', '126', 'k4', 'images/wedding/album/thumb-541315532888.jpg', 'images/wedding/album/photo-1261315532888.jpg', '2011-09-09 01:48:08');
INSERT INTO `hp_wedding_album_photos` VALUES ('696', '126', 'k5', 'images/wedding/album/thumb-541315532902.jpg', 'images/wedding/album/photo-1261315532902.jpg', '2011-09-09 01:48:22');
INSERT INTO `hp_wedding_album_photos` VALUES ('697', '126', 'k6', 'images/wedding/album/thumb-541315532928.jpg', 'images/wedding/album/photo-1261315532928.jpg', '2011-09-09 01:48:48');
INSERT INTO `hp_wedding_album_photos` VALUES ('698', '126', 'k7', 'images/wedding/album/thumb-541315532938.jpg', 'images/wedding/album/photo-1261315532938.jpg', '2011-09-09 01:48:58');
INSERT INTO `hp_wedding_album_photos` VALUES ('699', '126', 'k8', 'images/wedding/album/thumb-541315532954.jpg', 'images/wedding/album/photo-1261315532954.jpg', '2011-09-09 01:49:14');
INSERT INTO `hp_wedding_album_photos` VALUES ('700', '126', 'k9', 'images/wedding/album/thumb-541315532967.jpg', 'images/wedding/album/photo-1261315532967.jpg', '2011-09-09 01:49:27');
INSERT INTO `hp_wedding_album_photos` VALUES ('701', '126', 'k10', 'images/wedding/album/thumb-541315532979.jpg', 'images/wedding/album/photo-1261315532979.jpg', '2011-09-09 01:49:39');
INSERT INTO `hp_wedding_album_photos` VALUES ('702', '126', 'k11', 'images/wedding/album/thumb-541315532991.jpg', 'images/wedding/album/photo-1261315532991.jpg', '2011-09-09 01:49:51');
INSERT INTO `hp_wedding_album_photos` VALUES ('703', '126', 'k12', 'images/wedding/album/thumb-541315533014.jpg', 'images/wedding/album/photo-1261315533014.jpg', '2011-09-09 01:50:14');
INSERT INTO `hp_wedding_album_photos` VALUES ('704', '126', 'k13', 'images/wedding/album/thumb-541315533025.jpg', 'images/wedding/album/photo-1261315533025.jpg', '2011-09-09 01:50:25');
INSERT INTO `hp_wedding_album_photos` VALUES ('705', '126', 'k14', 'images/wedding/album/thumb-541315533038.jpg', 'images/wedding/album/photo-1261315533038.jpg', '2011-09-09 01:50:38');
INSERT INTO `hp_wedding_album_photos` VALUES ('706', '126', 'k15', 'images/wedding/album/thumb-541315533060.jpg', 'images/wedding/album/photo-1261315533060.jpg', '2011-09-09 01:51:00');
INSERT INTO `hp_wedding_album_photos` VALUES ('707', '126', 'k16', 'images/wedding/album/thumb-541315533077.jpg', 'images/wedding/album/photo-1261315533077.jpg', '2011-09-09 01:51:17');
INSERT INTO `hp_wedding_album_photos` VALUES ('708', '127', '01', 'images/wedding/album/thumb-2891317037676.jpg', 'images/wedding/album/photo-1271317037676.jpg', '2011-09-26 11:47:56');
INSERT INTO `hp_wedding_album_photos` VALUES ('709', '127', '02', 'images/wedding/album/thumb-2891317037690.jpg', 'images/wedding/album/photo-1271317037690.jpg', '2011-09-26 11:48:10');
INSERT INTO `hp_wedding_album_photos` VALUES ('710', '127', 'Giỏ hoa ', 'images/wedding/album/thumb-2891317037713.jpg', 'images/wedding/album/photo-1271317037713.jpg', '2011-09-26 11:48:33');
INSERT INTO `hp_wedding_album_photos` VALUES ('711', '125', '', 'images/wedding/album/thumb-2571323267496.jpg', 'images/wedding/album/photo-1251323267496.jpg', '2011-12-07 14:18:16');
INSERT INTO `hp_wedding_album_photos` VALUES ('712', '130', '', 'images/wedding/album/thumb-3561339745932.jpg', 'images/wedding/album/photo-1301339745932.jpg', '2012-06-15 07:38:52');
INSERT INTO `hp_wedding_album_photos` VALUES ('740', '133', '', 'images/wedding/album/thumb-2571347889390.jpg', 'images/wedding/album/photo-1331347889390.jpg', '2012-09-17 13:43:10');
INSERT INTO `hp_wedding_album_photos` VALUES ('741', '133', '', 'images/wedding/album/thumb-2571347889409.jpg', 'images/wedding/album/photo-1331347889409.jpg', '2012-09-17 13:43:29');
INSERT INTO `hp_wedding_album_photos` VALUES ('742', '133', '', 'images/wedding/album/thumb-2571347889433.jpg', 'images/wedding/album/photo-1331347889433.jpg', '2012-09-17 13:43:53');
INSERT INTO `hp_wedding_album_photos` VALUES ('743', '133', '', 'images/wedding/album/thumb-2571347889468.jpg', 'images/wedding/album/photo-1331347889468.jpg', '2012-09-17 13:44:28');
INSERT INTO `hp_wedding_album_photos` VALUES ('744', '134', '', 'images/wedding/album/thumb-2571347889739.jpg', 'images/wedding/album/photo-1341347889739.jpg', '2012-09-17 13:48:59');
INSERT INTO `hp_wedding_album_photos` VALUES ('745', '134', '', 'images/wedding/album/thumb-2571347889865.jpg', 'images/wedding/album/photo-1341347889865.jpg', '2012-09-17 13:51:05');
INSERT INTO `hp_wedding_album_photos` VALUES ('746', '134', '', 'images/wedding/album/thumb-2571347889937.jpg', 'images/wedding/album/photo-1341347889937.jpg', '2012-09-17 13:52:17');
INSERT INTO `hp_wedding_album_photos` VALUES ('747', '134', '', 'images/wedding/album/thumb-2571347890021.jpg', 'images/wedding/album/photo-1341347890021.jpg', '2012-09-17 13:53:41');
INSERT INTO `hp_wedding_album_photos` VALUES ('748', '134', '', 'images/wedding/album/thumb-2571347890096.jpg', 'images/wedding/album/photo-1341347890096.jpg', '2012-09-17 13:54:56');
INSERT INTO `hp_wedding_album_photos` VALUES ('749', '134', '', 'images/wedding/album/thumb-2571347890170.jpg', 'images/wedding/album/photo-1341347890170.jpg', '2012-09-17 13:56:10');
INSERT INTO `hp_wedding_album_photos` VALUES ('750', '134', '', 'images/wedding/album/thumb-2571347890402.jpg', 'images/wedding/album/photo-1341347890402.jpg', '2012-09-17 14:00:02');
INSERT INTO `hp_wedding_album_photos` VALUES ('751', '134', '', 'images/wedding/album/thumb-2571347890519.jpg', 'images/wedding/album/photo-1341347890519.jpg', '2012-09-17 14:01:59');
INSERT INTO `hp_wedding_album_photos` VALUES ('752', '134', '', 'images/wedding/album/thumb-2571347890669.jpg', 'images/wedding/album/photo-1341347890669.jpg', '2012-09-17 14:04:29');
INSERT INTO `hp_wedding_album_photos` VALUES ('753', '134', '', 'images/wedding/album/thumb-2571347890735.jpg', 'images/wedding/album/photo-1341347890735.jpg', '2012-09-17 14:05:35');
INSERT INTO `hp_wedding_album_photos` VALUES ('754', '134', '', 'images/wedding/album/thumb-2571347890824.jpg', 'images/wedding/album/photo-1341347890824.jpg', '2012-09-17 14:07:04');
INSERT INTO `hp_wedding_album_photos` VALUES ('755', '134', '', 'images/wedding/album/thumb-2571347890943.jpg', 'images/wedding/album/photo-1341347890943.jpg', '2012-09-17 14:09:03');
INSERT INTO `hp_wedding_album_photos` VALUES ('756', '134', '', 'images/wedding/album/thumb-2571347891006.jpg', 'images/wedding/album/photo-1341347891006.jpg', '2012-09-17 14:10:06');
INSERT INTO `hp_wedding_album_photos` VALUES ('757', '134', '', 'images/wedding/album/thumb-2571347891096.jpg', 'images/wedding/album/photo-1341347891096.jpg', '2012-09-17 14:11:36');
INSERT INTO `hp_wedding_album_photos` VALUES ('758', '134', '', 'images/wedding/album/thumb-2571347891188.jpg', 'images/wedding/album/photo-1341347891188.jpg', '2012-09-17 14:13:08');
INSERT INTO `hp_wedding_album_photos` VALUES ('759', '134', '', 'images/wedding/album/thumb-2571347891278.jpg', 'images/wedding/album/photo-1341347891278.jpg', '2012-09-17 14:14:38');
INSERT INTO `hp_wedding_album_photos` VALUES ('760', '134', '', 'images/wedding/album/thumb-2571347891348.jpg', 'images/wedding/album/photo-1341347891348.jpg', '2012-09-17 14:15:48');
INSERT INTO `hp_wedding_album_photos` VALUES ('761', '134', '', 'images/wedding/album/thumb-2571347891437.jpg', 'images/wedding/album/photo-1341347891437.jpg', '2012-09-17 14:17:17');
INSERT INTO `hp_wedding_album_photos` VALUES ('762', '134', '', 'images/wedding/album/thumb-2571347891556.jpg', 'images/wedding/album/photo-1341347891556.jpg', '2012-09-17 14:19:16');
INSERT INTO `hp_wedding_album_photos` VALUES ('763', '134', '', 'images/wedding/album/thumb-2571347891650.jpg', 'images/wedding/album/photo-1341347891650.jpg', '2012-09-17 14:20:50');
INSERT INTO `hp_wedding_album_photos` VALUES ('764', '134', '', 'images/wedding/album/thumb-2571347891734.jpg', 'images/wedding/album/photo-1341347891734.jpg', '2012-09-17 14:22:14');
INSERT INTO `hp_wedding_album_photos` VALUES ('765', '129', '', 'images/wedding/album/thumb-2571347891905.jpg', 'images/wedding/album/photo-1291347891905.jpg', '2012-09-17 14:25:05');
INSERT INTO `hp_wedding_album_photos` VALUES ('766', '129', '', 'images/wedding/album/thumb-2571347892089.jpg', 'images/wedding/album/photo-1291347892089.jpg', '2012-09-17 14:28:09');
INSERT INTO `hp_wedding_album_photos` VALUES ('767', '129', '', 'images/wedding/album/thumb-2571347892177.jpg', 'images/wedding/album/photo-1291347892177.jpg', '2012-09-17 14:29:37');
INSERT INTO `hp_wedding_album_photos` VALUES ('768', '129', '', 'images/wedding/album/thumb-2571347892277.jpg', 'images/wedding/album/photo-1291347892277.jpg', '2012-09-17 14:31:17');
INSERT INTO `hp_wedding_album_photos` VALUES ('769', '129', '', 'images/wedding/album/thumb-2571347892360.jpg', 'images/wedding/album/photo-1291347892360.jpg', '2012-09-17 14:32:40');
INSERT INTO `hp_wedding_album_photos` VALUES ('770', '129', '', 'images/wedding/album/thumb-2571347892434.jpg', 'images/wedding/album/photo-1291347892434.jpg', '2012-09-17 14:33:54');
INSERT INTO `hp_wedding_album_photos` VALUES ('771', '129', '', 'images/wedding/album/thumb-2571347892489.jpg', 'images/wedding/album/photo-1291347892489.jpg', '2012-09-17 14:34:49');
INSERT INTO `hp_wedding_album_photos` VALUES ('772', '129', '', 'images/wedding/album/thumb-2571347892572.jpg', 'images/wedding/album/photo-1291347892572.jpg', '2012-09-17 14:36:12');
INSERT INTO `hp_wedding_album_photos` VALUES ('773', '129', '', 'images/wedding/album/thumb-2571347892627.jpg', 'images/wedding/album/photo-1291347892627.jpg', '2012-09-17 14:37:07');
INSERT INTO `hp_wedding_album_photos` VALUES ('774', '129', '', 'images/wedding/album/thumb-2571347892690.jpg', 'images/wedding/album/photo-1291347892690.jpg', '2012-09-17 14:38:10');
INSERT INTO `hp_wedding_album_photos` VALUES ('775', '129', '', 'images/wedding/album/thumb-2571347892750.jpg', 'images/wedding/album/photo-1291347892750.jpg', '2012-09-17 14:39:10');
INSERT INTO `hp_wedding_album_photos` VALUES ('776', '129', '', 'images/wedding/album/thumb-2571347892802.jpg', 'images/wedding/album/photo-1291347892802.jpg', '2012-09-17 14:40:02');
INSERT INTO `hp_wedding_album_photos` VALUES ('777', '135', '', 'images/wedding/album/thumb-2571347951310.jpg', 'images/wedding/album/photo-1351347951310.jpg', '2012-09-18 06:55:10');
INSERT INTO `hp_wedding_album_photos` VALUES ('778', '135', '', 'images/wedding/album/thumb-2571347951347.jpg', 'images/wedding/album/photo-1351347951347.jpg', '2012-09-18 06:55:47');
INSERT INTO `hp_wedding_album_photos` VALUES ('779', '135', '', 'images/wedding/album/thumb-2571347951946.jpg', 'images/wedding/album/photo-1351347951946.jpg', '2012-09-18 07:05:46');
INSERT INTO `hp_wedding_album_photos` VALUES ('780', '135', '', 'images/wedding/album/thumb-2571347952191.jpg', 'images/wedding/album/photo-1351347952191.jpg', '2012-09-18 07:09:51');
INSERT INTO `hp_wedding_album_photos` VALUES ('781', '135', '', 'images/wedding/album/thumb-2571347952674.jpg', 'images/wedding/album/photo-1351347952674.jpg', '2012-09-18 07:17:54');
INSERT INTO `hp_wedding_album_photos` VALUES ('782', '135', '', 'images/wedding/album/thumb-2571347954787.jpg', 'images/wedding/album/photo-1351347954787.jpg', '2012-09-18 07:53:07');
INSERT INTO `hp_wedding_album_photos` VALUES ('783', '135', '', 'images/wedding/album/thumb-2571347956287.jpg', 'images/wedding/album/photo-1351347956287.jpg', '2012-09-18 08:18:07');
INSERT INTO `hp_wedding_album_photos` VALUES ('784', '135', '', 'images/wedding/album/thumb-2571347956351.jpg', 'images/wedding/album/photo-1351347956351.jpg', '2012-09-18 08:19:11');
INSERT INTO `hp_wedding_album_photos` VALUES ('785', '135', '', 'images/wedding/album/thumb-2571347957842.jpg', 'images/wedding/album/photo-1351347957842.jpg', '2012-09-18 08:44:02');
INSERT INTO `hp_wedding_album_photos` VALUES ('786', '135', '', 'images/wedding/album/thumb-2571347957953.jpg', 'images/wedding/album/photo-1351347957953.jpg', '2012-09-18 08:45:53');
INSERT INTO `hp_wedding_album_photos` VALUES ('787', '135', '', 'images/wedding/album/thumb-2571347959423.jpg', 'images/wedding/album/photo-1351347959423.jpg', '2012-09-18 09:10:23');
INSERT INTO `hp_wedding_album_photos` VALUES ('788', '135', '', 'images/wedding/album/thumb-2571348023244.jpg', 'images/wedding/album/photo-1351348023244.jpg', '2012-09-19 02:54:04');
INSERT INTO `hp_wedding_album_photos` VALUES ('789', '135', '', 'images/wedding/album/thumb-2571348024894.jpg', 'images/wedding/album/photo-1351348024894.jpg', '2012-09-19 03:21:34');
INSERT INTO `hp_wedding_album_photos` VALUES ('790', '135', '', 'images/wedding/album/thumb-2571348025794.jpg', 'images/wedding/album/photo-1351348025794.jpg', '2012-09-19 03:36:34');
INSERT INTO `hp_wedding_album_photos` VALUES ('791', '135', '', 'images/wedding/album/thumb-2571348026590.jpg', 'images/wedding/album/photo-1351348026590.jpg', '2012-09-19 03:49:50');
INSERT INTO `hp_wedding_album_photos` VALUES ('792', '134', '', 'images/wedding/album/thumb-2571348214793.jpg', 'images/wedding/album/photo-1341348214793.jpg', '2012-09-21 08:06:33');

-- ----------------------------
-- Table structure for `hp_wedding_albums`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_albums`;
CREATE TABLE `hp_wedding_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `intro` varchar(1023) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_albums
-- ----------------------------
INSERT INTO `hp_wedding_albums` VALUES ('6', '42', '<p>test album</p>', 'Test Album', 'images/wedding/album/album-421282836466.jpg', '2010-08-26 22:27:46', '0');
INSERT INTO `hp_wedding_albums` VALUES ('7', '54', '', 'Abum Phúc Trang', 'images/wedding/album/album-541286956263.jpg', '2010-09-15 16:52:36', '1');
INSERT INTO `hp_wedding_albums` VALUES ('8', '54', '<p>Giới thiệu nhưng mẫu ảnh phóng của chúng tôi</p>', 'Ảnh phóng', 'images/wedding/album/album-541286956291.jpg', '2010-09-15 17:03:53', '1');
INSERT INTO `hp_wedding_albums` VALUES ('18', '92', '', 'Ảnh cưới trang 2', 'images/wedding/album/album-921287048913.jpg', '2010-10-01 11:43:34', '0');
INSERT INTO `hp_wedding_albums` VALUES ('43', '104', '', '', 'images/wedding/album/album-1041287424165.jpg', '2010-10-19 00:49:25', '0');
INSERT INTO `hp_wedding_albums` VALUES ('25', '91', '', 'Album Quân Thủy', 'images/wedding/album/album-911286956683.jpg', '2010-10-13 14:58:03', '1');
INSERT INTO `hp_wedding_albums` VALUES ('17', '92', '<p>Đây là anh cưới của chúng mình</p>', 'Ảnh cưới Tuấn Thảo', 'images/wedding/album/album-921287049178.jpg', '2010-10-01 11:22:43', '1');
INSERT INTO `hp_wedding_albums` VALUES ('44', '104', '', '', 'images/wedding/album/album-1041287424172.jpg', '2010-10-19 00:49:32', '0');
INSERT INTO `hp_wedding_albums` VALUES ('19', '92', '', 'Abum tuan thao', 'images/wedding/album/album-921286259345.jpg', '2010-10-03 18:52:19', '0');
INSERT INTO `hp_wedding_albums` VALUES ('20', '92', '', 'anh phong', 'images/wedding/album/album-921286259461.jpg', '2010-10-05 13:17:41', '0');
INSERT INTO `hp_wedding_albums` VALUES ('41', '104', '', '', 'images/wedding/album/album-1041287424151.jpg', '2010-10-19 00:49:11', '0');
INSERT INTO `hp_wedding_albums` VALUES ('24', '54', '', 'Ảnh nạp tài', 'images/wedding/album/album-541286954894.jpg', '2010-10-13 14:28:14', '0');
INSERT INTO `hp_wedding_albums` VALUES ('23', '76', '', 'Album Nam Vân', 'images/wedding/album/album-761286958917.jpg', '2010-10-13 10:41:36', '1');
INSERT INTO `hp_wedding_albums` VALUES ('42', '104', '', '', 'images/wedding/album/album-1041287424158.jpg', '2010-10-19 00:49:18', '0');
INSERT INTO `hp_wedding_albums` VALUES ('40', '104', '', '', 'images/wedding/album/album-1041287424145.jpg', '2010-10-19 00:49:05', '0');
INSERT INTO `hp_wedding_albums` VALUES ('39', '104', '', '', 'images/wedding/album/album-1041287424139.jpg', '2010-10-19 00:48:59', '0');
INSERT INTO `hp_wedding_albums` VALUES ('38', '104', '', '', 'images/wedding/album/album-1041287424132.jpg', '2010-10-19 00:48:52', '0');
INSERT INTO `hp_wedding_albums` VALUES ('37', '104', '', '', 'images/wedding/album/album-1041287424124.jpg', '2010-10-19 00:48:44', '0');
INSERT INTO `hp_wedding_albums` VALUES ('36', '104', '', '', 'images/wedding/album/album-1041287424113.jpg', '2010-10-19 00:48:33', '0');
INSERT INTO `hp_wedding_albums` VALUES ('45', '104', '', '', 'images/wedding/album/album-1041287424178.jpg', '2010-10-19 00:49:38', '0');
INSERT INTO `hp_wedding_albums` VALUES ('46', '104', '', '', 'images/wedding/album/album-1041287424183.jpg', '2010-10-19 00:49:43', '0');
INSERT INTO `hp_wedding_albums` VALUES ('47', '104', '', '', 'images/wedding/album/album-1041287424190.jpg', '2010-10-19 00:49:50', '0');
INSERT INTO `hp_wedding_albums` VALUES ('48', '104', '', '', 'images/wedding/album/album-1041287424196.jpg', '2010-10-19 00:49:56', '0');
INSERT INTO `hp_wedding_albums` VALUES ('49', '104', '', '', 'images/wedding/album/album-1041287424202.jpg', '2010-10-19 00:50:02', '0');
INSERT INTO `hp_wedding_albums` VALUES ('50', '104', '', '', 'images/wedding/album/album-1041287424210.jpg', '2010-10-19 00:50:10', '0');
INSERT INTO `hp_wedding_albums` VALUES ('51', '104', '', '', 'images/wedding/album/album-1041287424216.jpg', '2010-10-19 00:50:16', '0');
INSERT INTO `hp_wedding_albums` VALUES ('52', '104', '', '', 'images/wedding/album/album-1041287424224.jpg', '2010-10-19 00:50:24', '0');
INSERT INTO `hp_wedding_albums` VALUES ('53', '104', '', '', 'images/wedding/album/album-1041287424231.jpg', '2010-10-19 00:50:31', '0');
INSERT INTO `hp_wedding_albums` VALUES ('54', '104', '', '', 'images/wedding/album/album-1041287424238.jpg', '2010-10-19 00:50:38', '0');
INSERT INTO `hp_wedding_albums` VALUES ('55', '104', '', '', 'images/wedding/album/album-1041287424246.jpg', '2010-10-19 00:50:46', '0');
INSERT INTO `hp_wedding_albums` VALUES ('56', '104', '', '', 'images/wedding/album/album-1041287424254.jpg', '2010-10-19 00:50:54', '0');
INSERT INTO `hp_wedding_albums` VALUES ('57', '104', '', '', 'images/wedding/album/album-1041287424261.jpg', '2010-10-19 00:51:01', '0');
INSERT INTO `hp_wedding_albums` VALUES ('58', '104', '', '', 'images/wedding/album/album-1041287424275.jpg', '2010-10-19 00:51:15', '0');
INSERT INTO `hp_wedding_albums` VALUES ('59', '104', '', '', 'images/wedding/album/album-1041287424284.jpg', '2010-10-19 00:51:24', '0');
INSERT INTO `hp_wedding_albums` VALUES ('60', '104', '', '', 'images/wedding/album/album-1041287424291.jpg', '2010-10-19 00:51:31', '0');
INSERT INTO `hp_wedding_albums` VALUES ('61', '104', '', '', 'images/wedding/album/album-1041287424299.jpg', '2010-10-19 00:51:39', '0');
INSERT INTO `hp_wedding_albums` VALUES ('62', '104', '', '', 'images/wedding/album/album-1041287424306.jpg', '2010-10-19 00:51:46', '0');
INSERT INTO `hp_wedding_albums` VALUES ('63', '104', '', '', 'images/wedding/album/album-1041287424314.jpg', '2010-10-19 00:51:54', '0');
INSERT INTO `hp_wedding_albums` VALUES ('64', '104', '', '', 'images/wedding/album/album-1041287424323.jpg', '2010-10-19 00:52:03', '0');
INSERT INTO `hp_wedding_albums` VALUES ('65', '104', '', '', 'images/wedding/album/album-1041287424330.jpg', '2010-10-19 00:52:10', '0');
INSERT INTO `hp_wedding_albums` VALUES ('66', '104', '', '', 'images/wedding/album/album-1041287424339.jpg', '2010-10-19 00:52:19', '0');
INSERT INTO `hp_wedding_albums` VALUES ('67', '104', '', '', 'images/wedding/album/album-1041287424348.jpg', '2010-10-19 00:52:28', '0');
INSERT INTO `hp_wedding_albums` VALUES ('68', '104', '', '', 'images/wedding/album/album-1041287424357.jpg', '2010-10-19 00:52:37', '0');
INSERT INTO `hp_wedding_albums` VALUES ('69', '104', '', '', 'images/wedding/album/album-1041287424365.jpg', '2010-10-19 00:52:45', '0');
INSERT INTO `hp_wedding_albums` VALUES ('70', '104', '', '', 'images/wedding/album/album-1041287424373.jpg', '2010-10-19 00:52:52', '0');
INSERT INTO `hp_wedding_albums` VALUES ('71', '104', '', '', 'images/wedding/album/album-1041287424379.jpg', '2010-10-19 00:52:59', '0');
INSERT INTO `hp_wedding_albums` VALUES ('72', '104', '', '', 'images/wedding/album/album-1041287424386.jpg', '2010-10-19 00:53:06', '0');
INSERT INTO `hp_wedding_albums` VALUES ('73', '104', '', '', 'images/wedding/album/album-1041287424393.jpg', '2010-10-19 00:53:13', '0');
INSERT INTO `hp_wedding_albums` VALUES ('74', '104', '', '', 'images/wedding/album/album-1041287424404.jpg', '2010-10-19 00:53:24', '0');
INSERT INTO `hp_wedding_albums` VALUES ('75', '104', '', '', 'images/wedding/album/album-1041287424410.jpg', '2010-10-19 00:53:30', '0');
INSERT INTO `hp_wedding_albums` VALUES ('76', '104', '', '', 'images/wedding/album/album-1041287424416.jpg', '2010-10-19 00:53:36', '0');
INSERT INTO `hp_wedding_albums` VALUES ('77', '104', '', '', 'images/wedding/album/album-1041287424423.jpg', '2010-10-19 00:53:43', '0');
INSERT INTO `hp_wedding_albums` VALUES ('78', '104', '', '', 'images/wedding/album/album-1041287424431.jpg', '2010-10-19 00:53:50', '0');
INSERT INTO `hp_wedding_albums` VALUES ('79', '104', '', '', 'images/wedding/album/album-1041287424438.jpg', '2010-10-19 00:53:58', '0');
INSERT INTO `hp_wedding_albums` VALUES ('80', '104', '', '', 'images/wedding/album/album-1041287424445.jpg', '2010-10-19 00:54:05', '0');
INSERT INTO `hp_wedding_albums` VALUES ('81', '104', '', '', 'images/wedding/album/album-1041287424452.jpg', '2010-10-19 00:54:12', '0');
INSERT INTO `hp_wedding_albums` VALUES ('82', '104', '', '', 'images/wedding/album/album-1041287424459.jpg', '2010-10-19 00:54:19', '0');
INSERT INTO `hp_wedding_albums` VALUES ('83', '104', '', '', 'images/wedding/album/album-1041287424466.jpg', '2010-10-19 00:54:26', '0');
INSERT INTO `hp_wedding_albums` VALUES ('84', '104', '', '', 'images/wedding/album/album-1041287424474.jpg', '2010-10-19 00:54:34', '0');
INSERT INTO `hp_wedding_albums` VALUES ('85', '104', '', '', 'images/wedding/album/album-1041287424482.jpg', '2010-10-19 00:54:42', '0');
INSERT INTO `hp_wedding_albums` VALUES ('86', '104', '', '', 'images/wedding/album/album-1041287424489.jpg', '2010-10-19 00:54:49', '0');
INSERT INTO `hp_wedding_albums` VALUES ('87', '104', '', '', 'images/wedding/album/album-1041287424495.jpg', '2010-10-19 00:54:55', '0');
INSERT INTO `hp_wedding_albums` VALUES ('88', '104', '', '', 'images/wedding/album/album-1041287424503.jpg', '2010-10-19 00:55:03', '0');
INSERT INTO `hp_wedding_albums` VALUES ('89', '104', '', '', 'images/wedding/album/album-1041287424510.jpg', '2010-10-19 00:55:10', '0');
INSERT INTO `hp_wedding_albums` VALUES ('90', '104', '', '', 'images/wedding/album/album-1041287424517.jpg', '2010-10-19 00:55:17', '0');
INSERT INTO `hp_wedding_albums` VALUES ('91', '104', '', '', 'images/wedding/album/album-1041287424524.jpg', '2010-10-19 00:55:24', '0');
INSERT INTO `hp_wedding_albums` VALUES ('92', '104', '', '', 'images/wedding/album/album-1041287424533.jpg', '2010-10-19 00:55:32', '0');
INSERT INTO `hp_wedding_albums` VALUES ('93', '104', '', '', 'images/wedding/album/album-1041287424548.jpg', '2010-10-19 00:55:48', '0');
INSERT INTO `hp_wedding_albums` VALUES ('94', '104', '', '', 'images/wedding/album/album-1041287424555.jpg', '2010-10-19 00:55:55', '0');
INSERT INTO `hp_wedding_albums` VALUES ('95', '104', '', '', 'images/wedding/album/album-1041287424563.jpg', '2010-10-19 00:56:03', '0');
INSERT INTO `hp_wedding_albums` VALUES ('96', '104', '', '', 'images/wedding/album/album-1041287424570.jpg', '2010-10-19 00:56:10', '0');
INSERT INTO `hp_wedding_albums` VALUES ('97', '104', '', '', 'images/wedding/album/album-1041287424577.jpg', '2010-10-19 00:56:17', '0');
INSERT INTO `hp_wedding_albums` VALUES ('98', '161', '', 'CuongYen', '', '2011-01-05 18:16:06', '0');
INSERT INTO `hp_wedding_albums` VALUES ('111', '197', '<p>Album ảnh cưới Lê Toàn - Hoàng Anh</p>', 'Album', 'images/wedding/album/album-1971297822372.jpg', '2011-02-16 09:12:52', '1');
INSERT INTO `hp_wedding_albums` VALUES ('132', '92', '<p>ảnh của con gái yêu</p>', 'anh của thảo chi', 'images/wedding/album/album-921345467666.jpg', '2012-08-20 13:01:06', '0');
INSERT INTO `hp_wedding_albums` VALUES ('112', '54', '<p>Album đám cưới Thắng An</p>', 'Thắng An', 'images/wedding/album/album-541298617282.jpg', '2011-02-25 14:01:22', '1');
INSERT INTO `hp_wedding_albums` VALUES ('113', '220', '<p>Giới thiệu ở đây</p>', 'Ảnh đẹp', 'images/wedding/album/album-2201299207692.jpg', '2011-03-04 10:01:32', '0');
INSERT INTO `hp_wedding_albums` VALUES ('114', '223', '', 'Album Tiến Hoa', 'images/wedding/album/album-2231299757522.jpg', '2011-03-10 18:45:21', '1');
INSERT INTO `hp_wedding_albums` VALUES ('115', '220', '<p>Kỉ niệm 25 ngày yêu!.</p>', 'Cửa Tùng', 'images/wedding/album/album-2201300373247.jpg', '2011-03-17 21:39:09', '0');
INSERT INTO `hp_wedding_albums` VALUES ('118', '244', '', 'Album ảnh cưới', 'images/wedding/album/album-2441303792966.jpg', '2011-04-26 11:42:45', '0');
INSERT INTO `hp_wedding_albums` VALUES ('119', '248', '', 'WEDDING LOVE', 'images/wedding/album/album-2481304239844.jpg', '2011-05-01 15:50:43', '0');
INSERT INTO `hp_wedding_albums` VALUES ('120', '252', '', 'lượng thuỳ', 'images/wedding/album/album-2521304410100.jpg', '2011-05-03 15:08:20', '0');
INSERT INTO `hp_wedding_albums` VALUES ('121', '257', '', 'Đám nói', 'images/wedding/album/album-2571304655393.jpg', '2011-05-06 11:16:32', '1');
INSERT INTO `hp_wedding_albums` VALUES ('122', '257', '', 'Đám nói 1', 'images/wedding/album/album-2571305180616.jpg', '2011-05-12 13:10:16', '0');
INSERT INTO `hp_wedding_albums` VALUES ('123', '257', '', 'Album', 'images/wedding/album/album-2571305184620.jpg', '2011-05-12 13:11:39', '1');
INSERT INTO `hp_wedding_albums` VALUES ('124', '257', '', 'Album 1', 'images/wedding/album/album-2571305186301.jpg', '2011-05-12 14:45:01', '0');
INSERT INTO `hp_wedding_albums` VALUES ('125', '257', '', 'Chuyện tình yêu :d', '', '2011-05-13 11:28:40', '0');
INSERT INTO `hp_wedding_albums` VALUES ('126', '54', '<p>Bé Trần Lê Phước KHANG (2 tháng tuổi). Đây là album đầu tiên của cháu....</p>', 'Baby Phước Khang', 'images/wedding/album/album-541315532810.jpg', '2011-09-09 01:46:50', '0');
INSERT INTO `hp_wedding_albums` VALUES ('127', '289', '<p>Ngày 28.8</p>', 'Dạm ngõ', 'images/wedding/album/album-2891317037497.jpg', '2011-09-26 11:44:57', '0');
INSERT INTO `hp_wedding_albums` VALUES ('128', '321', '', 'tamxuan', 'images/wedding/album/album-3211323162171.jpg', '2011-12-06 09:02:49', '0');
INSERT INTO `hp_wedding_albums` VALUES ('129', '257', '', 'Đám cưới - Ô Môn', 'images/wedding/album/album-2571347891834.jpg', '2012-02-22 08:01:31', '0');
INSERT INTO `hp_wedding_albums` VALUES ('130', '356', '', 'di du lichh', 'images/wedding/album/album-3561339745008.jpg', '2012-06-15 07:23:25', '0');
INSERT INTO `hp_wedding_albums` VALUES ('131', '360', '', 'album anh cuoi', 'images/wedding/album/album-3601343376456.jpg', '2012-07-27 08:07:27', '0');
INSERT INTO `hp_wedding_albums` VALUES ('133', '257', '', 'Memory', '', '2012-09-17 13:35:47', '0');
INSERT INTO `hp_wedding_albums` VALUES ('134', '257', '', 'Đám Cưới tại Cần Thơ', 'images/wedding/album/album-2571347889628.jpg', '2012-09-17 13:47:05', '0');
INSERT INTO `hp_wedding_albums` VALUES ('135', '257', '', 'Đãi ăn ở Sóc Trăng', 'images/wedding/album/album-2571347951239.jpg', '2012-09-18 06:53:59', '0');

-- ----------------------------
-- Table structure for `hp_wedding_apps`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_apps`;
CREATE TABLE `hp_wedding_apps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `edit_url` varchar(255) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_apps
-- ----------------------------
INSERT INTO `hp_wedding_apps` VALUES ('1', 'Album ảnh', 'index.php?option=com_wedding&view=album', 'index.php?option=com_wedding&view=album&layout=listitems', '0', '5', '1');
INSERT INTO `hp_wedding_apps` VALUES ('2', 'Bản đồ', 'index.php?option=com_wedding&view=map', 'index.php?option=com_wedding&view=map&layout=listitems', '0', '8', '1');
INSERT INTO `hp_wedding_apps` VALUES ('3', 'Chuyện tình yêu', 'index.php?option=com_wedding&view=story', 'index.php?option=com_wedding&view=story&layout=listitems', '0', '2', '1');
INSERT INTO `hp_wedding_apps` VALUES ('7', 'Trang chủ', 'index.php?option=com_wedding&view=home', 'index.php?option=com_wedding&view=home&layout=edit', '1', '1', '1');
INSERT INTO `hp_wedding_apps` VALUES ('8', 'Nhật ký', 'index.php?option=com_wedding&view=diary', 'index.php?option=com_wedding&view=diary&layout=listitems', '0', '3', '1');
INSERT INTO `hp_wedding_apps` VALUES ('9', 'Lưu bút - Lời chúc', 'index.php?option=com_wedding&view=guestbook', 'index.php?option=com_wedding&view=guestbook&layout=listitems', '0', '4', '1');
INSERT INTO `hp_wedding_apps` VALUES ('10', 'Kế hoạch đám cưới', 'index.php?option=com_wedding&view=plant', 'index.php?option=com_wedding&view=plant&layout=listitems', '0', '6', '1');
INSERT INTO `hp_wedding_apps` VALUES ('11', 'Thiệp mời', 'index.php?option=com_wedding&view=card', 'index.php?option=com_wedding&view=card&layout=listitems', '0', '7', '1');
INSERT INTO `hp_wedding_apps` VALUES ('12', 'Lời cảm ơn', 'index.php?option=com_wedding&view=thanks', 'index.php?option=com_wedding&view=thanks&layout=listitems', '0', '9', '1');
INSERT INTO `hp_wedding_apps` VALUES ('13', 'Thăm dò ý kiến', 'index.php?option=com_wedding&view=survey', 'index.php?option=com_wedding&view=survey&layout=listitems', '0', '10', '1');
INSERT INTO `hp_wedding_apps` VALUES ('14', 'Video', 'index.php?option=com_wedding&view=video', 'index.php?option=com_wedding&view=video&layout=listitems', '0', '11', '1');

-- ----------------------------
-- Table structure for `hp_wedding_card`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_card`;
CREATE TABLE `hp_wedding_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(127) NOT NULL,
  `intro` varchar(1023) NOT NULL,
  `content` varchar(2047) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_card
-- ----------------------------
INSERT INTO `hp_wedding_card` VALUES ('2', '42', 'Thiệp mời 1', '<p>Thiệp mời dành cho đối tượng 1</p>', '<p>Đây là thiệp mời dành cho đối tượng 1</p>', 'images/wedding/card/card-421286899271.jpg', '2010-07-12 22:25:02', '2010-10-12 23:01:11');
INSERT INTO `hp_wedding_card` VALUES ('5', '54', 'Mẫu thiệp mời đám cưới Phúc&Trang', '', '', 'images/wedding/card/card-541286848875.jpg', '2010-09-15 16:30:48', '2010-10-12 09:01:15');
INSERT INTO `hp_wedding_card` VALUES ('6', '54', 'Nội dung thiệp mời', '', '', 'images/wedding/card/card-541286848861.jpg', '2010-09-15 17:02:32', '2010-10-12 09:01:01');
INSERT INTO `hp_wedding_card` VALUES ('11', '289', 'Đang thiết kế.', '', '<p>...</p>', '', '2011-09-26 12:25:39', '2011-09-26 12:25:39');

-- ----------------------------
-- Table structure for `hp_wedding_card_intro`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_card_intro`;
CREATE TABLE `hp_wedding_card_intro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `intro` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_card_intro
-- ----------------------------
INSERT INTO `hp_wedding_card_intro` VALUES ('1', '42', '<p>test message</p>');
INSERT INTO `hp_wedding_card_intro` VALUES ('2', '54', '<p>GIỚI THIỆU MẪU THIỆP MỜI ĐÁM CƯỚI TRẦN LÊ PHÚC và LÊ THU TRANG</p>');
INSERT INTO `hp_wedding_card_intro` VALUES ('3', '289', '');

-- ----------------------------
-- Table structure for `hp_wedding_diary`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_diary`;
CREATE TABLE `hp_wedding_diary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(127) NOT NULL,
  `intro` varchar(1023) NOT NULL,
  `content` varchar(2047) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_diary
-- ----------------------------
INSERT INTO `hp_wedding_diary` VALUES ('1', '42', 'Ngày qua ngày', '<p>Ngày nào chúng ta cũng phải chịu đựng nhau ^_^</p>', '<p>Blah blah blah</p>', 'images/wedding/plant/plant-421278869118.jpg', '2010-07-12 01:06:30', '2010-07-20 23:22:58');
INSERT INTO `hp_wedding_diary` VALUES ('5', '42', 'a', '<p>a</p>', '<p>a</p>', 'images/wedding/diary/diary-421286899378.jpg', '2010-09-08 10:44:52', '2010-10-12 23:02:58');
INSERT INTO `hp_wedding_diary` VALUES ('6', '54', 'Ngày 12 tháng 10 năm 2010', '<p>sáng ngủ dạy</p>', '<p>Trưa đi làm</p>', 'images/wedding/diary/diary-541286876554.jpg', '2010-10-12 16:42:33', '2010-10-12 16:42:33');
INSERT INTO `hp_wedding_diary` VALUES ('7', '54', 'Ngày 13 tháng 10 năm 2010', '<p>sáng ngủ dạy 1</p>', '<p>Trưa đi làm 1</p>', 'images/wedding/diary/diary-541286876907.jpg', '2010-10-12 16:42:49', '2010-10-12 16:48:27');
INSERT INTO `hp_wedding_diary` VALUES ('8', '289', 'Lần đầu tiên hẹn hò', '<p>Địa điểm đầu tiên gặp nhau của chúng tôi là góc sân nhà thờ Hàng Xanh, rất tình cờ và cũng dường như đó là ngày định mệnh mà Ơn trên đã cho chúng tôi nên duyên với nhau.</p>\r\n<p> </p>', '', '', '2011-09-21 06:35:59', '2011-09-21 06:35:59');
INSERT INTO `hp_wedding_diary` VALUES ('9', '289', 'Con đường tình yêu', '<p>Cập nhật toàn bộ những sự kiện dự kiến sẽ diễn ra cuối năm 2011.</p>\r\n<p>Năm nay có nhiều ngày rất đặc biệt như 1/1/11, 1/11/11, 11/1/11, 11/11/11</p>\r\n<p>Đây là hiện tượng lạ, chúng ta chỉ thấy một lần trong đời mình.</p>\r\n<p>Vậy chuyện gì sẽ xảy ra lúc 11 giờ 11 phút 11 giây vào ngày 11 tháng 11 năm nay, tức là lúc 11.11.11 11.11.11? Hãy xem thêm thông tin không kém phần ly kỳ nữa sau đây...keke</p>', '<ul>\r\n<li>Ngày 21-08-11: Em iu dẫn anh iu về nhà ra mắt gia đình<br /><br /></li>\r\n<li>Ngày 28-08-11: Lễ Dạm ngõ. Anh iu chở Mẹ lên gặp Mama. Hai  bà sui chụm đầu bàn ngày đính hôn. <br /><br /></li>\r\n<li>Ngày 2-09-11: Anh iu đón em iu về quê Vĩnh Long ra mắt gia đình.<br /><br /></li>\r\n<li>Ngày 21-09-11: đi chích ngừa Sởi-Cúm-Rubella, chuẩn bị sức khỏe thật tốt cho việc đón rồng con năm sau, hihi. </li>\r\n</ul>\r\n<p>Dự kiến:</p>\r\n<ul>\r\n<li>Ngày 01-10-10: Bổn mạng em iu, anh iu nấu ăn đãi em iu.<br /><br /></li>\r\n<li>Ngày 18-10-11: Em iu thi giáo lý hôn nhân, hic, hồi hộp<br /><br /></li>\r\n<li>Ngày 11-11-11: Anh iu nhận bí tích Rửa tội, BT Mình Thánh Chúa, Giải tội <br />(chọn ngày có số quá đẹp, ta nói vẫn còn cái tật nhìu chiện, ko mê tín nhưng khoái mấy cái này để có cái nói, haha. Ngày này mà không nằm trong tháng Các Đẳng là mình cũng dám bon chen chọn làm ngày tổ chức đại hỷ rồi)<br />\r\n<p>Số 11 là sự lặp lại hai lần của cùng một  con số, do đó những thuộc tính của con số đó cũng sẽ gấp đôi về mặt ý  nghĩa và sự linh thiêng của nó…Số 1 là sự khởi đầu và sự tinh khiết. Còn trong số học nó lại mang những ý nghĩa sau: Lý tưởng, Sáng kiến, Cải tiến, Đồng dạng, Cân bằng. Số 11 tượng trưng cho sự bình đẳng giữa nam và nữ, đồng thời mang  theo sức mạnh của cả mặt trăng và mặt trời. Đó là sự cân bằng hoàn hảo  đến tuyệt đối.</p>\r\n</li>\r\n<li>\r\n<p>Ngày 24-12-11: Lễ Đính hôn. (Vọng Giáng sinh). Mong một đêm GS thật ý nghĩa</p>\r\n</li>\r\n<li>Ngày 30-12-11: Ký giấy kết hôn (Lễ Thánh Gia thất)</li>\r\n<li>\r\n<p>Ngày 07-01-12: Thánh lễ ban BT Hôn phối. (Lễ Chúa Giêsu chịu phép Rửa).... có tiếng nói từ trời vang xuống:<strong>”Đây là Con yêu dấu của Cha, Cha hài lòng về Con”</strong><br />Lễ Vu Quy : đãi tiệc đàng gái ở nhà hàng Yasaka.</p>\r\n</li>\r\n<li>Ngày 09-01-12: Rước dâu về làng. Thành hôn: đãi tiệc đàng trai ở Vĩnh Long.</li>\r\n<li>Ngày 12-01-12: Lại mặt.</li>\r\n<li>Ngày 12-01 đến 17-01: Tuần trăng mật.</li>\r\n<li>Ngày 18-01 đến 21-01: \"dập mật\" vì dọn dẹp chuẩn bị</li>\r\n<li>Ngày 22-01: Mùng 1 tết con Rồng</li>\r\n</ul>', '', '2011-09-26 12:50:59', '2011-09-27 14:52:19');
INSERT INTO `hp_wedding_diary` VALUES ('10', '257', '28 lý do để bạn yêu chồng nhiều hơn', '', '<p style=\"font-size: 13px; color: #555555; font-family: Tahoma, Helvetica, sans-serif; text-align: justify;\">1. Khi có người chồng bên cạnh, có nghĩa là bạn đã có một người đàn ông  yêu thương mình rất nhiều. Anh ấy dành cho bạn những tình cảm tốt đẹp  nhất bởi vì bạn là người sẽ đi cùng anh ấy một chặng đường dài tiếp  theo. <br /><br /> 2. Anh ấy đã làm cho bạn cảm thấy mình là người vô cùng  đặc biệt bằng cách chăm sóc bạn thật chu đáo, từ những điều nhỏ bé nhất  để khiến bạn hài lòng, hạnh phúc hơn.<br /><br /> 3. Anh ấy yêu bạn với tất cả trái tim của mình.<br /><br /> 4. Khuôn mặt anh ấy rạng ngời khi nhìn thấy bạn. Bạn nghiễm nhiên trở  thành người khơi sáng tâm trạng cho anh ấy những lúc mệt mỏi và căng  thẳng.<br /><br /> 5. Anh ấy là người có thể che chở, bảo vệ, yêu thương những đứa con của hai người. Anh ấy sẽ cùng bạn chăm sóc cho con cái.<br /><br /> 6. Anh ấy tự hào về gia đình và người đó có thể làm bất cứ điều gì cho bạn và những đứa con yêu quý.<br /><br /> 7. Anh ấy làm việc chăm chỉ để có thể mang lại cho gia đình một cuộc sống sung túc và tốt đẹp nhất.</p>\r\n<p style=\"font-size: 13px; color: #555555; font-family: Tahoma, Helvetica, sans-serif; text-align: justify;\">8. Anh ấy sẽ luôn cố gắng đoán biết và sẵn sàng đáp ứng đầy đủ yêu cầu của bạn.</p>\r\n<div>\r\n<p>9. Khi bạn bị ốm, anh ấy sẽ cố gắng hoàn thành việc nhà đồng thời quản lý tốt khối công việc đồ sộ của mình.</p>\r\n</div>\r\n<div style=\"font-size: 13px; color: #555555; font-family: Tahoma, Helvetica, sans-serif; text-align: justify;\">10. Anh ấy quan tâm đến sức khỏe của bạn nhiều hơn chính bản thân mình  và sẽ không bao giờ cho phép bạn làm bất cứ điều gì khiến bạn bị ốm hoặc  kiệt sức.<br /><br /> 11. Anh ấy đưa con đến trường và không viện cớ bận công việc để tránh phải chia sẻ trách nhiệm với bạn.<br /><br /> 12. Anh ấy sẽ đối xử công bằng với bạn như một người ngang hàng.<br /><br /> 13. Anh ấy luôn ủng hộ và khuyến khích để bạn hiện thực hóa ước mơ của  mình, dù điều đó có chút ảnh hưởng đến cuộc sống của hai người. Chồng  bạn sẽ khôn', '', '2012-09-27 07:21:20', '2012-09-27 07:21:20');
INSERT INTO `hp_wedding_diary` VALUES ('11', '257', 'Cách \'tắm trắng\' hiệu quả tại nhà', '', '<p><strong> 1. Làm trắng bằng các nguyên liệu tự nhiên</strong></p>\r\n<p class=\"Normal\"><strong><em>Cách 1:</em></strong></p>\r\n<p class=\"Normal\">Kết hợp sữa tươi, nước chanh, mật ong với dầu hạnh nhân. Số lượng nguyên liệu phụ thuộc vào độ rộng của phần da bạn muốn làm trắng. Sau đó, trộn đều các nguyên liệu trên để tạo thành dung dịch. Đắp hỗn hợp lên vùng da cần trị liệu trong khoảng 15 phút rồi rửa sạch để loại bỏ lớp da chết và làm cho da mịn, sáng hơn.</p>\r\n<p class=\"Normal\"><em><strong>Cách 2:</strong></em></p>\r\n<p class=\"Normal\">Bạn có thể kết hợp bột yến mạch, sữa đặc và nước ép cà chua để làm mặt nạ dưỡng trắng da. Đắp hỗn hợp này lên da trong 20 phút rồi rửa sạch bằng nước lạnh. Phương pháp này cũng giúp loại bỏ các sắc tố da sẫm màu và làm da sáng tự nhiên.</p>\r\n<p class=\"Normal\"><strong><em>Cách 3:</em></strong></p>\r\n<p class=\"Normal\">Khoai tây sống hay hỗn hợp bột vỏ cam khô với sữa có thể dùng để loại bỏ các vết nám và đốm da sẫm màu nếu bạn sử dụng trong một thời gian dài. Mỗi lần chăm sóc da với mặt nạ này được thực hiện trong 15 phút và bạn nên dùng nước lạnh để làm sạch da sau trị liệu.</p>\r\n<p><img class=\"editorial\" src=\"http://media.zenfs.com/vi_VN/News/ngoisao/M__ph_m_Nh_t_B_n_KMA-7847ac9dc97060b74e38a876f60e9bca\" border=\"1\" width=\"420\" height=\"298\" align=\"center\" /></p>\r\n<p class=\"Normal\"><em><strong>Cách 4:</strong></em></p>\r\n<p class=\"Normal\">Sử dụng hỗn hợp nghệ và nước cốt chanh hoặc nghiền cà chua chung với nước cốt chanh cũng là một phương pháp hay dành cho bạn. Thoa hỗn hợp này lên da trong 20 phút, sử dụng hai lần/ngày sẽ làm sáng da hiệu quả sau 2-3 tuần.</p>\r\n<p class=\"Normal\"><strong><em>Cách 5:</em></strong></p>\r\n<p class=\"Normal\">Bạn cũng có thể ngâm bốn quả hạnh trong nước qua đêm. Sau đó xay nhuyễn với sữa để đắp lên mặt, cổ và giữ mặt nạ qua đêm. Rửa sạch bằng nước lạnh vào buổi sáng. Bạn giữ thói quen này hàng ngày trong 1-2 tuần và kết quả sẽ làm bạn hài lòng. Sau đó, bạn có thể giảm dần tần suất dùng mặt nạ xuống 2 lần/tuần.</p>\r\n<p class=\"Normal\"><em><strong>Cách 6:</stro', '', '2012-10-05 09:24:39', '2012-10-05 09:24:39');
INSERT INTO `hp_wedding_diary` VALUES ('12', '257', 'nhật ký của mẹ', '', '<p>http://www.youtube.com/watch?v=3AX06_zyB4M&feature=player_detailpage</p>', '', '2012-10-10 08:51:26', '2012-10-10 08:51:26');

-- ----------------------------
-- Table structure for `hp_wedding_guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_guestbook`;
CREATE TABLE `hp_wedding_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `from_name` varchar(255) NOT NULL,
  `content` varchar(1024) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=420662 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for `hp_wedding_home`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_home`;
CREATE TABLE `hp_wedding_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(127) NOT NULL,
  `intro` varchar(1023) NOT NULL,
  `content` varchar(2047) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_home
-- ----------------------------
INSERT INTO `hp_wedding_home` VALUES ('1', '42', 'Đám cưới', '<p>Chào mừng các bạn đến với website đám cưới của chúng tôi</p>\r\n<p>Thêm cái gì đấy dài dài dài vào</p>', '<p>Chào mừng các bạn đến với website đám cưới của <em><strong>chúng tôi<br /></strong></em></p>\r\n<p>Thêm cái gì đó dài</p>\r\n<p>dài</p>\r\n<p>dài</p>\r\n<p>dài nữa</p>\r\n<p>dài nữa</p>\r\n<p>dài thêm tẹo nữa</p>\r\n<p>thôi nhỉ?</p>', 'images/wedding/home/home-42.jpg');
INSERT INTO `hp_wedding_home` VALUES ('2', '54', 'Chào mừng các bạn đến với website đám cưới Phúc Trang', '', '<p style=\"text-align: left;\">Có câu danh ngôn thế này:</p>\r\n<p style=\"text-align: center;\"><strong>\"Cuộc sống có 3 điều hạnh phúc: có việc gì đó để làm, có ai đó để yêu thương, có một điều gì đó để hi vọng\"</strong></p>\r\n<p>Nhưng ai đó bảo:</p>\r\n<p>[+] Có việc gì đó để làm: nhưng luôn muốn thay đổi.</p>\r\n<p>[+] Có ai đó để yêu thương: nhưng vẫn chưa muốn cưới.</p>\r\n<p>[+] Có một điều gì đó để hi vọng: không! có nhiều điều để hi vọng.</p>\r\n<p>Đừng tìm điều gì đó tuyệt đối bạn nhé, hãy để Yêu thương dẫn dường cho Hi vọng, cho trái tim 2 người mãi mãi đập cùng nhau.</p>\r\n<p> </p>\r\n<hr />\r\n<p><strong>Hôm nay lang thang trên mạng, kiếm được bài thơ hay, tặng cả nhà cùng thưởng thức:</strong></p>\r\n<p>Em gái tuổi Dần duyên phận long đong<br />Miệng đời bảo: cầm tinh em, cọp cái<br />Thầy bói nhủ: cái tuổi này cao số<br />Quê thấy mồ, em có ăn thịt ai đâu! <br /><br />Cha mẹ sinh năm Dần, em để vậy, biết sao<br />Em vẫn rộn những niềm vui không rõ!<br />Em dễ khóc những nỗi buồn vô cớ<br />Như sáng mai nào đang nắng, thoắt mưa... <br /><br />Em tuổi Dần, đã sợ em chưa?<br />Quen, quen vậy, anh khoan thưa bố mẹ!<br />Tự ái đấy khi bà cô bắt bẻ:<br />\"Nó tuổi Dần, không ích tử, vượng phu...\" <br /><br />Nếu mai sau, mai sau nữa, cho dù<br />Tờ âm lịch lỗi thời thay đổi hết<br />Thì chớ tưởng gái tuổi Dần đã thích<br />Con gái mà, không coi bói đâu vui! <br /><br />Em tuổi Dần nên người yêu em ơi,<br />Anh phải đẹp như chàng trai săn hổ<br />Lúc ấy, bên anh, em hiền như con mèo nhỏ<br />Vuốt nanh nào thi thố với tình yêu!<br /><br />Và anh yêu, xin anh chớ có liều,<br />Chớ bay bướm, đèo bòng năm bảy mối!<br />Cơn ghen gái tuổi Dần không dữ dội,<br />Chỉ diễn có một lần, kẻ có tội....tan xương!</p>\r\n<p><strong>(Đọc xong chẳng thấy SỢ, hi)</strong></p>', 'images/wedding/home/home-54.jpg');
INSERT INTO `hp_wedding_home` VALUES ('3', '91', 'Chào mừng các bạn đến với website đám cưới Quân Thủy', '<p>Hiện nay chúng tôi đang tiến hành cập nhật thông tin</p>\r\n<p>Mong các bạn dành thời gian quay lại để cổ vũ cho tình yêu của chúng tôi</p>\r\n<p>Trân trọng.</p>', '', 'images/wedding/home/home-91.jpg');
INSERT INTO `hp_wedding_home` VALUES ('4', '92', '', '<p><strong></strong></p>', '<p style=\"text-align: center;\"><strong><span style=\"color: #0000ff; font-family: Verdana;\">TRÂN TRỌNG KÍNH MỜI CÁC BẠN <br />TỚI DỰ LỄ THÀNH HÔN CỦA HAI CHÚNG TÔI:<br /></span></strong><span style=\"font-size: small;\"> <br />              <span style=\"color: #ff0000;\"><strong>Nguyễn Anh Tuấn - Trịnh Phương Thảo</strong><br /></span></span></p>\r\n<div style=\"text-align: center;\"><strong><span style=\"font-size: x-small; color: #0000ff;\">Hôn lễ được tổ chức vào hồi 10h40\' ngày 16 tháng 10 năm 2010<br />(Tức là ngày 09 tháng 09 năm Canh Dần)<br /><br /></span></strong></div>\r\n<p style=\"text-align: center;\"><strong><span style=\"font-size: x-small; color: #0000ff;\">           Tại: Thôn 10 - Minh Tiến - Ngọc Lặc - Thanh Hoá<br /><br />    XIN TRÂN TRỌNG KÍNH MỜI<br /></span></strong></p>', 'images/wedding/home/home-92.jpg');
INSERT INTO `hp_wedding_home` VALUES ('5', '76', '', '', '', 'images/wedding/home/home-76.jpg');
INSERT INTO `hp_wedding_home` VALUES ('6', '104', '', '', '<p>                                      MINH YEU   % TRAN YEN</p>', 'images/wedding/home/home-104.jpg');
INSERT INTO `hp_wedding_home` VALUES ('7', '183', '', '', '', 'images/wedding/home/home-183.jpg');
INSERT INTO `hp_wedding_home` VALUES ('8', '187', '', '', '', 'images/wedding/home/home-187.jpg');
INSERT INTO `hp_wedding_home` VALUES ('9', '197', '', '', '<p>Chú rể: lê <strong>TOÀN</strong></p>\r\n<p>Cô dâu: hoàng <strong>ANH</strong></p>\r\n<p>Chào mừng các bạn đến với website đám cưới của Chúng tôi.</p>', 'images/wedding/home/home-197.jpg');
INSERT INTO `hp_wedding_home` VALUES ('10', '220', '', '', '<p>222222222222222222222</p>', 'images/wedding/home/home-220.jpg');
INSERT INTO `hp_wedding_home` VALUES ('11', '223', '', '', '<p>Chú rể: <strong>Hà Quang Tiến</strong></p>\r\n<p>Cô dâu: <strong>Vũ Minh Hoa</strong></p>', 'images/wedding/home/home-223.jpg');
INSERT INTO `hp_wedding_home` VALUES ('12', '248', '', '', '<p>LOVE YOU FOREVER</p>', 'images/wedding/home/home-248.jpg');
INSERT INTO `hp_wedding_home` VALUES ('13', '257', '', '', '<p style=\"text-align: justify;\">Cảm ơn Song thân ..... :) PaPa....Mama,</p>\r\n<p style=\"text-align: justify;\">Đơn sơ nhưng đậm tình: là ý nghĩ của Anh và Tôi chọn để được bên nhau mãi mãi. Cả hai - Tôi & Anh - đều quan niệm  \"Một đám cưới cao quý và linh đình không làm nên cuộc sống hôn nhân hạnh phúc và bền lâu\".</p>\r\n<p style=\"text-align: justify;\">Theo tôi: Ý nghĩa Tiệc cưới với mục đích giới thiệu cho mọi người và nhờ tất cải làm nhân chứng cho tôi và anh được chính thức là của nhau. Do vậy chúng tôi chỉ tổ chức thật đơn giản và rất đơn sơ, những nghi lễ ấy chúng tôi dành để cảm ơn cha mẹ đã chăm sóc và cho tôi được như ngày hôm nay, cảm ơn cha mẹ chồng đã sinh anh ra dành cho \"con\".</p>\r\n<p style=\"text-align: justify;\">Hạnh phúc không là những gì cao xa và khó tìm, mà tôi nhận được hạnh phúc từ những cái bình dị nhất của cuộc sống đã cho tôi. Tôi nhận HP ấy từ những cái quan tâm nhỏ nhất của anh dành cho tôi, và HP hơn khi cãi nhau mỗi ngày nhưng chúng tôi đã không nhắc đến sau những lần cãi ấy, tôn trọng lẫn nhau cũng là điều làm tôi HP khi cùng sống chung với anh. Có khi HP là cã những giọt nước mắt cũng chia sẽ những khó khăn hiện tại... và cả những điều bất ngờ mà chúng tôi nhận: đó là \"CHÚNG TÔI ĐƯỢC CƯỚI NHAU\" và sẽ là của nhau mãi mãi. Điều mà tôi và anh không hề nghĩ đến: \"duyên hay nợ\" !!!!!!!!!</p>\r\n<p style=\"text-align: justify;\">Có những điều bất ngờ như vậy sẽ đến trong cuộc đời của tất cả mọi người.... Hãy chờ nhé, Còn bây giờ xin chia sẽ 1 tí niềm vui của riêng mình đến với mọi người, Hãy chúc phúc cho Mình nhé. Chân thành....</p>\r\n<p style=\"text-align: justify;\">;);););) CHO BẠN...........</p>', 'images/wedding/home/home-257.jpg');
INSERT INTO `hp_wedding_home` VALUES ('14', '290', '', '', '', 'images/wedding/home/home-290.jpg');
INSERT INTO `hp_wedding_home` VALUES ('15', '291', '', '', '', 'images/wedding/home/home-291.jpg');
INSERT INTO `hp_wedding_home` VALUES ('16', '289', '', '', '<p>Sự gì Thiên Chúa kết hợp, loài người không được phân ly</p>\r\n<p> </p>\r\n<p>***</p>\r\n<p><em>Nguyện xin Giêsu thương mến, cho duyên tình mãi nở hoa</em></p>\r\n<p><em>Nguyện xin Giêsu đến trong nhà, cho đời hòa tiếng ca</em></p>\r\n<p><sub> Hoa nở miền Cana </sub></p>\r\n<p>***</p>\r\n<p>Chào mừng mọi người ghé thăm website đám cưới của: Minh Hoàng * ♥ * Hoàng Uyên<br />Trang web nhằm chia sẻ với gia đình, bạn bè, đồng nghiệp những sự kiện, hình ảnh chuẩn bị lễ cưới. Hãy cùng chúng tôi chia sẻ những khoảnh khắc đáng nhớ trong cuộc sống, cùng chúng tôi chuẩn bị bước vào một cuộc sống mới, với hi vọng tràn đầy hạnh phúc và ý nghĩa. <br /><br />Giây phút hạnh phúc nhất cho những ai sắp “kết thúc cuộc sống một mình” để đến với cuộc sống của \"một gia đình mới\" chính là lúc này, lúc chúng tôi đang chuẩn bị cho hành trình “đến” ấy. Hoàng ♥ Uyên muốn lưu lại những kỷ niệm đẹp ấy để chia sẻ thật nhiều, thật nhiều với mọi người. Những lời chúc của mọi người sẽ là những món quà vô giá mà Hoàng ♥ Uyên thích nhất í. Cảm ơn nhiều nhiều.<br /><br />Hạnh phúc là thứ quý giá, luôn cần được vun đắp bởi từ cả hai phía và sẽ  hạnh phúc hơn nếu nhận được sự ủng hộ của gia đình, bạn bè, đồng nghiệp  và mọi người xung quanh.</p>\r\n<p>***</p>\r\n<p>Nhiều người nói rằng, chuẩn bị cho đám cưới là một giai đoạn rất gian khổ, dễ stress...<br /><br />Tuy nhiên, với chúng tôi, khi được cùng nhau làm chung một việc, chúng tôi cảm thấy hiểu nhau hơn và gắn kết mỗi lúc một mật thiết hơn bao giờ hết. Sự động viên, chia sẻ, cảm thông mỗi ngày (dù ở cách xa nhau 120km) giúp chúng tôi thêm hiểu, yêu thương nhau hơn để cùng vượt qua những khó khăn phía trước.</p>\r\n<p>Tôi nghĩ về quãng thời gian này giống như những ngày giáp Tết, bao giờ thời gian chuẩn bị mọi thứ đón Tết vẫn vui hơn sau giờ giao thừa, đúng không nhỉ? Để rồi khi bước qua thời điểm đó, sẽ là một năm mới, một trang mới. Có vui. Có buồn. Có thuận lợi. Có khó khăn. Nhưng mãi giữ được cái nhìn lạc quan, cuộc sống cũng sẽ được suôn sẻ, may mắn. Hạnh phúc chỉ có thế thôi...</p>', 'images/wedding/home/home-289.jpg');
INSERT INTO `hp_wedding_home` VALUES ('17', '327', '', '', '<p style=\"text-align: center;\"><strong><em>TRĂM NĂM TÌNH VIÊN MÃN<br /></em></strong><em><strong>BẠC ĐẦU NGHĨA PHU THÊ</strong></em> \r\n<hr size=\"1\" style=\"width: 514px;\" />\r\n</p>\r\n<p style=\"text-align: justify;\"><strong>Định mệnh đã cho chúng ta gặp nhau và có một kết thúc có hậu. <br />Chúng con cám ơn mẹ, hai chị  và ba má đã cho chúng con có được ngày hôm nay. </strong></p>', 'images/wedding/home/home-327.jpg');

-- ----------------------------
-- Table structure for `hp_wedding_map`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_map`;
CREATE TABLE `hp_wedding_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(127) NOT NULL,
  `intro` varchar(1023) NOT NULL,
  `content` varchar(2047) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_map
-- ----------------------------
INSERT INTO `hp_wedding_map` VALUES ('3', '42', 'BẢN ĐỒ NHÀ CÔ DÂU VÀ CHÚ RỂ', '', '<p><strong>THÔNG TIN ĐỊA LÝ</strong></p>\r\n<p>Đội: 1</p>\r\n<p>Xã: Văn Lộc</p>\r\n<p>Huyện: Hậu Lộc</p>\r\n<p>Tỉnh: Thanh Hóa</p>\r\n<p>Tọa độ: 19°54\'16\"N - 105°51\'21\"E (Phục vụ cho lính nhảy dù, hi)</p>', 'images/wedding/map/map-421284097974.jpg', '2010-09-07 17:09:34', '2010-09-14 09:23:51');
INSERT INTO `hp_wedding_map` VALUES ('5', '54', 'BẢN ĐỒ NHÀ CÔ DÂU VÀ CHÚ RỂ', '<div class=\"map-intro\">\r\n<p><strong>THÔNG TIN ĐỊA LÝ</strong></p>\r\n<p>Đội: 1</p>\r\n<p>Xã: Văn Lộc</p>\r\n<p>Huyện: Hậu Lộc</p>\r\n<p>Tỉnh: Thanh Hóa</p>\r\n<p>Tọa độ: 19°54\'16\"N - 105°51\'21\"E (Phục vụ cho lính nhảy dù, hi)</p>\r\n</div>', '', 'images/wedding/map/map-541285921861.jpg', '2010-09-10 15:51:12', '2010-10-01 15:31:01');
INSERT INTO `hp_wedding_map` VALUES ('7', '92', 'Bản đồ nhà chú rể Nguyễn Văn Tuấn', '', '', 'images/wedding/map/map-921285979648.jpg', '2010-09-30 11:09:36', '2010-10-02 07:34:08');
INSERT INTO `hp_wedding_map` VALUES ('8', '92', 'Bản đồ nhà cô dâu Trịnh Thị Thảo', '', '', 'images/wedding/map/map-921285980140.jpg', '2010-09-30 15:36:49', '2010-10-02 07:42:20');
INSERT INTO `hp_wedding_map` VALUES ('9', '104', '', '', '<p>TU 02 A PHO NGUYEN CHICH PHUONG NAM NGAN TPTH</p>', '', '2010-10-17 07:51:23', '2010-10-17 07:51:23');
INSERT INTO `hp_wedding_map` VALUES ('11', '223', 'Bản đồ nhà chú rể Quang Tiến', '<p>1</p>', '<p>Tọa độ: 19°47\'45\"N   105°47\'28\"E</p>', 'images/wedding/map/map-2231299808599.jpg', '2011-03-11 08:56:39', '2011-03-11 11:56:52');
INSERT INTO `hp_wedding_map` VALUES ('12', '223', 'Bản đồ nhà cô dâu Minh Hoa', '1', '<p>2</p>', 'images/wedding/map/map-2231299809058.jpg', '2011-03-11 09:04:18', '2011-03-11 09:04:18');

-- ----------------------------
-- Table structure for `hp_wedding_map_intro`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_map_intro`;
CREATE TABLE `hp_wedding_map_intro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_map_intro
-- ----------------------------
INSERT INTO `hp_wedding_map_intro` VALUES ('1', '42', '<p>Nhà cô dâu và chú rể gần nhau (chỉ vài trăm mét thôi), nên cũng tiện, vẽ bản đồ chỉ cần một cái, là dùng được cho cả 2, hi. Mỗi đứa ngự trị một góc vuông, nên không có lựa chọn ra con đường ngắn nhất.</p>');
INSERT INTO `hp_wedding_map_intro` VALUES ('2', '54', '<p>chỉ đường về nhà cô dâu chú rể.</p>');
INSERT INTO `hp_wedding_map_intro` VALUES ('3', '92', '<p>Nhà mình ở xa, nên gửi bản đồ để mọi người tìm đường cho dễ nhé, nếu không tìm được cũng đừng quay về luôn, hi.</p>');
INSERT INTO `hp_wedding_map_intro` VALUES ('4', '104', '<p>02A PHO NGUYEN CHICH PHUONG NAM NGAN TPTH DEN NAM DINH</p>');
INSERT INTO `hp_wedding_map_intro` VALUES ('5', '197', '');
INSERT INTO `hp_wedding_map_intro` VALUES ('6', '223', '');

-- ----------------------------
-- Table structure for `hp_wedding_plants`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_plants`;
CREATE TABLE `hp_wedding_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(127) NOT NULL,
  `intro` varchar(1023) NOT NULL,
  `content` varchar(2047) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_plants
-- ----------------------------
INSERT INTO `hp_wedding_plants` VALUES ('1', '42', 'Bài viết phần kế hoạch đám cưới', '<p>đã được lên chi tiết từ 10 năm trước</p>', '<p>1. <strong>D</strong>ạm ngõ<br />2. <strong>N</strong>ạp tài.<br />3. <strong>X</strong>in cưới.</p>', 'images/wedding/plant/plant-421279154464.jpg', '2010-07-14 17:41:04', '2010-07-14 17:41:04');
INSERT INTO `hp_wedding_plants` VALUES ('3', '42', '1', '<p>2</p>', '<p>3</p>', 'images/wedding/plant/plant-421283323060.jpg', '2010-09-01 13:36:31', '2010-09-01 13:37:40');
INSERT INTO `hp_wedding_plants` VALUES ('4', '54', 'Lịch Nạp tài', '<p><strong>LỄ NẠP TÀI</strong></p>\r\n<p>Vào hồi 14 giờ 30 phút, ngày 17 - 9 - 2010</p>\r\n<p>(là ngày 10 tháng 8 năm Canh Dần)</p>', '<p>Đây là thời gian Nhà Trai chính thức có mặt tại Nhà Gái, vì thế sẽ xuất phát từ Nhà Trai trước khoảng 15 phút.</p>', '', '2010-09-10 16:07:35', '2011-02-18 16:40:33');
INSERT INTO `hp_wedding_plants` VALUES ('5', '54', 'Lịch Đón Dâu', '<p><strong>LỊCH ĐÓN DÂU</strong></p>\r\n<p>Hôn lễ tổ chức vào hồi 11 giờ 00 phút, Thứ năm, ngày 23 tháng 9 năm 2010.</p>\r\n<p>(là ngày 16 tháng 8 năm Canh Dần)</p>\r\n<p>Tại: Hội trường Nhà Trai</p>', '<p>Để Hôn lễ được tổ chức đúng vào thời gian đã định, Nhà Trai dự định sẽ khởi hành ra Nhà Gái lúc 10 giờ 30 phút, tiến hành các thủ tục cần tiết trong khoảng thời gian 20 phút, sau đó tiến hành xin Dâu, cô dâu sẽ có mặt tại Hội trường Nhà trai để tiến hành Lễ thành hôn đúng như thời gian đã được ấn định.</p>\r\n<p>Trân trọng.</p>', '', '2010-09-10 16:13:36', '2011-02-18 16:39:48');
INSERT INTO `hp_wedding_plants` VALUES ('6', '42', 'Test', '<p>Test</p>', '<p>Test</p>', 'images/wedding/plant/plant-421284543790.jpg', '2010-09-15 16:41:10', '2010-09-15 16:43:10');
INSERT INTO `hp_wedding_plants` VALUES ('7', '180', 'Tiec cuoi ngay 24/4/2011', '', '<p>Ngay 24/4/2011 (nham ngay 22/3 am lich), mot su kien quan trong se dien ra : \"Le cuoi giua chu re NGUYEN DINH LENH & co dau NGUYEN THUY HOANG VY\"</p>', 'images/wedding/plant/plant-1801296639631.jpg', '2011-02-02 16:40:30', '2011-02-02 16:40:30');
INSERT INTO `hp_wedding_plants` VALUES ('8', '180', 'Wedding plan', '', '<p>+ Chu nhat, ngay 24/4/2011 (nham ngay 22/3 am lich) : tiec cuoi tai nha hang Dong Phuong - duong Nguyen Van Qua, q12</p>\r\n<p>+ Thu 2, ngay 25/4/2011 (nham ngay 23/3 am lich) : le cuoi tai nha tho Thang Long, Q11</p>\r\n<p>+ Thu 2, ngay 2/5/2011 (nham ngay 30/3 am lich) : le cuoi tai tu gia Duy Xuyen - Quang Nam</p>', '', '2011-02-02 16:44:00', '2011-02-02 16:44:00');
INSERT INTO `hp_wedding_plants` VALUES ('9', '223', 'Lịch Nạp tài Quang Tiến - Minh Hoa', '<p>Xem thời gian đi nạp tài</p>', '<p>Lễ Nạp tài của <strong>Quang Tiến</strong> và <strong>Minh Hoa</strong> được tổ chức vào hồi 7h30 ngày 06 tháng 3 năm 2011 tức là ngày 02 tháng 02 năm Tân Mão.</p>\r\n<p>Mọi người tập trung tại nhà chú rể để gia đình bố trí xe cùng tham gia đi Nạp tài.</p>', '', '2011-03-10 22:11:26', '2011-03-10 22:11:26');
INSERT INTO `hp_wedding_plants` VALUES ('10', '223', 'Lịch Đón dâu', '<p>Thông tin thêm về lịch đón Cô dâu Minh Hoa.</p>', '<p>Ngày 12 tháng 02 năm 2011 (tức là ngày 08 tháng 02 năm Tân Mão). Đúng 13h30 chú rể phải có mặt tại nhà Gái để làm các thủ tục liên quan, như vậy có nghĩa là 13h Nhà trai sẽ xuất phát đi Đón dâu.</p>\r\n<p>Vì vậy mong nhận được sự quan tâm của Quan khách 2 bên gia đình, người thân và bạn bè cho ngày hạnh phúc của chú rể <strong>Quang Tiến</strong> và cô dâu <strong>Minh Hoa</strong> được thêm phần long trọng.</p>\r\n<p>Xin chân thành cảm ơn.</p>', '', '2011-03-10 22:17:08', '2011-03-10 22:17:08');
INSERT INTO `hp_wedding_plants` VALUES ('11', '248', 'ngay hanh phuc', '<p>tình yêu sẽ giúp chúng ta vượt qua những khó khăn trong cuộc sống.<br />sẽ nâng cánh cho những ước mơ và đem đến những giây phút thăng hoa...<br />với tôi hạnh phúc chỉ đơn giản thôi : đó là mỗi ngày được nhìn thấy khuôn mặt đáng yêu <br />của vợ, được nhìn thấy nụ cười và đôi mắt của vợ . tôi chỉ muốn nói rằng : anh sẽ mãi bên em trên suốt chặng đường mà hai ta đang đi...!</p>', '<p>ngày cưới : 22 tháng 7 năm 2011</p>', 'images/wedding/plant/plant-2481304251577.jpg', '2011-05-01 19:06:16', '2011-05-01 19:06:16');
INSERT INTO `hp_wedding_plants` VALUES ('12', '289', 'Theme màu trang trí lễ đính hôn', '<p><strong><span>MOMENT OF PEACE <br /></span></strong></p>\r\n<p>Khi tìm hiểu và yêu nhau, cảm giác phiêu lưu, bí ẩn luôn mang lại niềm phấn khởi, gặp nhau như \"định luật vạn vật hấp dẫn\" :-) . Nhưng khi đã quyết định gắn bó cùng anh đi đến suốt cuộc đời, thì cảm giác BÌNH YÊN luôn là điều em tìm kiếm. Không cần biết chuyện gì sẽ xảy ra, em sẽ không còn lẻ loi, không còn cô độc, không còn sợ những sóng gió và gian nan… vì bên cạnh đã có một vòng tay âu yếm, một bờ vai vững chắc, chở che và yên ấm.<strong><span><br /></span></strong></p>', '<p> </p>\r\n<p><strong>Theme màu:</strong> sự kết hợp hoàn hảo giữa màu XANH Tiffany, tạo cho ta cảm giác vững vàng, yên bình và màu VÀNG là màu của ánh mặt trời ấm áp là màu của sự tận hưởng niềm hạnh phúc ngập tràn.</p>\r\n<p><br /><strong>Trang trí giữa bàn:</strong> thử tưởng tượng chính giữa là một con đường và hai người yêu nhau bắt đầu chặng đường của mình ở hai điểm khác nhau. Tuy nhiên những sợi dây rừng được điểm tô bởi những cánh hoa vàng ấm áp như  sợi dây định mệnh đã thắt chặt hai người và nối kết chúng tôi lại với nhau.</p>\r\n<p><strong><br /></strong></p>', '', '2011-09-20 09:09:42', '2011-09-30 06:06:37');
INSERT INTO `hp_wedding_plants` VALUES ('13', '289', 'Theme màu trang trí lễ Vu Quy', '<p>MY ENDLESS VITALITY - SEEDS & BLOSSOMS</p>\r\n<p>\"Anh và em là bạn, là tình nhân và là tri kỉ của nhau. Cùng trải qua bao nhiêu khó khăn, vui có buồn có, trách móc và giận hờn, nhưng rồi những gì còn lại sẽ là tình yêu và sự thông hiểu\"</p>\r\n<p>Tôi dành cho Hoàng màu NÂU của gỗ, sắc màu không bao giờ nổi trội, luôn làm nền cho những đường nét khác, nhưng luôn mang trong mình nguồn năng lượng không bao giờ cạn, tượng trưng cho cảm giác ấm áp, vững chãi và yên bình. Còn tôi, nghĩ về màu VÀNG, màu của niềm tin, yêu đời và hạnh phúc.</p>', '<p>Tình yêu có khi đến từ những sự tình cờ, như những hạt giống rơi trên cánh đồng. Cùng những sự nối kết, thời gian nuôi dưỡng, hạt giống đó nảy mầm thành tình yêu cao đẹp. Tôi muốn làm chủ đề \"khúc ca vui mừng\" cho tình yêu đã đâm chồi nảy lộc từ những khoảnh khắc tình cờ nhất. Cuộc sống đã mang chúng tôi đến với nhau bằng những cuộc gặp mặt bất ngờ, và rồi cùng nhau tưới xanh cho mầm non tình ái đó.<br /><br /><strong>Theme màu:</strong> Màu xanh lá tượng trưng cho những bước ngoặt, cho những mầm non mới nhú của cảm tình, là những điều chúng tôi không thể ngờ đến trong cuộc sống, có thể đã vô tình mang chúng tôi đến với tình yêu. Chính thảm cỏ xanh mát kia đã khiến hạt giống tình yêu nảy mầm, vươn lên cả những gì trúc trắc nhất để mang lại những bông hoa tươi chói lọi của tình yêu.<br /><br />Khi yêu nhau, cùng bước qua những phút giây say sưa mật ngọt, anh và em sẽ dần bước vào một giai đoạn khác của tình yêu: chín chắn và sâu sắc hơn. Lúc ấy những sẻ chia chân thành giúp bạn trưởng thành, độ lượng và yêu đời hơn. Nhưng rốt cuộc một người bạn đời đúng nghĩa còn là gì nữa đối với bạn? Một người bạn đời đúng nghĩa không chỉ để yêu, để quý trọng mà còn là nguồn cảm hứng và niềm yêu đời bất tận.  <br /><br /><strong>Hoa cưới: </strong>Tulip hồng đem lại sự lãng mạn và tình yêu hoàn hảo. (rước dâu)<br /><br />Hoa Hướng Dương (loài hoa tôi yêu thích): thể hiện niềm tin và hy vọng trong tình yêu, luôn hướng về điều tươi sáng nhất, là sức mạnh, lòng trung thực. Người ta còn cho rằng hạnh phúc luôn đến với những người lạc quan và mạnh mẽ như \"Hoa Hướng Dương luôn hướng tới Mặt Trời \". Màu vàng là biểu tượng cho sự hạnh phúc và đầy đủ. Sử dụng hoa cưới màu vàng là cách hoàn hảo để vay mượn sự sung túc đến cho đám cưới.(vu quy)<br /><br /><strong>Trang trí giữa bàn:</strong> Thảm hoa xanh mướt chính là mầm non tình yêu, đâm chồi mãnh liệt lên cao thành những đóa hoa vàng đầy sức sống. <br /><br /></p>', '', '2011-09-27 01:02:55', '2011-09-30 06:01:12');

-- ----------------------------
-- Table structure for `hp_wedding_stories`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_stories`;
CREATE TABLE `hp_wedding_stories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(127) NOT NULL,
  `intro` varchar(2047) NOT NULL,
  `content` varchar(2047) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_stories
-- ----------------------------
INSERT INTO `hp_wedding_stories` VALUES ('1', '42', 'Chúng tôi đã quen nhau như thế', '<p>Ngày xửa ngày xưa, có một anh chàng mơ mộng cứ nghĩ mình đã quen được một cô gái tốt nhất trên đời và quyết định lấy cô làm vợ 1</p>', '<p>Nhưng rồi cuộc đời đâu có là mơ...</p>\r\n<p>Nhưng rồi cuộc đời đâu có là mơ...</p>\r\n<p>Nhưng rồi cuộc đời đâu có là mơ...</p>\r\n<p>Nhưng rồi cuộc đời đâu có là mơ...</p>\r\n<p>Nhưng rồi cuộc đời đâu có là mơ...</p>\r\n<p>Nhưng rồi cuộc đời đâu có là mơ...2</p>', 'images/wedding/story/story-421278869118.jpg', '2010-07-12 01:06:30', '2010-08-02 17:08:42', '0');
INSERT INTO `hp_wedding_stories` VALUES ('5', '54', 'Yêu đơn giản chỉ là...', '<p>Một tình yêu nhỏ đơn giản chỉ là - hãy đọc hết bài này</p>', '<p>Là bạn đã bắt đầu thích 1 ai đó mà chưa dám nói ra vì sợ người kia chưa chắc đã thích mình.<br />Tất nhiên là 1 tình yêu nhỏ chỉ dành cho 1 cô gái nhỏ mà thôi.<br /><br />Bạn thích yêu 1 ai đó mà có thể cãi nhau với bạn hoài mà không chán<br />Nó cũng chỉ đơn giản là khi bạn muốn nhìn người đó 1 lúc mà không dám.<br /><br />Mỗi buổi sáng thức dậy người đầu tiên bạn chợt nghĩ tới là người ấy.<br />Đơn giản là bạn đã bắt đầu cảm thấy 1 số rắc rối đang đến.<br />Đơn giản là khi phải đi xa bạn cảm thấy lưu luyến... Và bạn đã yêu 1 chút rồi đó!<br /><br />Tình yêu đơn giản là khi bạn nhớ tới người ấy muốn gọi điện, gọi xong mà chẳng biết nói gì.<br />Đơn giản là gọi điện không biết nói gì mà chỉ muốn nghe thấy giọng nói của người đó.<br />Đơn giản là ghi nhớ từng lời nói của người đó<br />Đơn giản cũng chỉ là muốn giới thiệu tất cả những gì mình có cho người đó xem.<br /><br />Khi bên cạnh người đó bạn thờ ơ rồi khi xa cách bạn lại đi tìm kiếm.<br />Đơn giản là chẳng biết nói yêu thế nào cả... (chẳng đơn giản tẹo nào).<br />Đơn giản chỉ là có những chuyện mà chỉ 2 người hiểu mà không ai có thể hiểu được.<br />Đơn giản là nhìn ảnh người đó mà bạn cười như chưa bao giờ được cười mà không hiểu lí do tại sao.<br />Đơn giản khi nghe người đó hát mà bạn cứ nghe đi nghe lại mãi mà không chán.<br />Đơn giản là khi đi ngoài đường bạn nghĩ tới người đó bạn phá lên cười, mọi người tưởng bạn bị hâm... Có khi nào bạn đã bắt đầu hâm vì một ai đó chưa?<br />Đơn giản là bạn thích bị gọi là hâm.<br /><br />Tình yêu đơn giản là bạn yêu cả nhưng cái xấu của người đó, vì nếu không có cái xấu đó thì người đó không còn là người mà bạn đang yêu nữa.<br /><br />Và cuối cùng là bạn làm cái này cho ai đó thì đó là bạn đang yêu đó.</p>', 'images/wedding/story/story-541287050360.jpg', '2010-10-14 16:59:20', '2010-10-14 16:59:20', '0');
INSERT INTO `hp_wedding_stories` VALUES ('7', '238', 'Là một gia đình em nhé!30-03-2011', '<p>Một quyển sách do chính tay anh làm để chuẩn bị cho ngày cưới của chúng mình đấy.<br />Một lời cầu hôn thật ngọt ngào. lãng mạn và không đụng hàng của người đàn ông tôi yêu!!!<br /><br /></p>', '<h1>Một ngày thật đặc biệt, chị và cháu về quê thế là ở nhà chỉ có anh và mình.<br />Ngày đó mình đi làm về thì thấy anh về khi nào rồi ấy và đang chăm chú nấu ăn, nhà cửa sạch sẽ, gọn gàng....cảm giác thật hạnh phúc...(anh đã chuẩn bị ngày này từ lâu rùi thì phải- cảm giác vừa bất ngờ, vừa vui vui...) vào nhà, hôn anh 1 cái chào anh, rồi cất túi xách...anh bảo:\" Có quà cho em đấy, em yêu\"...vui quá!!!! quay bên nọ, quay bên kia, tìm khắp nhà....\"anh yêu, quà ở đâu ấy nhỉ?\"- Mình hỏi. Anh bảo ở trong tủ của MON ấy- Cháu yêu của tớ. wow!!! \"<em><strong>HÃY LÀ MỘT GIA ĐÌNH EM NHÉ</strong></em>. !!!!-một quyển được đóng cẩn thận, trong đó là một kế hoạch của đám cưới của chúng mình mà anh đã chuẩn bị từ lâu lẩu lầu lâu đâu ấy...bây giờ nó đã được hoàn thành... Mắt mình mở thật là to, bất ngờ quá không nói thành lời....Nhìn anh đắm đuối...Đối với mình, không có gì ngọt ngào bằng lời cầu hôn vừa chân thực vừa đáng yêu và không đụng hàng như thế. không nói ra nhưng mình thấy mình thật sự hạnh phúc vì anh là một người rất chu toàn.<em><strong> YEU ANH THAT NHIEU!!!</strong></em><br /><br />và bây giờ chúng mình đang rục rịch theo kế hoạch để có một đám cưới hoàn hảo nè!!!</h1>', '', '2011-04-07 17:41:12', '2011-04-07 17:41:12', '0');
INSERT INTO `hp_wedding_stories` VALUES ('8', '248', '', '', '', 'images/wedding/story/story-2481304240245.jpg', '2011-05-01 15:57:24', '2011-05-01 15:57:24', '0');
INSERT INTO `hp_wedding_stories` VALUES ('9', '248', '', '', '<p>khi xưa hẹn thề bên nhau mãi không rời<br />khi xưa, tình ngọt ngào và êm ái<br />Đôi lúc em hờn vu vơ<br />Anh đến mang theo ngàn lời thơ<br />Hạnh phúc sao quá đơn sơ, ngỡ trăm năm ko thể phai mờ<br />Đêm nay , ngoài trời mưa rơi hững hờ.......<br />Ngày đôi ta..có nhau...trọn đời...!</p>', 'images/wedding/story/story-2481304241439.jpg', '2011-05-01 16:17:19', '2011-05-01 16:17:19', '0');
INSERT INTO `hp_wedding_stories` VALUES ('10', '289', 'Học cách yêu một người', '<p>Chúng ta sống trên đời này không phải để tìm thấy một người hoàn mỹ để yêu mà chính là để học cách yêu thương một người không hoàn mỹ một cách trọn vẹn.</p>\r\n<p> </p>', '<p>“Định mệnh mang chúng ta đến với nhau nhưng chính chúng ta làm cho định mệnh thành sự thật.</p>\r\n<p> </p>', '', '2011-09-21 06:08:14', '2011-09-21 08:41:03', '0');
INSERT INTO `hp_wedding_stories` VALUES ('11', '289', 'Định mệnh ta gặp nhau', '<p>Trong chuyện tình yêu, có người thì luôn tìm kiếm tình yêu, mà trong tình yêu thì có rất nhiều cách bài tỏ cho người khác phái để ý đến mình rồi bài tỏ tình cảm, có người  buông theo số phận chữ duyên và có người cứ cho mình có duyên nợ sẽ gặp nhau. Vì đó là ý nghĩ của mỗi người.</p>', '<p>Còn tôi, chuyện tình yêu tôi rất lãng mạng như ai đó đã sắp đặt tôi và nàng đã gặp nhau. Và cũng thật bất ngờ là tên nàng đã có kèm theo tên tôi. Tôi nghĩ rằng đó là \" Định mệnh Chúa đã an bài cho tôi và nàng gặp nhau\" và từ đó chúng tôi tìm hiểu nhau và yêu nhau. Những gì tính tình của nàng luôn có ở tôi và hai chúng tôi thông cảm và hiểu nhau.</p>\r\n<p>...</p>\r\n<p> </p>\r\n<p>Anh gặp em nơi ngã tư Hàng Xanh tp<br /> Khi gặp em tim anh đánh thình thịch<br /> Tôi liếc nhìn nàng mà còn hơi mắc cỡ<br />Thế là tôi đã quen nàng từ dạo ấy<br />Bây giờ tôi và nàng yêu thương nhau<br />Thế là cuối cùng tôi và nàng có 1 quyết định<br />Đó là quyết định trọng đại cho cuộc đời.<br /><br /></p>', '', '2011-09-21 08:59:16', '2011-09-27 04:23:29', '0');
INSERT INTO `hp_wedding_stories` VALUES ('13', '289', 'Tình Cờ', '', '<h1><a name=\"_Toc244901226\"><span style=\"font-weight: normal; color: red;\">TÌNH CỜ</span></a></h1>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Tình cờ anh gặp được em <br /> Như cờ gặp gió, như men rượu nồng <br /> Cờ bay, rượu ấm, tình hồng <br /> Để anh tâm trí bềnh bồng trên mây <br /> Mây bay lãng vãng chiều tây <br /> Ráng hồng, sắc đỏ, bay bay tạo hình : <br /> Anh nhìn tưởng tượng ra mình <br /> Đang cùng em đứng chênh vênh giữa trời, <br /> Gió đưa, gió thổi, gió mời <br /> Hình anh tan biến giữa trời mây trôi, <br /> Gió thu lay động trên đồi <br /> Mắt em nhẹ khép, bờ môi cuộc tình... <br /> <br /> Tình cờ anh gặp được mình <br /> Duyên đưa phận tới, nửa mình là em.</p>', '', '2011-09-27 14:09:07', '2011-09-27 14:09:07', '0');
INSERT INTO `hp_wedding_stories` VALUES ('12', '289', 'Bồi Hồi', '', '<p>Mới đó mà đã năm tháng<br /> Hôm nay tâm trạng bồn chồn lạ ghê<br /> Chợt thấy đùi trái tê tê<br /> Điện thoại nó rú , hề hề xem ai?<br /> Quả nhiên là \" em yêu \" gọi anh yêu<br /> Cứ cho \" em yêu \" đợi tà tà hãy nghe.<br /> A lô ! em yêu đó ah?<br />Đầu bên kia nói rè rè mấy câu :<br /> \"Nảy giờ anh yêu làm gì nhỉ?\"<br />Anh ngủ được một giấc chờ em về<br /> Nàng ta nghe thế mừng rên<br /> Thì ra anh yêu ngủ quên ah.<br /> Bao nhiêu tâm sự trong mình<br /> Dồn nén ứ đọng nay rình tuôn ra.<br /> Rằng chỉ tại vì em iu<br /> Bỏ đi xem áoi bỏ anh một mình<br /> Ừ thì áo cưới em mặc rất xinh<br /> Nhưng soire em mặc hình như...<br />Để em iu ăn kiêng thì soire nào...<br />Em iu mặc vào là đẹp xinh...</p>', '', '2011-09-21 16:10:48', '2011-09-27 04:19:53', '0');
INSERT INTO `hp_wedding_stories` VALUES ('14', '289', 'Tháng Mân côi lại về....', '<p>Trong lịch phụng vụ, tháng 10 có tên là tháng Mân côi. Đó là cầu nguyện bằng chuỗi Mân côi dâng lên Mẹ. Mân côi chính là hoa hồng, bông hồng đẹp, viên ngọc quí.</p>\r\n<p>Những bông hoa nói lên lòng yêu mến của con cái đối với Mẹ hiền. Những bông hoa cũng cố gắng diễn tả phần nào nét đẹp của Mẹ.</p>', '<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p>Kính dâng Mẹ tràng chuỗi mân côi, lời hát đơn sơ câu kinh mừng vui.</p>\r\n<p>Khấn xin Mẹ giữ con trong sạch, giữa bao quay cuồng đam mê cuốn đi trong đời</p>\r\n<p>Trái tim con đây, xin Mẹ điểm tô nét bút tình yêu</p>\r\n<p> </p>\r\n<p>Kính dâng Mẹ một đóa mai khôi là kết tinh bao ghi ơn đời con.</p>\r\n<p>Khấn xin Mẹ giúp con xin vâng dẫu vui hay buồn, con luôn biết giang tay nhận</p>\r\n<p>Trái tim con đây, xin Mẹ chuyển dâng lên Chúa tình yêu.</p>', 'images/wedding/story/story-2891317362008.jpg', '2011-09-30 05:53:27', '2011-09-30 05:59:28', '0');

-- ----------------------------
-- Table structure for `hp_wedding_survey_answers`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_survey_answers`;
CREATE TABLE `hp_wedding_survey_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `is_correct` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_survey_answers
-- ----------------------------
INSERT INTO `hp_wedding_survey_answers` VALUES ('1', '1', 'Bố vợ 1', '0');
INSERT INTO `hp_wedding_survey_answers` VALUES ('2', '1', 'Bố vợ 2', '0');
INSERT INTO `hp_wedding_survey_answers` VALUES ('3', '1', 'Bố vợ 3', '0');
INSERT INTO `hp_wedding_survey_answers` VALUES ('4', '1', 'Bố vợ 4', '0');
INSERT INTO `hp_wedding_survey_answers` VALUES ('5', '2', 'Vợ yêu 01', '1');
INSERT INTO `hp_wedding_survey_answers` VALUES ('6', '2', 'Vợ yêu 02', '0');
INSERT INTO `hp_wedding_survey_answers` VALUES ('7', '2', 'Vợ yêu 03', '0');
INSERT INTO `hp_wedding_survey_answers` VALUES ('8', '2', 'Vợ yêu 04', '0');
INSERT INTO `hp_wedding_survey_answers` VALUES ('12', '5', 'Theo họ của mẹ', '1');
INSERT INTO `hp_wedding_survey_answers` VALUES ('13', '5', 'Theo dòng họ của bố', '0');
INSERT INTO `hp_wedding_survey_answers` VALUES ('14', '5', 'Cả hai phương án trên', '0');
INSERT INTO `hp_wedding_survey_answers` VALUES ('15', '2', 'Tên là gì chẳng được !', '1');
INSERT INTO `hp_wedding_survey_answers` VALUES ('16', '6', 'Thông tin đám cưới', '0');
INSERT INTO `hp_wedding_survey_answers` VALUES ('17', '6', 'Thông tin gia đình chúng tôi', '0');
INSERT INTO `hp_wedding_survey_answers` VALUES ('18', '6', 'Cả hai phương án trên', '1');
INSERT INTO `hp_wedding_survey_answers` VALUES ('19', '8', 'Theo họ của bố', '1');
INSERT INTO `hp_wedding_survey_answers` VALUES ('20', '8', 'Theo họ của mẹ', '1');
INSERT INTO `hp_wedding_survey_answers` VALUES ('22', '8', 'Ý kiến khác', '0');
INSERT INTO `hp_wedding_survey_answers` VALUES ('23', '9', '0', '0');
INSERT INTO `hp_wedding_survey_answers` VALUES ('24', '9', '1', '0');
INSERT INTO `hp_wedding_survey_answers` VALUES ('25', '9', '10011101010101', '1');

-- ----------------------------
-- Table structure for `hp_wedding_survey_votes`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_survey_votes`;
CREATE TABLE `hp_wedding_survey_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hp_wedding_survey_votes
-- ----------------------------
INSERT INTO `hp_wedding_survey_votes` VALUES ('1', '2', '5', '2010-07-20 23:37:21');
INSERT INTO `hp_wedding_survey_votes` VALUES ('2', '2', '5', '2010-08-02 16:55:35');
INSERT INTO `hp_wedding_survey_votes` VALUES ('3', '2', '5', '2010-08-02 17:04:29');
INSERT INTO `hp_wedding_survey_votes` VALUES ('4', '2', '5', '2010-08-02 17:19:27');
INSERT INTO `hp_wedding_survey_votes` VALUES ('5', '2', '8', '2010-08-10 17:44:07');
INSERT INTO `hp_wedding_survey_votes` VALUES ('6', '2', '7', '2010-08-26 22:21:05');
INSERT INTO `hp_wedding_survey_votes` VALUES ('7', '2', '7', '2010-08-26 22:57:51');
INSERT INTO `hp_wedding_survey_votes` VALUES ('8', '2', '6', '2010-08-26 22:58:03');
INSERT INTO `hp_wedding_survey_votes` VALUES ('9', '2', '8', '2010-09-08 10:40:59');
INSERT INTO `hp_wedding_survey_votes` VALUES ('10', '2', '8', '2010-09-08 10:41:05');
INSERT INTO `hp_wedding_survey_votes` VALUES ('11', '4', '10', '2010-09-27 10:58:31');
INSERT INTO `hp_wedding_survey_votes` VALUES ('12', '4', '11', '2010-09-27 10:58:42');
INSERT INTO `hp_wedding_survey_votes` VALUES ('13', '5', '13', '2010-09-30 22:25:35');
INSERT INTO `hp_wedding_survey_votes` VALUES ('14', '5', '13', '2010-09-30 22:25:51');
INSERT INTO `hp_wedding_survey_votes` VALUES ('15', '5', '13', '2010-09-30 22:26:12');
INSERT INTO `hp_wedding_survey_votes` VALUES ('16', '5', '13', '2010-09-30 22:27:48');
INSERT INTO `hp_wedding_survey_votes` VALUES ('17', '5', '12', '2010-10-02 14:22:15');
INSERT INTO `hp_wedding_survey_votes` VALUES ('18', '2', '7', '2010-10-11 23:08:54');
INSERT INTO `hp_wedding_survey_votes` VALUES ('19', '2', '5', '2010-10-11 23:09:00');
INSERT INTO `hp_wedding_survey_votes` VALUES ('20', '2', '15', '2010-10-11 23:09:06');
INSERT INTO `hp_wedding_survey_votes` VALUES ('21', '6', '16', '2010-10-14 16:52:32');
INSERT INTO `hp_wedding_survey_votes` VALUES ('22', '6', '17', '2010-10-14 22:06:07');
INSERT INTO `hp_wedding_survey_votes` VALUES ('23', '6', '17', '2010-10-14 22:06:14');
INSERT INTO `hp_wedding_survey_votes` VALUES ('24', '5', '14', '2010-10-16 04:11:11');
INSERT INTO `hp_wedding_survey_votes` VALUES ('25', '6', '18', '2010-10-20 14:29:21');
INSERT INTO `hp_wedding_survey_votes` VALUES ('26', '5', '13', '2010-12-01 10:35:39');
INSERT INTO `hp_wedding_survey_votes` VALUES ('27', '5', '14', '2011-01-02 15:22:50');
INSERT INTO `hp_wedding_survey_votes` VALUES ('28', '5', '13', '2011-01-02 15:22:59');
INSERT INTO `hp_wedding_survey_votes` VALUES ('29', '9', '25', '2011-02-18 16:53:16');
INSERT INTO `hp_wedding_survey_votes` VALUES ('30', '9', '25', '2011-03-17 19:40:27');
INSERT INTO `hp_wedding_survey_votes` VALUES ('31', '9', '24', '2012-05-22 07:39:00');
INSERT INTO `hp_wedding_survey_votes` VALUES ('32', '5', '14', '2012-10-12 01:46:52');

-- ----------------------------
-- Table structure for `hp_wedding_surveys`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_surveys`;
CREATE TABLE `hp_wedding_surveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_surveys
-- ----------------------------
INSERT INTO `hp_wedding_surveys` VALUES ('1', '42', 'Tên bố vợ tớ là gì?', '1', '2010-07-14 00:31:13');
INSERT INTO `hp_wedding_surveys` VALUES ('2', '42', 'Tên vợ tớ là gì?', '1', '2010-07-14 00:32:28');
INSERT INTO `hp_wedding_surveys` VALUES ('5', '92', 'Theo bạn chúng tôi sẽ đặt Họ lót của con theo?', '1', '2010-09-30 10:37:43');
INSERT INTO `hp_wedding_surveys` VALUES ('6', '54', 'Theo bạn chúng tôi nên đưa thông tin lên Blog Phúc Trang theo hình thức nào?', '1', '2010-10-12 14:35:37');
INSERT INTO `hp_wedding_surveys` VALUES ('7', '104', '', '0', '2010-10-17 07:56:33');
INSERT INTO `hp_wedding_surveys` VALUES ('8', '157', 'Theo bạn chúng tôi nên đặt họ Lót cho Con...?', '1', '2010-12-16 20:32:38');
INSERT INTO `hp_wedding_surveys` VALUES ('9', '197', 'Đâu là đáp án cho một tình yêu?', '1', '2011-02-18 16:47:22');
INSERT INTO `hp_wedding_surveys` VALUES ('10', '289', 'Nên đi tuần trăng mật ở đâu?', '1', '2011-09-27 07:42:32');

-- ----------------------------
-- Table structure for `hp_wedding_templates`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_templates`;
CREATE TABLE `hp_wedding_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(127) NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_templates
-- ----------------------------
INSERT INTO `hp_wedding_templates` VALUES ('1', 'default', 'Default Template', '1', '1', null, null, null, null, null);
INSERT INTO `hp_wedding_templates` VALUES ('2', 'extra', 'Extra template', '0', '1', null, null, null, null, null);
INSERT INTO `hp_wedding_templates` VALUES ('5', 'blue-sky', 'BlueSky Template 1', '0', '1', '2012-11-06 14:09:31', null, '0', '0000-00-00 00:00:00', '1');
INSERT INTO `hp_wedding_templates` VALUES ('6', 'funny', 'Funny Template', '0', '1', null, null, null, null, null);
INSERT INTO `hp_wedding_templates` VALUES ('7', 'wedding', 'Wedding template', '0', '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for `hp_wedding_thanks`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_thanks`;
CREATE TABLE `hp_wedding_thanks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(127) NOT NULL,
  `intro` varchar(2047) NOT NULL,
  `content` varchar(2047) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_thanks
-- ----------------------------
INSERT INTO `hp_wedding_thanks` VALUES ('1', '42', 'Lời cảm ơn', '<p>Lời cảm ơn của chúng tôi</p>', '<p>Chân thành cảm ơn tất cả các bạn đã đến chung vui mừng hạnh phúc của chúng tôi. Sự có mặt của các bạn là nguồn thu nhập chính của gia đình chúng tôi. Xin chân thành cảm ơn</p>', 'images/wedding/thanks/thanks-421278907388.jpg', '2010-07-12 12:03:08', '2010-07-12 12:03:08');
INSERT INTO `hp_wedding_thanks` VALUES ('3', '54', 'Lời cảm ơn', '<p>Hôm nay, công việc của chúng tôi cũng đã xong, có thể kỷ niệm 1 ngày ngày cưới (hi), lên mạng online tí mà đã được chộp, tự dưng thấy mình như tội phạm, khi không dưng lại bị hỏi \"giờ này online làm gì\". Buồn cười, nhưng câu trả lời đây:</p>\r\n<p style=', '<p style=\"text-align: justify;\">Đầu tiên chúng con muốn gửi những lời cảm ơn đến những người thân trong Gia đình, Dòng họ, Hàng xóm,... những người đã tạo điều kiện cho chúng con từ những ngày đầu tiên tìm hiểu nhau, đến khi chúng con chính thức thành vợ, thành chồng.<br /><br />Cảm ơn Cơ quan Sở Thông tin và Truyền thông Thanh Hóa, Trung tâm Công nghệ thông tin và Truyền thông Thanh Hóa, Trường THPT Chuyên Lam Sơn nơi chúng tôi công tác, đã cố gắng bố trí tạo điều kiện về thời gian, công việc để việc tổ chức đám cưới của chúng tôi có nhiều thuận lợi. Cảm ơn Đoàn Thanh niên các cơ quan trên đã đồng hành cùng chúng tôi trong tất cả các ngày Lễ và hơn nữa cảm ơn Chi đoàn Thanh niên Sở Thông tin truyền thông đã tạo nên một không khí ấn tượng, hoành tráng, để lại nhiều tỉnh cảm trong Gia đình, cũng như những người tham dự Lễ Thành Hôn của chúng tôi.<br /><br />Cảm ơn Các anh chị, người thân của cả hai chúng tôi (Trần Lê Phúc và Lê Thu Trang), bạn bè lớp 12E (1997-2000), lớp 9A (1997-2000) Trường THCS Lê Hữu Lập, lớp 12A3 (2001-2004) Trường THPT Hậu Lộc 2 - Hậu Lộc - Thanh Hóa đã dành thời gian về với chúng tôi từ khắp mọi miền tổ quốc. Cảm ơn các bạn dù khó khăn về điều kiện địa lý, công việc không thể về được đã dành cho chúng tôi những lời chúc tốt đẹp nhất.<br /><br />Một lần nữa, chúng tôi xin gửi lời cảm ơn chân thành nhất tới tất cả mọi người, chúc mọi người sức khỏe, thành đạt.</p>', '', '2010-09-24 18:31:45', '2010-09-24 18:37:02');
INSERT INTO `hp_wedding_thanks` VALUES ('4', '157', 'Định Nga xin cảm ơn các bạn đã ghé thămwebsite Hạnh Phúc', '<p><span><em>Cám ơn các bạn đã ghé thăm trang web và dành những lời chúc tốt đẹp nhất cho chúng tôi. Chúng tôi xin gửi tới mọi người một vài hình ảnh ghi nhớ những khoảnh khắc tuyệt vời này</em></span></p>', '', '', '2010-12-16 20:31:00', '2010-12-16 20:31:00');
INSERT INTO `hp_wedding_thanks` VALUES ('5', '180', '', '', '<p>Cam on cac ban da ghe tham blog cua toi.</p>', '', '2011-02-02 16:50:55', '2011-02-02 16:50:55');
INSERT INTO `hp_wedding_thanks` VALUES ('6', '264', 'Cảm ơn các bạn', '<p>cảm ơn mọi người</p>', '<p>Cảm ơn các bạn</p>', '', '2011-05-25 17:30:13', '2011-05-25 17:30:13');

-- ----------------------------
-- Table structure for `hp_wedding_userapps`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_userapps`;
CREATE TABLE `hp_wedding_userapps` (
  `user_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `app_title` varchar(255) NOT NULL,
  `app_ordering` int(11) NOT NULL,
  `app_show` tinyint(4) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`user_id`,`app_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_userapps
-- ----------------------------
INSERT INTO `hp_wedding_userapps` VALUES ('43', '14', 'Video', '11', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('43', '13', 'Thăm dò ý kiến', '10', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('43', '12', 'Lời cảm ơn', '9', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('43', '2', 'Bản đồ', '8', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('43', '11', 'Thiệp mời', '7', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('43', '10', 'Kế hoạch đám cưới', '6', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('43', '1', 'Album ảnh', '5', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('43', '9', 'Lưu bút - Lời chúc', '4', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('43', '8', 'Nhật ký', '3', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('43', '3', 'Chuyện tình yêu', '2', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('43', '7', 'Trang chủ', '1', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('42', '7', 'Trang chủ', '1', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('123', '8', 'Nhật ký', '3', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('42', '3', 'Chuyện tình yêu', '2', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('42', '8', 'Nhật ký 1', '3', '1', '1234');
INSERT INTO `hp_wedding_userapps` VALUES ('42', '9', 'Lưu bút - Lời chúc', '4', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('42', '1', 'Album ảnh', '5', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('42', '10', 'Kế hoạch đám cưới', '6', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('42', '11', 'Thiệp mời', '7', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('123', '3', 'Chuyện tình yêu', '2', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('92', '2', 'Chỉ đường', '8', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('123', '7', 'Trang chủ', '1', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('54', '1', 'Album ảnh', '5', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('54', '10', 'Kế hoạch đám cưới', '6', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('54', '11', 'Thiệp mời', '7', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('54', '2', 'Bản đồ', '8', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('54', '12', 'Lời cảm ơn', '9', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('54', '13', 'Thăm dò ý kiến', '10', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('54', '14', 'Video', '11', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('92', '3', 'Chuyện tình yêu', '2', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('92', '8', 'Điều ước', '3', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('92', '9', 'Lưu bút - Lời chúc', '4', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('92', '1', 'Album ảnh', '5', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('92', '10', 'Kế hoạch đám cưới', '6', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('92', '11', 'Thiệp mời', '7', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('138', '7', 'Trang chủ', '1', '1', '111111');
INSERT INTO `hp_wedding_userapps` VALUES ('123', '9', 'Lưu bút - Lời chúc', '4', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('123', '1', 'Album ảnh', '5', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('123', '10', 'Kế hoạch đám cưới', '6', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('123', '11', 'Thiệp mời', '7', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('123', '2', 'Bản đồ', '8', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('123', '12', 'Lời cảm ơn', '9', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('123', '13', 'Thăm dò ý kiến', '10', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('123', '14', 'Video', '11', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('138', '3', 'Chuyện tình yêu', '2', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('138', '8', 'Nhật ký', '3', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('138', '9', 'Lưu bút - Lời chúc', '4', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('138', '1', 'Album ảnh', '5', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('138', '10', 'Kế hoạch đám cưới', '6', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('138', '11', 'Thiệp mời', '7', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('138', '2', 'Bản đồ', '8', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('138', '12', 'Lời cảm ơn', '9', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('138', '13', 'Thăm dò ý kiến', '10', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('138', '14', 'Video', '11', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('92', '7', 'Trang chủ', '1', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('54', '3', 'Chuyện tình yêu', '2', '1', '123');
INSERT INTO `hp_wedding_userapps` VALUES ('54', '8', 'Nhật ký', '3', '0', '');
INSERT INTO `hp_wedding_userapps` VALUES ('54', '9', 'Lưu bút - Lời chúc', '4', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('42', '2', 'Bản đồ', '8', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('42', '12', 'Lời cảm ơn', '9', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('42', '13', 'Thăm dò ý kiến', '10', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('42', '14', 'Video', '11', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('54', '7', 'Trang chủ', '1', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('92', '12', 'Lời cảm ơn', '9', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('92', '13', 'Thăm dò ý kiến', '10', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('92', '14', 'Video', '11', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('178', '7', 'Trang chủ', '1', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('178', '3', 'Chuyện tình yêu', '2', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('178', '8', 'Nhật ký', '3', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('178', '9', 'Lưu bút - Lời chúc', '4', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('178', '1', 'Album ảnh', '5', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('178', '10', 'Kế hoạch đám cưới', '6', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('178', '11', 'Thiệp mời', '7', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('178', '2', 'Bản đồ', '8', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('178', '12', 'Lời cảm ơn', '9', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('178', '13', 'Thăm dò ý kiến', '10', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('178', '14', 'Video', '11', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('180', '8', 'Nhật ký', '7', '0', '');
INSERT INTO `hp_wedding_userapps` VALUES ('180', '9', 'Lưu bút - Lời chúc', '6', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('180', '1', 'Album ảnh', '5', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('180', '10', 'Kế hoạch đám cưới', '2', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('180', '11', 'Thiệp mời', '3', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('180', '2', 'Bản đồ', '4', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('180', '12', 'Lời cảm ơn', '9', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('180', '13', 'Thăm dò ý kiến', '10', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('180', '3', 'Chuyện tình yêu', '8', '0', '');
INSERT INTO `hp_wedding_userapps` VALUES ('180', '7', 'Trang chủ', '1', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('180', '14', 'Video', '11', '0', '');
INSERT INTO `hp_wedding_userapps` VALUES ('244', '7', 'Trang chủ', '1', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('244', '3', 'Chuyện tình yêu', '2', '0', '');
INSERT INTO `hp_wedding_userapps` VALUES ('244', '8', 'Nhật ký', '3', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('244', '9', 'Lưu bút - Lời chúc', '4', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('244', '1', 'Album ảnh', '5', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('244', '10', 'Kế hoạch đám cưới', '6', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('244', '11', 'Thiệp mời', '7', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('244', '2', 'Bản đồ', '8', '0', '');
INSERT INTO `hp_wedding_userapps` VALUES ('244', '12', 'Lời cảm ơn', '9', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('244', '13', 'Thăm dò ý kiến', '10', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('244', '14', 'Video', '11', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('248', '7', 'Trang chủ', '1', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('248', '3', 'Chuyện tình yêu', '2', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('248', '8', 'Nhật ký', '3', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('248', '9', 'Lưu bút - Lời chúc', '4', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('248', '1', 'Album ảnh', '5', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('248', '10', 'Kế hoạch đám cưới', '6', '1', '1086388');
INSERT INTO `hp_wedding_userapps` VALUES ('248', '11', 'Thiệp mời', '7', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('248', '2', 'Bản đồ', '8', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('248', '12', 'Lời cảm ơn', '9', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('248', '13', 'Thăm dò ý kiến', '10', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('248', '14', 'Video', '11', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('257', '7', 'Trang chủ', '1', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('257', '3', 'Chuyện tình yêu', '2', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('257', '8', 'Nhật ký', '3', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('257', '9', 'Lưu bút - Lời chúc', '4', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('257', '1', 'Album ảnh', '5', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('257', '10', 'Kế hoạch đám cưới', '6', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('257', '11', 'Thiệp mời', '7', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('257', '2', 'Bản đồ', '8', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('257', '12', 'Lời cảm ơn', '9', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('257', '13', 'Thăm dò ý kiến', '10', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('257', '14', 'Video', '11', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('289', '8', 'Nhật ký', '3', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('289', '9', 'Lưu bút - Lời chúc', '4', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('289', '1', 'Album ảnh', '5', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('289', '10', 'Kế hoạch đám cưới', '6', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('289', '11', 'Thiệp mời', '7', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('289', '2', 'Bản đồ', '8', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('289', '12', 'Lời cảm ơn', '9', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('289', '13', 'Thăm dò ý kiến', '11', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('289', '3', 'Chuyện tình yêu', '2', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('289', '7', 'Trang chủ', '1', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('289', '14', 'Video', '10', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('327', '7', 'Trang chủ', '1', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('327', '3', 'Chuyện tình yêu', '11', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('327', '8', 'Nhật ký', '10', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('327', '9', 'Lưu bút - Lời chúc', '6', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('327', '1', 'Album ảnh', '7', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('327', '10', 'Kế hoạch đám cưới', '2', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('327', '11', 'Thiệp mời', '4', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('327', '2', 'Bản đồ', '5', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('327', '12', 'Lời cảm ơn', '9', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('327', '13', 'Thăm dò ý kiến', '3', '1', '');
INSERT INTO `hp_wedding_userapps` VALUES ('327', '14', 'Video', '8', '1', '');

-- ----------------------------
-- Table structure for `hp_wedding_users`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_users`;
CREATE TABLE `hp_wedding_users` (
  `user_id` int(11) NOT NULL,
  `couple_name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `template_id` int(11) NOT NULL,
  `visitors_number` int(11) NOT NULL,
  `show_counter` tinyint(4) NOT NULL DEFAULT '0',
  `email_subscribe` tinyint(4) NOT NULL DEFAULT '1',
  `email_notify` tinyint(4) NOT NULL DEFAULT '1',
  `pre_check` tinyint(4) NOT NULL DEFAULT '0',
  `user_type` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(127) NOT NULL DEFAULT 'Việt Nam',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_users
-- ----------------------------
INSERT INTO `hp_wedding_users` VALUES ('43', 'Phạm Văn An', '', '4', '0', '1', '0', '1', '0', '0', '', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('42', 'Test Name', 'images/wedding/avatar/avatar_42.jpg', '7', '0', '0', '1', '1', '0', '0', 'Test Address', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('54', '', 'images/wedding/avatar/avatar_54.jpg', '5', '0', '0', '1', '1', '0', '0', 'Thanh Hóa', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('76', '', 'images/wedding/avatar/avatar_76.jpg', '1', '0', '0', '1', '1', '0', '0', 'Bắc Ninh', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('91', '', 'images/wedding/avatar/avatar_91.jpg', '2', '0', '0', '1', '1', '0', '0', 'Thanh Hóa', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('92', '', 'images/wedding/avatar/avatar_92.jpg', '5', '0', '1', '1', '1', '1', '0', 'Thanh Hóa', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('104', '', 'images/wedding/avatar/avatar_104.jpg', '5', '0', '0', '1', '1', '0', '0', '02a pho nguyen chich phuong nam ngan TPTH', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('123', '', '', '2', '0', '0', '1', '1', '0', '0', '', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('156', '', '', '2', '0', '0', '1', '1', '0', '0', '', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('157', '', '', '6', '0', '0', '1', '1', '0', '0', '', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('161', '', '', '5', '0', '0', '1', '1', '0', '0', '', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('178', '', '', '2', '0', '0', '1', '1', '0', '0', '', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('180', '', 'images/wedding/avatar/avatar_180.jpg', '2', '0', '1', '1', '1', '1', '0', 'Quang Nam - HCMC', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('183', '', 'images/wedding/avatar/avatar_183.jpg', '2', '0', '0', '1', '1', '0', '0', '', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('187', '', '', '5', '0', '0', '1', '1', '0', '0', '', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('197', '', 'images/wedding/avatar/avatar_197.jpg', '1', '0', '0', '1', '1', '0', '0', '26A Le Loi St, Dien Bien Dist, Thanh Hoa City', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('220', '', '', '5', '0', '1', '1', '1', '1', '0', '', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('207', '', '', '2', '0', '0', '1', '1', '0', '0', '', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('223', '', 'images/wedding/avatar/avatar_223.jpg', '2', '0', '0', '1', '1', '0', '0', 'Thanh Hóa', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('244', '', 'images/wedding/avatar/avatar_244.jpg', '2', '0', '0', '1', '1', '0', '0', '', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('248', '', 'images/wedding/avatar/avatar_248.jpg', '2', '0', '0', '1', '1', '0', '0', 'Hoa Minh', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('257', '', 'images/wedding/avatar/avatar_257.jpg', '2', '0', '1', '1', '1', '1', '0', '', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('264', '', '', '2', '0', '0', '1', '1', '0', '0', '', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('291', '', '', '5', '0', '0', '1', '1', '0', '0', '', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('306', '', '', '5', '0', '0', '1', '1', '0', '0', '', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('327', '', 'images/wedding/avatar/avatar_327.jpg', '2', '0', '0', '0', '0', '0', '0', 'Đồng Nai', 'Việt Nam');
INSERT INTO `hp_wedding_users` VALUES ('350', '', 'images/wedding/avatar/avatar_350.jpg', '2', '0', '0', '1', '1', '0', '0', '', 'Việt Nam');

-- ----------------------------
-- Table structure for `hp_wedding_videos`
-- ----------------------------
DROP TABLE IF EXISTS `hp_wedding_videos`;
CREATE TABLE `hp_wedding_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `embed` varchar(1024) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_wedding_videos
-- ----------------------------
INSERT INTO `hp_wedding_videos` VALUES ('1', '42', 'Phim', '', '', '<object width=\\\"540\\\" height=\\\"350\\\"><param name=\\\"movie\\\" value=\\\"http://www.youtube.com/v/AWo7Pvn3fGU&hl=en_US&fs=1\\\"></param><param name=\\\"allowFullScreen\\\" value=\\\"true\\\"></param><param name=\\\"allowscriptaccess\\\" value=\\\"always\\\"></param><embed src=\\\"http://www.youtube.com/v/AWo7Pvn3fGU&hl=en_US&fs=1\\\" type=\\\"application/x-shockwave-flash\\\" allowscriptaccess=\\\"always\\\" allowfullscreen=\\\"true\\\" width=\\\"540\\\" height=\\\"350\\\"></embed></object>', '0', '2010-07-15 23:41:55', '0');
INSERT INTO `hp_wedding_videos` VALUES ('2', '42', 'video cuoi', '', '', '<object width=\\\"540\\\" height=\\\"370\\\"><param name=\\\"movie\\\" value=\\\"http://www.youtube.com/v/AWo7Pvn3fGU&hl=en_US&fs=1\\\"></param><param name=\\\"allowFullScreen\\\" value=\\\"true\\\"></param><param name=\\\"allowscriptaccess\\\" value=\\\"always\\\"></param><embed src=\\\"http://www.youtube.com/v/AWo7Pvn3fGU&hl=en_US&fs=1\\\" type=\\\"application/x-shockwave-flash\\\" allowscriptaccess=\\\"always\\\" allowfullscreen=\\\"true\\\" width=\\\"540\\\" height=\\\"370\\\"></embed></object>', '1', '2010-07-18 17:59:22', '0');
INSERT INTO `hp_wedding_videos` VALUES ('3', '54', 'Cười: tập thể dục ặc ặc', '', '', '<object width=\\\"480\\\" height=\\\"385\\\"><param name=\\\"movie\\\" value=\\\"http://www.youtube.com/v/c3PDUPGVx-E?fs=1&amp;hl=vi_VN\\\"></param><param name=\\\"allowFullScreen\\\" value=\\\"true\\\"></param><param name=\\\"allowscriptaccess\\\" value=\\\"always\\\"></param><embed src=\\\"http://www.youtube.com/v/c3PDUPGVx-E?fs=1&amp;hl=vi_VN\\\" type=\\\"application/x-shockwave-flash\\\" allowscriptaccess=\\\"always\\\" allowfullscreen=\\\"true\\\" width=\\\"480\\\" height=\\\"385\\\"></embed></object>', '1', '2010-10-12 17:00:20', '0');
INSERT INTO `hp_wedding_videos` VALUES ('42', '104', '', '', '', 'Kiss Kiss- Ngân Khánh -...  \\r\\n<embed type=\\\"application/x-shockwave-flash\\\" src=\\\"http://nhac.vui.vn/upload/nhacvui-player.swf\\\" style=\\\"\\\" id=\\\"mpl\\\" name=\\\"mpl\\\" quality=\\\"high\\\" allowfullscreen=\\\"true\\\" allowscriptaccess=\\\"always\\\" wmode=\\\"opaque\\\" flashvars=\\\"playlistfile=http://nhac.vui.vn/asx2.php%3Ftype%3D1%26id%3D192816autostart=true&amp;repeat=always&amp;controlbar=bottom&amp;\\\" width=\\\"508\\\" height=\\\"460\\\">\\r\\n                 Ta Mãi Bên Nhau- Ngân Khánh  \\r\\n<embed type=\\\"application/x-shockwave-flash\\\" src=\\\"http://nhac.vui.vn/upload/nhacvui-player.swf\\\" style=\\\"\\\" id=\\\"mpl\\\" name=\\\"mpl\\\" quality=\\\"high\\\" allowfullscreen=\\\"true\\\" allowscriptaccess=\\\"always\\\" wmode=\\\"opaque\\\" flashvars=\\\"playlistfile=http://nhac.vui.vn/asx2.php%3Ftype%3D1%26id%3D192818autostart=true&amp;repeat=always&amp;controlbar=bottom&amp;\\\" width=\\\"508\\\" height=\\\"460\\\">\\r\\n                 Copyright © 2010 by \\r\\n              HOTMAIL: doivanhieu@gmail.com\\r\\n                       doivanhieu@yahoo.com', '1', '2010-10-19 01:22:52', '0');
INSERT INTO `hp_wedding_videos` VALUES ('53', '220', 'Album ngày yêu nhau', '', '', '<iframe title=\\\"YouTube video player\\\" width=\\\"540\\\" height=\\\"420\\\" src=\\\"http://www.youtube.com/embed/tzlbwAuE5qo\\\" frameborder=\\\"0\\\" allowfullscreen></iframe>', '1', '2011-03-04 10:09:34', '0');
INSERT INTO `hp_wedding_videos` VALUES ('54', '54', 'Bé: Trần Lê Phước Khang (2 tháng tuổi)', '', '', '<iframe width=\\\"425\\\" height=\\\"349\\\" src=\\\"http://www.youtube.com/embed/p-ZobnvFW4E?hl=en&fs=1\\\" frameborder=\\\"0\\\" allowfullscreen></iframe>', '1', '2011-09-08 15:35:27', '0');
