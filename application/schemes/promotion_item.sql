-- Table: promotion_item

create table "promotion_item" (
id serial,
promotionid integer not null,
itemid integer not null,
gold integer default 200,
weight integer default 10,
cnt integer default 0,

ctime timestamp not null default now(),
utime timestamp not null default now(),

CONSTRAINT promotion_item_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE );

ALTER TABLE "promotion_item" OWNER TO pxprogram;

comment on table "promotion_item" is 'promotion_item main table';
