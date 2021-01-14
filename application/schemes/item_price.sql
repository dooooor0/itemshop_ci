-- Table: item_price

create table item_price (
id serial,
locale character varying(10) default 'jp',
itemid integer not null,
days integer not null default 90,
gold integer not null default 300,
gold_ext integer not null default 60,
gold_present integer not null default 150,
  coin integer NOT NULL DEFAULT 0,
  coin_ext integer NOT NULL DEFAULT 0,
  coin_present integer NOT NULL DEFAULT 0,
CONSTRAINT item_price_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE);

ALTER TABLE item_price OWNER TO pxprogram;

comment on table "item_price" is 'item_price main table';
comment on column "item_price"."itemid" is 'item.id';
comment on column "item_price"."gold" is 'buy first time';
comment on column "item_price"."gold_ext" is 'buy when user already got it';
