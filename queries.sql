CREATE TABLE GNS(
    GCS TEXT NOT NULL,
    combinedPT TEXT NOT NULL,
    combinedPC TEXT NOT NULL,
    PT TEXT NOT NULL,
    PC TEXT NOT NULL,
	FFD TEXT NOT NULL,
    PRIMARY KEY (PT)
    );

CREATE TABLE arev (
    -- DPN VARCHAR(5) NOT NULL, input file includes non DPN & non parts
    DPN TEXT NOT NULL,
    Descrip TEXT NOT NULL,
    PC TEXT NOT NULL,
    PT TEXT NOT NULL,
    Phase TEXT NOT NULL,
    UNIQUE (DPN),
    FOREIGN KEY (PT) REFERENCES GNS (PT)
);

CREATE TABLE xrev (
    -- DPN VARCHAR(5) NOT NULL, input file includes non DPN & non parts
    DPN TEXT NOT NULL,
    Descrip TEXT,
    PC TEXT,
    PT TEXT,
    Phase TEXT NOT NULL,
    UNIQUE (DPN),
    FOREIGN KEY (PT) REFERENCES GNS (PT)
);

SELECT * FROM GNS;

-- Data cleanse
	-- remove all non x-rev from life cycle phase; keep 'X Revision'
	-- remove all nulls from PC & PT columns
	-- remove all non DPN (5 digit char limit)

-- 213482 DPNs in file before dropping non X-rev
DELETE FROM XREV WHERE Phase <> 'X Revision';
-- 213357 DPNs after cleaning phase

SELECT DPN,length(DPN) as "valid DPN" from xrev
	where length(DPN)<6;
-- 182747 returned

DELETE FROM XREV WHERE length(DPN) > 5;
-- deleted 30610; 182747 remaining


SELECT COUNT (PT) from XREV where (PT) is NULL;



SELECT PHASE 
INTO Xclean
FROM XREV
WHERE (PHASE = 'X Revision')
AND (DPN)

drop table gns cascade;

SELECT * FROM XREV LIMIT 100;

SELECT COUNT(PT) FROM GNS;

SELECT COUNT(PT) FROM xrev where "PT" is Null;
SELECT COUNT(dpn) FROM xrev;

SELECT COUNT(DPN) FROM arev;
