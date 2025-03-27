INSERT INTO `__FOREIGNKEY` (`CONSTRAINT_NAME`,`TABLE_NAME`,`REFERENCED_TABLE_NAME`,`COLUMNS_NAME`,`REFERENCED_COLUMNS_NAME`,`UPDATE_RULE`,`DELETE_RULE`) VALUES ('同步_of_sso_bale_attr表集合角色操作','_of_sso_bale_pack','_of_sso_bale_attr','`baleId`','`id`','CASCADE','CASCADE '),
('同步_of_sso_realm_attr表集合角色操作','_of_sso_bale_pack','_of_sso_realm_attr','`realmId`','`id`','CASCADE','CASCADE '),
('同步_of_sso_realm_pack表集合角色操作','_of_sso_bale_pack','_of_sso_realm_pack','`packId`','`id`','CASCADE','CASCADE '),
('同步_of_sso_realm_attr表日志操作','_of_sso_login_log','_of_sso_realm_attr','`site`','`name`','CASCADE','CASCADE '),
('同步_of_sso_user_attr表日志操作','_of_sso_login_log','_of_sso_user_attr','`name`','`name`','CASCADE','CASCADE '),
('同步_of_sso_realm_attr表权限操作','_of_sso_pack_func','_of_sso_realm_attr','`realmId`','`id`','CASCADE','CASCADE '),
('同步_of_sso_realm_func表权限操作','_of_sso_pack_func','_of_sso_realm_func','`funcId`','`id`','CASCADE','CASCADE '),
('同步_of_sso_realm_pack表权限操作','_of_sso_pack_func','_of_sso_realm_pack','`packId`','`id`','CASCADE','CASCADE '),
('同步_of_sso_realm_attr表功能操作','_of_sso_realm_func','_of_sso_realm_attr','`realmId`','`id`','CASCADE','CASCADE '),
('同步_of_sso_realm_attr表角色操作','_of_sso_realm_pack','_of_sso_realm_attr','`realmId`','`id`','CASCADE','CASCADE '),
('同步_of_sso_bale_attr表集合用户操作','_of_sso_user_bale','_of_sso_bale_attr','`baleId`','`id`','CASCADE','CASCADE '),
('同步_of_sso_user_attr表集合用户操作','_of_sso_user_bale','_of_sso_user_attr','`userId`','`id`','CASCADE','CASCADE '),
('同步_of_sso_realm_attr表许可操作','_of_sso_user_pack','_of_sso_realm_attr','`realmId`','`id`','CASCADE','CASCADE '),
('同步_of_sso_realm_pack表许可操作','_of_sso_user_pack','_of_sso_realm_pack','`packId`','`id`','CASCADE','CASCADE '),
('同步_of_sso_user_attr表许可操作','_of_sso_user_pack','_of_sso_user_attr','`userId`','`id`','CASCADE','CASCADE ');
INSERT INTO `__TABLES` (`TABLE_NAME`,`ENGINE`,`ROW_FORMAT`,`TABLE_COLLATION`,`AUTO_INCREMENT`,`CREATE_OPTIONS`,`TABLE_COMMENT`) VALUES ('_of_sso_bale_attr','InnoDB','Compact','utf8_general_ci','1','row_format=COMPACT','单点登录集合属性表'),
('_of_sso_bale_pack','InnoDB','Compact','utf8_general_ci','1','row_format=COMPACT','单点登录集合权限关联表'),
('_of_sso_login_log','InnoDB','Compact','utf8_general_ci','1','row_format=COMPACT','用户登录日志'),
('_of_sso_pack_func','InnoDB','Compact','utf8_general_ci','24','row_format=COMPACT','单点登录权限关联表'),
('_of_sso_realm_attr','InnoDB','Compact','utf8_general_ci','2','row_format=COMPACT','单点登录系统表'),
('_of_sso_realm_func','InnoDB','Compact','utf8_general_ci','24','row_format=COMPACT','单点登录功能表'),
('_of_sso_realm_pack','InnoDB','Compact','utf8_general_ci','2','row_format=COMPACT','单点登录包表'),
('_of_sso_user_attr','InnoDB','Compact','utf8_general_ci','2','row_format=COMPACT','单点登录用户表'),
('_of_sso_user_bale','InnoDB','Compact','utf8_general_ci','1','row_format=COMPACT','单点登录集合用户关联表'),
('_of_sso_user_pack','InnoDB','Compact','utf8_general_ci','2','row_format=COMPACT','单点登录用户许可关联表');
INSERT INTO `__COLUMNS` (`TABLE_NAME`,`COLUMN_NAME`,`ORDINAL_POSITION`,`COLUMN_DEFAULT`,`IS_NULLABLE`,`CHARACTER_SET_NAME`,`COLLATION_NAME`,`COLUMN_TYPE`,`EXTRA`,`COLUMN_COMMENT`) VALUES ('_of_sso_bale_attr','id','1',NULL,'NO',NULL,NULL,'int(10) unsigned','auto_increment','主键'),
('_of_sso_bale_attr','name','2','','NO','utf8','utf8_general_ci','char(255)','','集合键'),
('_of_sso_bale_attr','lable','3','','NO','utf8','utf8_general_ci','char(255)','','集合名'),
('_of_sso_bale_attr','state','4','1','NO',NULL,NULL,'tinyint(1)','','可用状态,0=冻结,1=启用'),
('_of_sso_bale_attr','notes','5','','NO','utf8','utf8_general_ci','char(255)','','备注'),
('_of_sso_bale_pack','id','1',NULL,'NO',NULL,NULL,'int(10) unsigned','auto_increment','主键'),
('_of_sso_bale_pack','realmId','2','0','NO',NULL,NULL,'int(10) unsigned','','系统ID,关联_of_sso_realm::id'),
('_of_sso_bale_pack','baleId','3',NULL,'NO',NULL,NULL,'int(10) unsigned','','集合ID,关联_of_sso_bale::id'),
('_of_sso_bale_pack','packId','4',NULL,'NO',NULL,NULL,'int(10) unsigned','','角色ID,关联_of_sso_pack::id'),
('_of_sso_login_log','id','1',NULL,'NO',NULL,NULL,'int(11) unsigned','auto_increment','日志主键'),
('_of_sso_login_log','name','2',NULL,'NO','utf8','utf8_general_ci','char(255)','','用户帐号'),
('_of_sso_login_log','site','3',NULL,'NO','utf8','utf8_general_ci','char(255)','','系统帐号'),
('_of_sso_login_log','time','4',NULL,'NO',NULL,NULL,'timestamp','','登录时间'),
('_of_sso_login_log','data','5',NULL,'NO','utf8','utf8_general_ci','mediumtext','','日志数据'),
('_of_sso_pack_func','id','1',NULL,'NO',NULL,NULL,'int(10) unsigned','auto_increment','主键'),
('_of_sso_pack_func','realmId','2','0','NO',NULL,NULL,'int(10) unsigned','','系统ID,关联_of_sso_realm::id'),
('_of_sso_pack_func','packId','3',NULL,'NO',NULL,NULL,'int(10) unsigned','','角色ID,关联_of_sso_pack::id'),
('_of_sso_pack_func','funcId','4',NULL,'NO',NULL,NULL,'int(10) unsigned','','功能ID,关联_of_sso_func::id'),
('_of_sso_realm_attr','id','1',NULL,'NO',NULL,NULL,'int(10) unsigned','auto_increment','主键'),
('_of_sso_realm_attr','name','2','','NO','utf8','utf8_general_ci','char(255)','','帐号'),
('_of_sso_realm_attr','lable','3','','NO','utf8','utf8_general_ci','char(255)','','简称'),
('_of_sso_realm_attr','pwd','4','','NO','utf8','utf8_general_ci','char(255)','','密码'),
('_of_sso_realm_attr','state','5','1','NO',NULL,NULL,'tinyint(1)','','可用状态,0=冻结,1=启用'),
('_of_sso_realm_attr','notes','6','','NO','utf8','utf8_general_ci','char(255)','','备注'),
('_of_sso_realm_attr','trust','7','0','NO',NULL,NULL,'tinyint(1)','','系统对接权限,1=可操作当前用户和系统的数据,3=还可通过帐号密码操作用户数据,7=还可获取用户列表并无限制操作用户'),
('_of_sso_realm_func','id','1',NULL,'NO',NULL,NULL,'int(10) unsigned','auto_increment','主键'),
('_of_sso_realm_func','realmId','2',NULL,'NO',NULL,NULL,'int(10) unsigned','','系统ID,关联_of_sso_realm::id'),
('_of_sso_realm_func','name','3','','NO','utf8','utf8_general_ci','char(255)','','权限名称'),
('_of_sso_realm_func','state','4','1','NO',NULL,NULL,'tinyint(1)','','可用状态,0=冻结,1=启用'),
('_of_sso_realm_func','lable','5','','NO','utf8','utf8_general_ci','char(255)','','备注'),
('_of_sso_realm_func','data','6',NULL,'NO','utf8','utf8_general_ci','mediumtext','','权限自带的数据'),
('_of_sso_realm_pack','id','1',NULL,'NO',NULL,NULL,'int(10) unsigned','auto_increment','主键'),
('_of_sso_realm_pack','realmId','2',NULL,'NO',NULL,NULL,'int(10) unsigned','','系统ID,关联_of_sso_realm::id'),
('_of_sso_realm_pack','name','3','','NO','utf8','utf8_general_ci','char(255)','','角色名'),
('_of_sso_realm_pack','state','4','1','NO',NULL,NULL,'tinyint(1)','','可用状态,0=冻结,1=启用'),
('_of_sso_realm_pack','lable','5','','NO','utf8','utf8_general_ci','char(255)','','备注'),
('_of_sso_realm_pack','data','6',NULL,'NO','utf8','utf8_general_ci','mediumtext','','包自带的数据'),
('_of_sso_user_attr','id','1',NULL,'NO',NULL,NULL,'int(10) unsigned','auto_increment','主键'),
('_of_sso_user_attr','name','2','','NO','utf8','utf8_general_ci','char(255)','','登录帐号'),
('_of_sso_user_attr','pwd','3','','NO','utf8','utf8_general_ci','char(255)','','登录密码'),
('_of_sso_user_attr','nick','4','','NO','utf8','utf8_general_ci','char(255)','','备注昵称,默认与name相同'),
('_of_sso_user_attr','notes','5',NULL,'NO','utf8','utf8_general_ci','mediumtext','','帐号备注'),
('_of_sso_user_attr','state','6','1','NO',NULL,NULL,'tinyint(1) unsigned','','可用状态,0=冻结,1=启用'),
('_of_sso_user_attr','find','7',NULL,'NO',NULL,NULL,'binary(255)','','找回问答,结构:问题字节长度_问题答案,如:10_你生日?不知道'),
('_of_sso_user_attr','time','8','CURRENT_TIMESTAMP','NO',NULL,NULL,'timestamp','on update CURRENT_TIMESTAMP','修改时间'),
('_of_sso_user_bale','id','1',NULL,'NO',NULL,NULL,'int(10) unsigned','auto_increment','主键'),
('_of_sso_user_bale','baleId','2',NULL,'NO',NULL,NULL,'int(10) unsigned','','集合ID,关联_of_sso_bale::id'),
('_of_sso_user_bale','userId','3',NULL,'NO',NULL,NULL,'int(10) unsigned','','用户ID,关联_of_sso_user::id'),
('_of_sso_user_pack','id','1',NULL,'NO',NULL,NULL,'int(10) unsigned','auto_increment','主键'),
('_of_sso_user_pack','realmId','2','0','NO',NULL,NULL,'int(10) unsigned','','系统ID,关联_of_sso_realm::id'),
('_of_sso_user_pack','packId','3',NULL,'NO',NULL,NULL,'int(10) unsigned','','角色ID,关联_of_sso_pack::id'),
('_of_sso_user_pack','userId','4',NULL,'NO',NULL,NULL,'int(10) unsigned','','用户ID,关联_of_sso_user::id');
INSERT INTO `__STATISTICS` (`TABLE_NAME`,`NON_UNIQUE`,`INDEX_NAME`,`COLUMNS_NAME`,`INDEX_TYPE`) VALUES ('_of_sso_bale_attr','0','PRIMARY','`id`','BTREE'),
('_of_sso_bale_attr','0','根据帐号查询系统信息','`name`','BTREE'),
('_of_sso_bale_pack','0','PRIMARY','`id`','BTREE'),
('_of_sso_bale_pack','1','同步_of_sso_realm_pack表集合角色操作','`baleId`','BTREE'),
('_of_sso_bale_pack','1','同步_of_sso_user_attr表集合角色操作','`packId`','BTREE'),
('_of_sso_bale_pack','0','通过系统ID集合ID角色ID查询关联数据','`realmId`,`baleId`,`packId`','BTREE'),
('_of_sso_login_log','0','PRIMARY','`id`','BTREE'),
('_of_sso_login_log','1','同步更新_of_sso_realm_attr日志操作','`site`','BTREE'),
('_of_sso_login_log','1','同步更新_of_sso_user_attr日志操作','`name`','BTREE'),
('_of_sso_login_log','1','根据系统帐号定位登录信息','`time`,`site`,`name`','BTREE'),
('_of_sso_pack_func','0','PRIMARY','`id`','BTREE'),
('_of_sso_pack_func','0','同步_of_sso_realm_attr表权限操作','`realmId`,`packId`,`funcId`','BTREE'),
('_of_sso_pack_func','1','同步_of_sso_realm_func表权限操作','`funcId`','BTREE'),
('_of_sso_pack_func','1','同步_of_sso_realm_pack表权限操作','`packId`','BTREE'),
('_of_sso_realm_attr','0','PRIMARY','`id`','BTREE'),
('_of_sso_realm_attr','0','根据帐号查询系统信息','`name`','BTREE'),
('_of_sso_realm_func','0','PRIMARY','`id`','BTREE'),
('_of_sso_realm_func','0','通过系统ID和权限名查找权限数据','`realmId`,`name`','BTREE'),
('_of_sso_realm_pack','0','PRIMARY','`id`','BTREE'),
('_of_sso_realm_pack','0','通过系统ID和包名查找包数据','`realmId`,`name`','BTREE'),
('_of_sso_user_attr','0','PRIMARY','`id`','BTREE'),
('_of_sso_user_attr','0','根据帐号查询用户数据','`name`','BTREE'),
('_of_sso_user_bale','0','PRIMARY','`id`','BTREE'),
('_of_sso_user_bale','1','同步_of_sso_realm_pack表集合用户操作','`baleId`','BTREE'),
('_of_sso_user_bale','0','通过用户ID集合ID查询关联数据','`userId`,`baleId`','BTREE'),
('_of_sso_user_pack','0','PRIMARY','`id`','BTREE'),
('_of_sso_user_pack','1','同步_of_sso_realm_pack表许可操作','`packId`','BTREE'),
('_of_sso_user_pack','1','同步_of_sso_user_attr表许可操作','`userId`','BTREE'),
('_of_sso_user_pack','0','通过系统ID用户ID包ID查询关联数据','`realmId`,`userId`,`packId`','BTREE');
