-- Table: eventitem

-- DROP TABLE eventitem;

CREATE TABLE eventitem
(
	id integer NOT NULL DEFAULT nextval('event_item_id_seq'::regclass),
	eventid integer NOT NULL,
	title character varying(20),
	fname character varying(80) NOT NULL,
	fsize integer NOT NULL,
	md5sum character varying(34) NOT NULL,
	clientcode character varying(10) NOT NULL,
	ctime timestamp without time zone NOT NULL DEFAULT now(),
	exp integer DEFAULT 0,
	playoption text DEFAULT ''::text,
	child text,
	CONSTRAINT event_item_pkey PRIMARY KEY (id )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE eventitem
  OWNER TO pxprogram;

