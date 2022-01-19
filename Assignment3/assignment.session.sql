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
        '2025-12-03',
        '2025-12-04'
    ),
    (
        3,
        'birthday',
        'YEARLY',
        '2025-12-03',
        '2025-12-04'
    ),
    (
        4,
        'birthday',
        'YEARLY',
        '2025-12-03',
        '2025-12-04'
    ),
    (
        5,
        'birthday',
        'YEARLY',
        '2025-12-03',
        '2025-12-04'
    ),
    (
        2,
        'marriage',
        'ONETIME',
        '2025-12-03',
        '2025-12-04'
    ),
    (2, 'Exam', 'YEARLY', '2025-12-03', '2025-12-04'),
    (
        4,
        'Dance Competetion',
        'ONETIME',
        '2025-12-03',
        '2025-12-04'
    ),
    (
        1,
        'Hackathon',
        'YEARLY',
        '2022-12-03',
        '2022-12-04'
    ),
    (
        2,
        'Semester',
        'YEARLY',
        '2022-03-03',
        '2025-03-09'
    ),
    (
        5,
        'Birthday',
        'YEARLY',
        '2025-12-03',
        '2025-12-04'
    ),
    (5, 'Exam', 'ONETIME', '2025-12-03', '2025-12-04'),
    (5, 'Demo', 'ONETIME', '2025-12-03', '2025-12-04'),
    (1, 'JWOC', 'YEARLY', '2025-12-03', '2025-12-04'),
    (
        4,
        'Finals',
        'ONETIME',
        '2025-12-03',
        '2025-12-04'
    ),
    (
        3,
        'Seminar',
        'YEARLY',
        '2025-12-03',
        '2025-12-04'
    ),
    (
        3,
        'College',
        'ONETIME',
        '2025-12-03',
        '2025-12-04'
    ),
    (
        1,
        'Intership',
        'ONETIME',
        '2025-12-03',
        '2025-12-04'
    ),
    (
        2,
        'Demo Event',
        'ONETIME',
        '2025-12-03',
        '2025-12-04'
    ),
    (
        5,
        'Excursion',
        'YEARLY',
        '2025-12-03',
        '2025-12-04'
    ),
    (
        2,
        'Anniversary',
        'YEARLY',
        '2025-12-03',
        '2025-12-04'
    ),
    (
        1,
        'Webinar',
        'ONETIME',
        '2025-12-03',
        '2025-12-04'
    );
--@BLOCK
-- Get all events for today
SELECT *
FROM Events
WHERE startDate = curdate();
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
WHERE startDate BETWEEN curdate() AND curdate() + 7;
--@BLOCK
select *
from user;
--@BLOCK
select *
from events;