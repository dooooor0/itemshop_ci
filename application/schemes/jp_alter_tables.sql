alter table useravg add column heart integer default 0; -- 아이템 조르기에 사용되는 heart. 게임 10회 마다 1씩 오른다.
alter table userinfo add column adoneffect_item text default ''; -- 현재 사용중인 custom의 contents
alter table userinfo add column customid integer default 0; -- 현재 사용중인 custom의 id

COMMENT ON COLUMN useravg.heart IS '아이템 조르기에 사용되는 heart. 게임 10회 마다 1씩 오른다.';
COMMENT ON COLUMN userinfo.adoneffect_item IS '현재 사용중인 custom의 contents';
COMMENT ON COLUMN userinfo.customid IS '현재 사용중인 custom의 id';
