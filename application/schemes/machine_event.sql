-- Table: machine_event

-- DROP TABLE machine_event;

create table machine_event (
id serial,
parentid integer not null default 0,
ordernumber integer not null default 1,
event character varying( 30 ),
label character varying( 50 ),
ctime timestamp default now(),
utime timestamp default now(),
CONSTRAINT machine_event_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE);

ALTER TABLE item OWNER TO pxprogram;

comment on table "machine_event" is 'machine_event is tree type categories of items';
comment on column "machine_event"."parentid" is 'number of parent id. first depth has 0';
comment on column "machine_event"."ordernumber" is '1 - ... , in same parent and depth';
