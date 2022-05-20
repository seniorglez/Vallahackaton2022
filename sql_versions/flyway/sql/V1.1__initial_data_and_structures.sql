CREATE TABLE referrers (
  referrer_id INT NOT NULL,
  referrer_name VARCHAR(30) NOT NULL,
  Esta_viva TINYINT NOT NULL,
  Es_europea TINYINT NOT NULL,
  Es_hacker TINYINT NOT NULL,
  Es_Actriz TINYINT NOT NULL,
  Trabaja_en_el_sector_de_la_aeronautica TINYINT NOT NULL,
  Trabaja_en_OPENSOURCE TINYINT NOT NULL,
  Es_española TINYINT NOT NULL,
  Era_afroamericana TINYINT NOT NULL,
  PRIMARY KEY (referrer_id),
  UNIQUE (referrer_name)
);

INSERT INTO referrers 
    (referrer_id, 
    referrer_name, 
    Esta_viva, 
    Es_europea,
    Es_hacker,
    Es_Actriz,
    Trabaja_en_el_sector_de_la_aeronautica,
    Trabaja_en_OPENSOURCE,
    Es_española,
    Era_afroamericana) 
VALUES 
    (1,"Grace Murray Hopper" , 0, 0, 0, 0, 0, 0, 0, 0),
    (2,"Ada Lovelace"        , 0, 1, 0, 0, 0, 0, 0, 0),
    (3,"Hedy Lamarr"         , 0, 1, 0, 1, 0, 0, 0, 0),
    (4,"Jude Milhon"         , 0, 0, 1, 0, 0, 0, 0, 0),
    (5,"Evelyn Berezin"      , 0, 0, 0, 0, 1, 0, 0, 0),
    (6,"Lynn Conway"         , 1, 0, 0, 0, 0, 0, 0, 0),
    (7,"Danese Cooper"       , 1, 0, 0, 0, 0, 1, 0, 0),
    (8,"Angela Ruiz Roble"   , 0, 1, 0, 0, 0, 0, 1, 0),
    (9,"Mary Allen Wilkes"   , 0, 0, 0, 0, 0, 1, 0, 0),
    (10,"Katherine Johnson"  , 0, 0, 0, 0, 1, 0, 0, 1),
    (11,"Maria Garaña Corces", 1, 0, 0, 0, 0, 0, 1, 0);