-- Table: qna

create table qna (
id serial,

locale character varying(10),
name character varying(60),
email character varying(255),
userid character varying(100),
title character varying(100),
contents text,

ctime timestamp not null default now(),
utime timestamp not null default now(),

CONSTRAINT qna_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE);

ALTER TABLE qna OWNER TO pxprogram;

comment on table "qna" is 'qna main table';
