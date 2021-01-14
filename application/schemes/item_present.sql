-- Table: item_present

-- DROP TABLE item_present;

create table item_present (
id serial,
locale character varying(10) default 'jp',
c_seq bigint default 0,
to_c_seq bigint default 0,
rfid numeric not null,
to_rfid numeric not null,
itemid integer not null,
status integer default 1,
ctime timestamp not null default now(),
utime timestamp not null default now(),

  period numeric,
  gold integer DEFAULT 0,
  coin integer DEFAULT 0,
  present_type smallint DEFAULT 1, -- 1: normal, 2: gift item ,3: phoenix capsule,4: admin
  friend_type smallint DEFAULT 1, -- 1:normal, 2:talk, 3:event, 4:other

CONSTRAINT item_present_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE);

ALTER TABLE item_present OWNER TO pxprogram;

comment on table "item_present" is 'item main table';
comment on column "item_present"."id" is 'serial key';
comment on column "item_present"."status" is '1 => requested, request denied, request presented, present, present denied, present accepted';
