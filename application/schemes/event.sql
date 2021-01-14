-- Table: event

-- DROP TABLE event;

CREATE TABLE event
(
	id serial NOT NULL,
	title character varying(60),
	sdate timestamp(0) without time zone NOT NULL DEFAULT now(),
	edate timestamp without time zone NOT NULL DEFAULT now(),
	ctime timestamp without time zone NOT NULL DEFAULT now(),
	utime timestamp without time zone NOT NULL DEFAULT now(),
	locale character varying(4) NOT NULL,
	test_machineid character varying(100),
	machineid integer NOT NULL,
	CONSTRAINT event_pkey PRIMARY KEY (id )
)
WITH (
	OIDS=FALSE
);
