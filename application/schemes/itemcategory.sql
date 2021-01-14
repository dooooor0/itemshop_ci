-- Table: itemcategory

create table itemcategory (
id serial,
parentid integer not null default 0,
ordernumber integer not null default 1,
label character varying( 50 ),
code character varying( 50 ),
open boolean default true,
ctime timestamp default now(),
utime timestamp default now(),
CONSTRAINT itemcategory_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE);

ALTER TABLE item OWNER TO pxprogram;

comment on table "itemcategory" is 'itemcategory is tree type categories of items';
comment on column "itemcategory"."parentid" is 'number of parent id. first depth has 0';
comment on column "itemcategory"."ordernumber" is '1 - ... , in same parent and depth';
comment on column "itemcategory"."code" is 'M1=323';
