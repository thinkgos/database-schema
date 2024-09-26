-- Modify "sys_api_group" table
ALTER TABLE `sys_api_group` MODIFY COLUMN `label` varchar(255) NOT NULL DEFAULT "" COMMENT "组名称", ADD COLUMN `tag` varchar(255) NOT NULL DEFAULT "" COMMENT "标签", ADD UNIQUE INDEX `uk_tag` (`tag`);
