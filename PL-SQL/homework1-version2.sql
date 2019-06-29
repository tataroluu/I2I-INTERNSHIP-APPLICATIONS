CREATE TABLE 
    INTERN 
    (
    INTERN_ID NUMBER NOT NULL PRIMARY KEY,
    VI_FIRST_NAME VARCHAR(50),
    VI_LAST_NAME VARCHAR(50),
    VI_UNIVERSITY VARCHAR(50),
    VI_DEPARTMENT VARCHAR(50),
    VS_SCHOOL_CLASS NUMBER
    );
   
INSERT INTO 
    INTERN 
VALUES
(
    1,
    'servet',
    'tartar',
    'munzur university',
    'computer engineering',
    4,
    'mersin'
);
INSERT INTO 
    INTERN 
VALUES
(
    2,
    'tolga',
    'çatalpınar',
    'bilkent university',
    'computer engineering',
    2,
    'ankara'
);
INSERT INTO 
    INTERN 
VALUES
(
    3,
    'ayşegül',
    'karahançer',
    'yıldız teknik university',
    'computer engineering',
    3,
    'kayseri'
);
INSERT INTO 
    INTERN 
VALUES
(
    4,
    'gizemnur',
    'taşkın',
    'istanbul teknik university',
    'computer sciences',
    3,
    'trabzon'
);
INSERT INTO 
    INTERN 
VALUES
(
    5,
    'melih sinan',
    'doğrul',
    'yıldız teknik university',
    'computer engineering',
    3,
    'trabzon'
);
INSERT INTO 
    INTERN 
VALUES
(
    6,
    'eren',
    'yalçın',
    'bilkent university',
    'computer engineering',
    3,
    'ankara'
);
INSERT INTO 
    INTERN 
VALUES
(
    7,
    'yunus',
    'arslan',
    'orta doğu teknik university',
    'computer engineering',
    2,
    'antalya'
);
INSERT INTO 
    INTERN 
VALUES
(
    8,
    'özge nur',
    'koç',
    'trakya university',
    'computer teaching',
    4,
    'afyon karahisar'
);
INSERT INTO 
    INTERN 
VALUES
(
    9,
    'ümit',
    'atılgan',
    'yıldız teknik university',
    'mathematics engineering',
    3,
    'edirne'
);
INSERT INTO 
    INTERN 
VALUES
(
    10,
    'beytullah',
    'atik',
    'karabük university',
    'computer engineering',
    4,
    'mersin'    
);
INSERT INTO 
    INTERN 
VALUES
(
    11,
    'davut',
    'kurt',
    'inönü university',
    'computer engineering',
    4,
    'malatya'
);

SELECT 
    * 
FROM 
    INTERN;
    
DROP TABLE 
    INTERN;
