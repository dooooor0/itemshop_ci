-- Table: item_resource_event

create table item_resource_event (
id integer not null,
relid integer not null,
CONSTRAINT item_resource_event_pkey PRIMARY KEY (id, relid)
)

WITH ( OIDS=FALSE );

ALTER TABLE item OWNER TO pxprogram;

comment on table "item_resource_event" is 'item_resource and event mapping table';
