-- Table: user_item

create table user_item (
id serial,
c_seq bigint default 0,
locale character varying(10) default 'jp',
rfid numeric,
itemid integer not null,
edate date,

utime timestamp default now(),
ctime timestamp default now(),

CONSTRAINT user_item_pkey PRIMARY KEY (id),
CONSTRAINT user_item_ukey UNIQUE (locale, rfid, itemid )
)

WITH ( OIDS=FALSE);

ALTER TABLE user_item OWNER TO pxprogram;

comment on table "user_item" is 'user_item table';
-- comment on column "user_item"."userid" is 'user id is just denormalized column';
comment on column "user_item"."rfid" is 'for card';
