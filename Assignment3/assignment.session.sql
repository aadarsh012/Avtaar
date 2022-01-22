-- @BLOCK
SHOW DATABASES;
-- @BLOCK
SHOW TABLES;
-- @BLOCK
-- Create table User
CREATE TABLE User(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    gender ENUM('Male', 'Female'),
    email VARCHAR(255) UNIQUE NOT NULL
);
-- @BLOCK
-- Create table events
CREATE TABLE Events(
    id INT AUTO_INCREMENT,
    uid INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    occurrence ENUM('YEARLY', 'ONETIME') NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE,
    PRIMARY KEY (id),
    FOREIGN KEY (uid) REFERENCES User(uid)
);
-- @BLOCK
-- Insert Data into User
INSERT INTO User(name, gender, email)
VALUES ('aadarsh', 'Male', 'demo@demo.com'),
    ('dummy', 'Male', 'dummy@dummy.com'),
    ('swati', 'Female', 'email@gmail.com'),
    ('pandey', 'Female', 'pandey@gmail.com'),
    ('singh', 'Male', 'singh@gmail.com');
-- @BLOCK
-- Insert Data into Events
INSERT INTO Events(uid, name, occurrence, startDate, endDate)
VALUES (
        2,
        'dummy event',
        'ONETIME',
        '2022-01-22',
        '2022-02-03'
    ),
    (
        3,
        'birthday',
        'YEARLY',
        '2022-01-22',
        '2022-02-03'
    ),
    (
        4,
        'birthday',
        'YEARLY',
        '2022-01-22',
        '2022-02-03'
    ),
    (
        5,
        'birthday',
        'YEARLY',
        '2022-01-22',
        '2022-02-03'
    ),
    (
        2,
        'marriage',
        'ONETIME',
        '2022-01-22',
        '2022-02-03'
    ),
    (
        2,
        'Exam',
        'YEARLY',
        '2022-01-22',
        '2022-02-03'
    ),
    (
        4,
        'Dance Competetion',
        'ONETIME',
        '2022-01-22',
        '2022-02-03'
    ),
    (
        1,
        'Hackathon',
        'YEARLY',
        '2022-01-25',
        '2022-01-27'
    ),
    (
        2,
        'Semester',
        'YEARLY',
        '2022-01-30',
        '2025-01-30'
    ),
    (
        5,
        'Birthday',
        'YEARLY',
        '2022-01-22',
        '2022-02-03'
    ),
    (5, 'Exam', 'ONETIME', '2022-01-25', '2025-12-04'),
    (5, 'Demo', 'ONETIME', '2022-01-28', '2022-01-30'),
    (
        1,
        'JWOC',
        'YEARLY',
        '2022-01-22',
        '2022-02-03'
    ),
    (
        4,
        'Finals',
        'ONETIME',
        '2022-01-28',
        '2022-01-30'
    ),
    (
        3,
        'Seminar',
        'YEARLY',
        '2022-01-28',
        '2022-01-30'
    ),
    (
        3,
        'College',
        'ONETIME',
        '2022-01-28',
        '2022-01-30'
    ),
    (
        1,
        'Intership',
        'ONETIME',
        '2022-01-28',
        '2022-03-28'
    ),
    (
        2,
        'Demo Event',
        'ONETIME',
        '2022-01-28 ',
        '2022-03-28'
    ),
    (
        1,
        'Demo Event',
        'ONETIME',
        '2022-01-28 ',
        '2022-03-28'
    ),
    (
        3,
        'Demo Event',
        'ONETIME',
        '2022-01-28 ',
        '2022-03-28'
    ),
    (
        4,
        'Demo Event',
        'ONETIME',
        '2022-01-28 ',
        '2022-03-28'
    ),
    (
        5,
        'Demo Event',
        'ONETIME',
        '2022-01-28 ',
        '2022-03-28'
    ),
    (
        2,
        'Demo Event',
        'ONETIME',
        '2022-01-15 ',
        '2022-03-28'
    ),
    (
        5,
        'Demo Event',
        'ONETIME',
        '2022-01-12 ',
        '2022-03-28'
    ),
    (
        3,
        'Demo Event',
        'ONETIME',
        '2022-01-18 ',
        '2022-03-28'
    );
--@BLOCK
-- Get all events for today
SELECT *
FROM Events
WHERE startDate <= curdate()
    AND endDate >= curdate();
--@BLOCK
-- Get all users for a list of uid
SELECT *
FROM User
WHERE uid IN(1, 3, 5);
--@BLOCK
-- Get all events for a uid
SELECT *
FROM Events
WHERE uid = 1;
--@BLOCK
-- Get all events for the next 7 days
SELECT *
FROM Events
WHERE (
        startDate <= curdate()
        AND endDate >= curdate()
    )
    AND (
        startDate <= curdate() + 7
        AND endDate >= curdate() + 7
    );
--@BLOCK
select *
from user;
--@BLOCK
DELETE from events;