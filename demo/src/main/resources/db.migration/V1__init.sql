
CREATE TABLE IF NOT EXISTS conference (
    id SERIAL,
    conferencename VARCHAR(100),
    department VARCHAR(50),
    startdate DATE,
    enddate DATE,
    PRIMARY KEY (id)
    );


CREATE TABLE IF NOT EXISTS assistant (
    id SERIAL,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    department VARCHAR(50),
    conference_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (conference_id) REFERENCES conference(id)
    );
