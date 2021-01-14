-- Table: item_copy_card

create table item_copy_card (
id serial,
copyid integer not null,
localeid integer not null,
shopid integer not null,
cardid integer not null,

CONSTRAINT item_copy_card_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE );

ALTER TABLE item OWNER TO pxprogram;

comment on table "item_copy_card" is 'item copy card table. this may like map';
