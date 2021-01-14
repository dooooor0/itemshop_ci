-- Table: item_event

create table item_event (
id serial,
name character varying(80),
description character varying(80),
priceid integer not null,
 
days integer not null default 0,
gold integer,
gold_present integer not null,
pc integer not null default 0,

stime timestamp not null default now(),
etime timestamp not null default now(),
ctime timestamp not null default now(),

CONSTRAINT item_event_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE );

ALTER TABLE item_event OWNER TO pxprogram;

comment on table "item_event" is 'item main table';
comment on column "item_event"."priceid" is '';
comment on column "item_event"."gold" is 'event price is changing to this gold';
comment on column "item_event"."gold_present" is 'event price is changing to this gold_present';
comment on column "item_event"."pc" is 'event price is changing to this pc';
