-- Table: item_set

create table item_set (
setid integer not null,
itemid integer not null,
CONSTRAINT item_set_pkey PRIMARY KEY (itemid, setid)
)

WITH ( OIDS=FALSE);

ALTER TABLE item_set OWNER TO pxprogram;

comment on table "item_set" is 'item set mapping table';
comment on column "item_set"."setid" is 'set item id';
comment on column "item_set"."itemid" is 'each units id';
