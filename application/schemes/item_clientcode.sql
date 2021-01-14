-- Table: item_clientcode

create table item_clientcode (
itemid integer not null,
machineid integer not null default 2,
clientcode character varying(20) not null,
CONSTRAINT item_clientcode_pkey PRIMARY KEY (itemid, machineid, clientcode )
)

WITH ( OIDS=FALSE );

ALTER TABLE item OWNER TO pxprogram;

comment on table "item_clientcode" is 'item_clientcode and map mapping table';
