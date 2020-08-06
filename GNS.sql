-- comment queries

CREATE TABLE GNS(
    GCS TEXT NOT NULL,
    combinedPT TEXT NOT NULL,
    combinedPC TEXT NOT NULL,
    PT TEXT NOT NULL,
    PC TEXT NOT NULL
    PRIMARY KEY (PT)
    )

CREATE TABLE arev (
    DPN VARCHAR(5) NOT NULL,
    Descrip TEXT NOT NULL,
    PT TEXT NOT NULL,
    PC TEXT NOT NULL,
    Phase TEXT NOT NULL
    UNIQUE (DPN)
    FOREIGN KEY (PT) REFERENCES GCS (PT)
)

CREATE TABLE xrev (
    DPN VARCHAR(5) NOT NULL,
    Descrip TEXT NOT NULL,
    PT TEXT NOT NULL,
    PC TEXT NOT NULL,
    Phase TEXT NOT NULL
    UNIQUE (DPN)
    FOREIGN KEY (PT) REFERENCES GCS (PT)
)

SELECT * FROM arev

-- Data cleanse
-- remove all non xirev from life cycle phase; keep 'X Revision'