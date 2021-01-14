-- Table: item_copy

-- DROP TABLE item_copy;

create table item_copy (
id serial,
itemid integer not null,
condition integer default 1,


ctime timestamp not null default now(),
utime timestamp not null default now(),

CONSTRAINT item_copy_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE);

ALTER TABLE item_copy OWNER TO pxprogram;

comment on table "item_copy" is 'item main table';
comment on column "item_copy"."condition" is '1 => shop, except shop, all shop';
