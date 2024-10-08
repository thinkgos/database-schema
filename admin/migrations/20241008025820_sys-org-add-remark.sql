-- Modify "sys_org" table
ALTER TABLE `sys_org` ADD COLUMN `remark` varchar(255) NOT NULL DEFAULT "" COMMENT "备注";
