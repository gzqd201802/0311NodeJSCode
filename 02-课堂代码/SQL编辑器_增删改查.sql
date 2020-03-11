﻿-- sql 注释，两个中杆加一个空格隔开。
-- create table yiti2 select * from yitizi group by zi order by id asc

-- 增加一条数据
-- 增加语法：
--     insert into 表名(字段1,字段2,字段3) values (数据1,数据2,数据3);

-- insert into hero(name,skill,icon) values ('李白','喝酒','xxx');
-- insert into hero(name,skill,icon) values ('李白2','喝酒2','xxx');


-- 删除数据    (PS：我们前端其实没有删除数据的权限，因为数据很宝贵)
-- 删除语法：
--     delete from 表名 where 条件;

-- delete from hero where id=5;               -- 功能：在 hero 表中删除 id=5 的数据;
-- delete from hero where name='李白';


-- 修改数据       注意：单词是  update 是  te 结尾，不要写错成 ta
-- 修改语法：
--     update 表名 set 字段=值  where 条件

-- update hero set name='周杰伦' where id=2;
-- 修改多个字段用 英文逗号 隔开
-- update hero set name='周杰伦', skill='唱歌2', icon='yyy' where id=2;



-- 查询数据

-- 查询语法：
--      select 字段 from 表名  where 条件;
-- 星号 * 代表所有字段

-- 目标1，查全部：在 hero 表中，查找所有字段数据。
-- select * from hero;

-- 目标2，根据id查一条：
-- select * from hero where id=2;

-- 目标3, 获取指定字段：
select id,name,skill from hero where id=2;









