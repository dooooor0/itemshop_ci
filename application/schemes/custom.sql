-- Table: custom

-- DROP TABLE custom;

CREATE TABLE custom
(
  id serial NOT NULL,
  c_seq bigint default 0,
  locale character varying(10) DEFAULT 'jp'::character varying,
  rfid numeric NOT NULL,
  orderno integer NOT NULL DEFAULT 1,
  status integer DEFAULT 0,
  name character varying(40) DEFAULT 'Empty'::character varying,
  itemids text DEFAULT ''::text,
  code text,
  code_px text,
  code_new text,
  utime timestamp without time zone NOT NULL DEFAULT now(),
  ctime timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT custom_pkey2 PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE custom
  OWNER TO pxprogram;
COMMENT ON TABLE custom
  IS 'custom main table';

-- Index: idx_custom_2

-- DROP INDEX idx_custom_2;

CREATE INDEX idx_custom_2
  ON custom
  USING btree
  (rfid, locale COLLATE pg_catalog."default");
