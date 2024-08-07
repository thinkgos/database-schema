-- Modify "sys_api" table
ALTER TABLE `sys_api` MODIFY COLUMN `type` varchar(64) NOT NULL DEFAULT "" COMMENT "api组类型", ADD COLUMN `group_id` bigint NOT NULL DEFAULT 0 COMMENT "api组id";
-- Modify "sys_api_group" table
ALTER TABLE `sys_api_group` ADD COLUMN `type` varchar(64) NOT NULL DEFAULT "" COMMENT "组类型", ADD COLUMN `remark` varchar(255) NOT NULL DEFAULT "" COMMENT "备注";
