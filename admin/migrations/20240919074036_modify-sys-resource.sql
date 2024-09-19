-- Modify "sys_resource" table
ALTER TABLE `sys_resource` MODIFY COLUMN `type` varchar(8) NOT NULL DEFAULT "dir" COMMENT "菜单类型,[menu:目录,carte:菜单,btn:按钮]";
