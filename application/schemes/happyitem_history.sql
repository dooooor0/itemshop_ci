-- Table: happyitem_history

CREATE TABLE happyitem_history (
id serial,
locale character varying(20) default 'jp',
rfid numeric default 0,
gold integer NOT NULL DEFAULT 0,
itemid integer default 0,
days smallint default 30,
edate date,
customed smallint default 0,
memo character varying( 20 ) default 'phappy',
ctime timestamp default now(),
CONSTRAINT happyitem_history_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE);

ALTER TABLE happyitem_history
OWNER TO pxprogram;

COMMENT ON TABLE happyitem_history IS '해피아이템 획득 로그';
COMMENT ON COLUMN happyitem_history.gold IS '받은골드';
COMMENT ON COLUMN happyitem_history.itemid IS 'item.id';



-- Function: basic.tr_update_happystat()

-- DROP FUNCTION basic.tr_update_happystat();

CREATE OR REPLACE FUNCTION basic.tr_update_happystat()
  RETURNS trigger AS
$BODY$
declare
  v_idx integer;
begin
  if TG_OP = 'INSERT' or TG_OP = 'UPDATE' then
    if NEW.typenum < 5 then
      v_idx := NEW.typenum;
    else 
      if NEW.awtype = 1 then -- mark
        v_idx := 5;
      elsif NEW.awtype = 4 then -- throw dart
        v_idx := 6;
      elsif NEW.awtype = 2 then -- finale
        v_idx := 7;
      elsif NEW.awtype >= 5 and NEW.awtype <= 6 then -- camera frame
        v_idx := 8;      
      end if;
    end if;
          
    update basic.happyitem_stat set 
    gold_ts = gold_ts + NEW.gold, 
    gold_tc = gold_tc + case when NEW.gold > 0 then 1 else 0 end,
    items[v_idx] = items[v_idx] + case when NEW.aw_goodid > 0 then 1 else 0 end, 
    gmdl_ts = gmdl_ts + NEW.gmdl,
    gmdl_tc = gmdl_tc + case when NEW.gmdl > 0 then 1 else 0 end,
    smdl_ts = smdl_ts + NEW.smdl,
    smdl_tc = smdl_tc + case when NEW.smdl > 0 then 1 else 0 end,
    ltime = NEW.ctime,
    seq = NEW.seq
    where c_seq = NEW.c_seq;
    return NEW;
  end if;
end;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION basic.tr_update_happystat()
  OWNER TO pxprogram;


-- Trigger: tr_update_happystat on basic.happyitem_hist

-- DROP TRIGGER tr_update_happystat ON basic.happyitem_hist;

CREATE TRIGGER tr_update_happystat
  AFTER INSERT OR UPDATE
  ON basic.happyitem_hist
  FOR EACH ROW
  EXECUTE PROCEDURE basic.tr_update_happystat();
