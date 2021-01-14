-- Table: user

create table "user" (
id serial,
userid character varying(40) unique,
pw character varying(50),
"level" integer not null default 100,

name character varying(60),
email character varying(255),
brief text,

last_log_time timestamp not null default now(),
ctime timestamp not null default now(),
utime timestamp not null default now(),

CONSTRAINT user_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE);

ALTER TABLE "user" OWNER TO pxprogram;

comment on table "user" is 'user main table';
comment on column "user"."userid" is '0 => root, admin ...';
