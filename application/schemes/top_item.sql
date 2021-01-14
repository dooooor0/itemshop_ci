-- Table: user_item_history_cache

create table user_item_history_cache (
itemid integer not null,
locale character varying(10),
categoryid smallint,
year smallint,
month smallint,
cnt integer default 0,

ctime timestamp not null default now(),
utime timestamp not null default now(),

CONSTRAINT top_item_pkey PRIMARY KEY (itemid, year, month)
)

WITH ( OIDS=FALSE);

ALTER TABLE user_item_history_cache OWNER TO pxprogram;

comment on table "user_item_history_cache" is 'user_item_history cache table';
