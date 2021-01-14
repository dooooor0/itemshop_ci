-- Table: item_machine_event

DROP TABLE item_machine_event;

create table item_machine_event (
id serial,
name character varying(60),
client_code text,
description text,
events text,
customable integer default 1,
icon character varying(255),
status integer default 1,
ctime timestamp not null default now(),
utime timestamp not null default now(),

CONSTRAINT item_machine_event_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE);

ALTER TABLE item_machine_event OWNER TO pxprogram;

comment on table "item_machine_event" is 'item main table';
comment on column "item_machine_event"."client_code" is 'M1,g1 ...';
