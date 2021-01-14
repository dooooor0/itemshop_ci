-- Table: randomitem_item

create table "randomitem_item" (
id serial,
randomitemid integer not null,
itemid integer not null,
weight integer default 10,

ctime timestamp not null default now(),
utime timestamp not null default now(),

CONSTRAINT randomitem_item_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE );

ALTER TABLE "randomitem_item" OWNER TO pxprogram;

comment on table "randomitem_item" is 'randomitem_item main table';
