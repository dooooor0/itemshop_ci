-- Table: item_tag

create table item_tag (
itemid integer not null,
tag character varying( 20 ) not null,
CONSTRAINT item_tag_ukey unique (itemid, tag)
)

WITH ( OIDS=FALSE);

ALTER TABLE item_tag OWNER TO pxprogram;

comment on table "item_tag" is 'item main table';
comment on column "item_tag"."itemid" is 'item.id';
comment on column "item_tag"."tag" is 'tag name';
