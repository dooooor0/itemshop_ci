-- Table: checkrfid

-- DROP TABLE checkrfid;

CREATE TABLE checkrfid
(
  rfid numeric NOT NULL,
  cardno character varying(16) NOT NULL,
  ctime date NOT NULL,
  utime timestamp without time zone,
  dtime timestamp without time zone,
  CONSTRAINT checkrfid_pkey PRIMARY KEY (rfid)
)
WITH (
  OIDS=FALSE
);

ALTER TABLE checkrfid
  OWNER TO pxprogram;
GRANT ALL ON TABLE checkrfid TO pxprogram;
GRANT SELECT ON TABLE checkrfid TO bkuser;

-- Index: checkrfid_cardno_i

-- DROP INDEX checkrfid_cardno_i;

CREATE UNIQUE INDEX checkrfid_cardno_i
  ON checkrfid
  USING btree
  (cardno);


-- Trigger: zzsync_checkrfid on checkrfid

-- DROP TRIGGER zzsync_checkrfid ON checkrfid;

CREATE TRIGGER zzsync_checkrfid
  AFTER INSERT OR UPDATE OR DELETE
  ON checkrfid
  FOR EACH ROW
  EXECUTE PROCEDURE forgameserver.sync_checkrfid();
