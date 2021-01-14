-- Table: shop_item_request

create table shop_item_request (
id serial,
locale character varying(10) default 'jp',

"type" smallint default 1,
status smallint default 1,

shopid integer default 0,
shopname character varying(60),
address character varying(255),
tel character varying(20),
fax character varying(20),

cardno numeric not null,
rfid numeric,
name character varying(20),
cardname character varying(60),

thumbnail character varying(255),
screenshot1 character varying(255),
screenshot2 character varying(255),
src character varying(255),

brief character varying(255) default '',

sdate date not null default now(),
edate date,

ctime timestamp not null default now(),
utime timestamp not null default now(),

CONSTRAINT shop_item_request_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE);

ALTER TABLE shop_item_request OWNER TO pxprogram;

comment on table "shop_item_request" is 'shop_item_request main table';
comment on column "shop_item_request"."status" is '1: request, 2:dealer confirm, 3:locale admin confirm ...';
