CREATE TABLE classroom (
    building       VARCHAR(15),
    room_number    VARCHAR(7),
    capacity       INTEGER CHECK (capacity > 0),
    PRIMARY KEY (building, room_number)
);

CREATE TABLE department (
    dept_name      VARCHAR(20),
    building       VARCHAR(15),
    budget         NUMERIC(12,2) CHECK (budget > 0),
    PRIMARY KEY (dept_name)
);

CREATE TABLE course (
    course_id      VARCHAR(8),
    title          VARCHAR(50),
    dept_name      VARCHAR(20),
    credits        INTEGER CHECK (credits > 0),
    PRIMARY KEY (course_id),
    FOREIGN KEY (dept_name) REFERENCES department (dept_name) ON DELETE SET NULL
);

CREATE TABLE instructor (
    id             VARCHAR(5),
    name           VARCHAR(20) NOT NULL,
    dept_name      VARCHAR(20),
    salary         NUMERIC(8,2) CHECK (salary > 29000),
    PRIMARY KEY (id),
    FOREIGN KEY (dept_name) REFERENCES department (dept_name) ON DELETE SET NULL
);

CREATE TABLE section (
    course_id      VARCHAR(8),
    sec_id         VARCHAR(8),
    semester       VARCHAR(6) CHECK (semester IN ('Fall', 'Winter', 'Spring', 'Summer')),
    year           INTEGER CHECK (year > 1701 AND year < 2100),
    building       VARCHAR(15),
    room_number    VARCHAR(7),
    time_slot_id   VARCHAR(4),
    PRIMARY KEY (course_id, sec_id, semester, year),
    FOREIGN KEY (course_id) REFERENCES course (course_id) ON DELETE CASCADE,
    FOREIGN KEY (building, room_number) REFERENCES classroom (building, room_number) ON DELETE SET NULL
);

CREATE TABLE teaches (
    id             VARCHAR(5),
    course_id      VARCHAR(8),
    sec_id         VARCHAR(8),
    semester       VARCHAR(6),
    year           INTEGER,
    PRIMARY KEY (id, course_id, sec_id, semester, year),
    FOREIGN KEY (course_id, sec_id, semester, year) REFERENCES section (course_id, sec_id, semester, year) ON DELETE CASCADE,
    FOREIGN KEY (id) REFERENCES instructor (id) ON DELETE CASCADE
);

CREATE TABLE student (
    id             VARCHAR(5),
    name           VARCHAR(20) NOT NULL,
    dept_name      VARCHAR(20),
    tot_cred       INTEGER CHECK (tot_cred >= 0),
    PRIMARY KEY (id),
    FOREIGN KEY (dept_name) REFERENCES department (dept_name) ON DELETE SET NULL
);

CREATE TABLE takes (
    id             VARCHAR(5),
    course_id      VARCHAR(8),
    sec_id         VARCHAR(8),
    semester       VARCHAR(6),
    year           INTEGER,
    grade          VARCHAR(2),
    PRIMARY KEY (id, course_id, sec_id, semester, year),
    FOREIGN KEY (course_id, sec_id, semester, year) REFERENCES section (course_id, sec_id, semester, year) ON DELETE CASCADE,
    FOREIGN KEY (id) REFERENCES student (id) ON DELETE CASCADE
);

CREATE TABLE advisor (
    s_id           VARCHAR(5),
    i_id           VARCHAR(5),
    PRIMARY KEY (s_id),
    FOREIGN KEY (i_id) REFERENCES instructor (id) ON DELETE SET NULL,
    FOREIGN KEY (s_id) REFERENCES student (id) ON DELETE CASCADE
);

CREATE TABLE time_slot (
    time_slot_id   VARCHAR(4),
    day            VARCHAR(1),
    start_hr       INTEGER CHECK (start_hr >= 0 AND start_hr < 24),
    start_min      INTEGER CHECK (start_min >= 0 AND start_min < 60),
    end_hr         INTEGER CHECK (end_hr >= 0 AND end_hr < 24),
    end_min        INTEGER CHECK (end_min >= 0 AND end_min < 60),
    PRIMARY KEY (time_slot_id, day, start_hr, start_min)
);

CREATE TABLE prereq (
    course_id      VARCHAR(8),
    prereq_id      VARCHAR(8),
    PRIMARY KEY (course_id, prereq_id),
    FOREIGN KEY (course_id) REFERENCES course (course_id) ON DELETE CASCADE,
    FOREIGN KEY (prereq_id) REFERENCES course (course_id)
);

Sure! Here’s a set of **DML INSERT statements** for your PostgreSQL schema with example values for each table. I'll try to keep them logically consistent:

---

### **1. classroom**

```sql
INSERT INTO classroom (building, room_number, capacity) VALUES
('Engineering', 'E101', 50),
('Science', 'S201', 80);
```

---

### **2. department**

```sql
INSERT INTO department (dept_name, building, budget) VALUES
('Computer Science', 'Engineering', 1500000.00),
('Physics', 'Science', 1200000.00);
```

---

### **3. course**

```sql
INSERT INTO course (course_id, title, dept_name, credits) VALUES
('CS101', 'Intro to Programming', 'Computer Science', 3),
('PH201', 'Quantum Mechanics', 'Physics', 4);
```

---

### **4. instructor**

```sql
INSERT INTO instructor (ID, name, dept_name, salary) VALUES
('I001', 'Dr. Smith', 'Computer Science', 95000.00),
('I002', 'Dr. Johnson', 'Physics', 87000.00);
```

---

### **5. section**

```sql
INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES
('CS101', '1', 'Fall', 2024, 'Engineering', 'E101', 'T1'),
('PH201', '1', 'Spring', 2025, 'Science', 'S201', 'T2');
```

---

### **6. teaches**

```sql
INSERT INTO teaches (ID, course_id, sec_id, semester, year) VALUES
('I001', 'CS101', '1', 'Fall', 2024),
('I002', 'PH201', '1', 'Spring', 2025);
```

---

### **7. student**

```sql
INSERT INTO student (ID, name, dept_name, tot_cred) VALUES
('S001', 'Alice', 'Computer Science', 30),
('S002', 'Bob', 'Physics', 45);
```

---

### **8. takes**

```sql
INSERT INTO takes (ID, course_id, sec_id, semester, year, grade) VALUES
('S001', 'CS101', '1', 'Fall', 2024, 'A'),
('S002', 'PH201', '1', 'Spring', 2025, 'B+');
```

---

### **9. advisor**

```sql
INSERT INTO advisor (s_ID, i_ID) VALUES
('S001', 'I001'),
('S002', 'I002');
```

---

### **10. time_slot**

```sql
INSERT INTO time_slot (time_slot_id, day, start_hr, start_min, end_hr, end_min) VALUES
('T1', 'M', 9, 0, 10, 30),
('T2', 'W', 14, 0, 15, 30);
```

---

### **11. prereq**

```sql
INSERT INTO prereq (course_id, prereq_id) VALUES
('PH201', 'CS101');
```
