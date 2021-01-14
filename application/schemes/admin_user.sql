-- Table: admin_user

create table "admin_user" (
id serial,
userid character varying(40) unique,
pw character varying(50),
locale character varying(10),
"level" integer not null default 100,
request integer not null default 50,

name character varying(60),
email character varying(255),
brief text,

last_log_time timestamp not null default now(),
ctime timestamp not null default now(),
utime timestamp not null default now(),

CONSTRAINT admin_user_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE );

ALTER TABLE "admin_user" OWNER TO pxprogram;

comment on table "admin_user" is 'admin_user main table';
comment on column "admin_user"."userid" is '0 => root, admin ...';
