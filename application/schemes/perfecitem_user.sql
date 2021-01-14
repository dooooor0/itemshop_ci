-- Table: perfectitem_user

CREATE TABLE perfectitem_user (
id serial,
rfid numeric NOT NULL,
itemid integer NOT NULL,
issues integer DEFAULT 0,
ctime timestamp not null default now(),
utime timestamp not null default now(),
CONSTRAINT perfectitem_user_pkey PRIMARY KEY (id)
) WITH ( OIDS=FALSE);

ALTER TABLE perfectitem_user
OWNER TO pxprogram;
COMMENT ON TABLE perfectitem_user IS 'perfect pro 선수 전용 아이템 테이블';
COMMENT ON COLUMN perfectitem_user.itemid IS 'item.id';


-- Trigger: zzsyn_perfect_item on perfectitem_user

-- DROP TRIGGER zzsyn_perfect_item ON perfectitem_user;

-- CREATE TRIGGER zzsyn_perfect_item
-- AFTER INSERT OR UPDATE OR DELETE
-- ON g_perfect_item
-- FOR EACH ROW
-- EXECUTE PROCEDURE forgameserver.sync_g_perfect_item();
