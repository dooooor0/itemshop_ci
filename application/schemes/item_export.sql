-- Table: item_export

create table item_export (
itemid integer not null,
locale character varying( 10 ) not null,

CONSTRAINT item_export_ukey unique (itemid, locale)
)

WITH ( OIDS=FALSE );

ALTER TABLE item OWNER TO pxprogram;

comment on table "item_export" is 'item export mapping table';
