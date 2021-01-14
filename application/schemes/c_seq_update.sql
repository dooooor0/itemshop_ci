update itemshop.campaign_user t set c_seq = s.c_seq from basic.cardinfo s where t.c_seq = 0 and t.rfid = s.rfid and t.locale = lower(s.nationcode) ;
update itemshop.copyitem_user t set c_seq = s.c_seq from basic.cardinfo s where t.c_seq = 0 and t.rfid = s.rfid and t.locale = lower(s.nationcode) ;
update itemshop.custom t set c_seq = s.c_seq from basic.cardinfo s where t.c_seq = 0 and t.rfid = s.rfid and t.locale = lower(s.nationcode) ;
update itemshop.giveitem_checkrfid t set c_seq = s.c_seq from basic.cardinfo s where t.c_seq = 0 and t.rfid = s.rfid and t.locale = lower(s.nationcode) ;
update itemshop.item_present t set c_seq = s.c_seq from basic.cardinfo s where t.c_seq = 0 and t.rfid = s.rfid and t.locale = lower(s.nationcode) ;
update itemshop.user_item t set c_seq = s.c_seq from basic.cardinfo s where t.c_seq = 0 and t.rfid = s.rfid and t.locale = lower(s.nationcode) ;


/* sound resource*/
update item_locale set screenshot2='data/soundClips/S23_5.WAV' where itemid=3027;
update item_locale set screenshot2='data/soundClips/S23_6.WAV' where itemid=3035;
update item_locale set screenshot2='data/soundClips/S23_7.WAV' where itemid=3043;
update item_locale set screenshot2='data/soundClips/S23_2.WAV' where itemid=193;
update item_locale set screenshot2='data/soundClips/S23_1.WAV' where itemid=168;
update item_locale set screenshot2='data/soundClips/3667_2.wav' where itemid=3667;
update item_locale set screenshot2='thumbimg/screenshot/3668_2.wav' where itemid=3668;
update item_locale set screenshot2='data/soundClips/S23_3.WAV' where itemid=3010;
update item_locale set screenshot2='data/soundClips/S23_4.WAV' where itemid=3019;
update item_locale set screenshot2='data/soundClips/S23_8.WAV' where itemid=3051;

/* 정규 표현식 */
update item set screenshot2='' where screenshot2 ~ '^image' and categoryid=6