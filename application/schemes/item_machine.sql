-- Table: item_machine

create table item_machine (
itemid integer not null,
machineid integer not null,
CONSTRAINT item_machine_pkey PRIMARY KEY (itemid, machineid)
)

WITH ( OIDS=FALSE );

ALTER TABLE item OWNER TO pxprogram;

comment on table "item_machine" is 'item machine mapping table';
