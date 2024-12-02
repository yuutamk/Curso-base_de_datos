CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Date_of_Birth DATE,
    Address VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(50),
    Enrollment_Number VARCHAR(10) UNIQUE,
    Specialization VARCHAR(20),
    SEP_Documents TEXT,
    Vacation_Payment BOOLEAN,
    Tuition_Status VARCHAR(20),
    Grade_History TEXT
);

CREATE TABLE Teachers (
    Teacher_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Specialization VARCHAR(20),
    Phone VARCHAR(15),
    Email VARCHAR(50),
    Employee_Number VARCHAR(10) UNIQUE,
    Payroll_Payment BOOLEAN,
    Taught_Subjects TEXT,
    Taught_Groups TEXT
);

CREATE TABLE Subjects (
    Subject_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Specialization VARCHAR(20),
    Description TEXT
);

CREATE TABLE Groups (
    Group_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Teacher_ID INT,
    Subject_ID INT,
    Schedule VARCHAR(50),
    Specialization VARCHAR(20),
    FOREIGN KEY (Teacher_ID) REFERENCES Teachers(Teacher_ID),
    FOREIGN KEY (Subject_ID) REFERENCES Subjects(Subject_ID)
);

CREATE TABLE Enrollments (
    Enrollment_ID INT PRIMARY KEY,
    Student_ID INT,
    Group_ID INT,
    Enrollment_Date DATE,
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
    FOREIGN KEY (Group_ID) REFERENCES Groups(Group_ID)
);

CREATE TABLE Grades (
    Grade_ID INT PRIMARY KEY,
    Enrollment_ID INT,
    Practice FLOAT,
    Discipline FLOAT,
    Exam FLOAT,
    Oral_Exam FLOAT,
    Final_Average FLOAT,
    FOREIGN KEY (Enrollment_ID) REFERENCES Enrollments(Enrollment_ID)
);

CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY,
    Student_ID INT,
    Payment_Date DATE,
    Amount DECIMAL(10, 2),
    Concept VARCHAR(50),
    Payment_Status VARCHAR(20),
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID)
);

CREATE TABLE Attendances (
    Attendance_ID INT PRIMARY KEY,
    Group_ID INT,
    Student_ID INT,
    Date DATE,
    Attendance_Status VARCHAR(10),
    FOREIGN KEY (Group_ID) REFERENCES Groups(Group_ID),
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID)
);
