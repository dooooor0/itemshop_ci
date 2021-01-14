-- Table: admin_user_log

create table "admin_user_log" (
id serial,
relid integer,
userid character varying(40),
locale character varying(10),
"level" integer not null default 255,
login_time timestamp not null default now(),
logout_time timestamp,

CONSTRAINT admin_user_log_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE );

ALTER TABLE "admin_user_log" OWNER TO pxprogram;

comment on table "admin_user_log" is 'admin_user_log history table';
comment on column "admin_user_log"."userid" is 'userid can be changed.';
