-- Table: item_resource

create table item_resource (
itemid integer not null,
machineid integer not null,
resourceid integer not null,
CONSTRAINT item_resource_pkey PRIMARY KEY (itemid, machineid, resourceid)
)

WITH ( OIDS=FALSE );

ALTER TABLE item_resource OWNER TO pxprogram;

comment on table "item_resource" is 'item and resource mapping table';
