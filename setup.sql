CREATE DATABASE assesments;

USE assesments;

CREATE TABLE courses(
    course_id TEXT NOT NULL PRIMARY KEY,
    course TEXT NOT NULL,
    department TEXT NOT NULL
);

CREATE TABLE assesments(
    assesment_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    month TEXT NOT NULL,
    course_id TEXT NOT NULL,
    batch TEXT NOT NULL,
    score REAL NOT NULL,
    attendance_pct REAL NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO courses(course_id, course, department) VALUES 
('C1','Excel','Business'),
('C2','Power BI','Business'),
('C3','SQL','Technology'),
('C4','Python','Technology');

INSERT INTO assesments (month,course_id,batch,score,attendance_pct) VALUES
('Jan','C1','Morning','72','90'),
('Jan','C2','Evening','45','70'),
('Jan','C3','Morning','65','85'),
('Jan','C4','Weekend','38','60'),
('Feb','C1','Evening','80','95'),
('Feb','C2','Weekend','55','80'),
('Feb','C3','Morning','48','75'),
('Feb','C4','Evening','68','88'),
('Mar','C1','Weekend','90','98'),
('Mar','C2','Morning','60','82'),
('Mar','C3','Evening','75','92'),
('Mar','C4','Weekend','42','65');