CREATE TABLE referrers (
  referrer_id INT NOT NULL,
  referrer_name VARCHAR(30) NOT NULL,
  ¿Esta_viva? NUMBER(1) NOT NULL,
  ¿Es/fue_europea? NUMBER(1) NOT NULL,
  ¿Es/fue_hacker? NUMBER(1) NOT NULL,
  ¿Es/fue_Actriz? NUMBER(1) NOT NULL,
  ¿Trabajó_en_el_sector_de_la_aeronautica/aerospacial? NUMBER(1) NOT NULL,
  ¿Tiene_que_ver_con_el_OPENSOURCE? NUMBER(1) NOT NULL,
  ¿Es/fue_española? NUMBER(1) NOT NULL,
  ¿Era_afroamericana? NUMBER(1) NOT NULL,
  PRIMARY KEY (referrer_id),
  UNIQUE (referrer_name)
);

INSERT INTO referrers 
    (referrer_id, 
    referrer_name, 
    ¿Esta_viva?, 
    ¿Es/fue_europea?,
    ¿Es/fue_hacker?,
    ¿Es/fue_Actriz?,
    ¿Trabajó_en_el_sector_de_la_aeronautica/aerospacial?,
    ¿Tiene_que_ver_con_el_OPENSOURCE?,
    ¿Es/fue_española?,
    ¿Era_afroamericana?) 
VALUES 
    (1,"Grace Murray Hopper" , 0, 0, 0, 0, 0, 0, 0, 0),
    (2,"Ada Lovelace"        , 0, 1, 0, 0, 0, 0, 0, 0),
    (3,"Hedy Lamarr",        , 0, 1, 0, 1, 0, 0, 0, 0),
    (4,"Jude Milhon",        , 0, 0, 1, 0, 0, 0, 0, 0),
    (5,"Evelyn Berezin"      , 0, 0, 0, 0, 1, 0, 0, 0),
    (6,"Lynn Conway"         , 1, 0, 0, 0, 0, 0, 0, 0),
    (7,"Danese Cooper"       , 1, 0, 0, 0, 0, 1, 0, 0),
    (8,"Angela Ruiz Roble"   , 0, 1, 0, 0, 0, 0, 1, 0),
    (9,"Mary Allen Wilkes"   , 0, 0, 0, 0, 0, 1, 0, 0),
    (10,"Katherine Johnson"  , 0, 0, 0, 0, 1, 0, 0, 1),
    (11,"Maria Garaña Corces", 1, 0, 0, 0, 0, 0, 1, 0);

