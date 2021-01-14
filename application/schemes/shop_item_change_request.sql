-- Table: shop_item_change_request

create table shop_item_change_request (
id serial,
relid integer not null,

"type" smallint default 2,
status smallint default 1,

cardno numeric,
cardname character varying(60),

title character varying(255),
contents text,

thumbnail character varying(255),
screenshot1 character varying(255),
screenshot2 character varying(255),
src character varying(255),

ctime timestamp not null default now(),
utime timestamp not null default now(),

CONSTRAINT shop_item_change_request_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE);

ALTER TABLE shop_item_change_request OWNER TO pxprogram;

comment on table "shop_item_change_request" is 'shop_item_change_request main table';
