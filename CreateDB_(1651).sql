--publisher details table
CREATE TABLE publisher_details (
  id NUMBER(4) PRIMARY KEY,
  name VARCHAR(30),
  phone VARCHAR(10),
  email VARCHAR(30)
);
---------- Book Table
CREATE TABLE book (
  ISBN VARCHAR(13) PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(255),
  language VARCHAR(20),
  copies_No NUMBER(4),
  status VARCHAR(20) NOT NULL,
  loan_type VARCHAR(20) NOT NULL,
  call_No VARCHAR(25),
  location VARCHAR(5),
  print_length NUMBER(4),
  publisher_id NUMBER(4),
  CONSTRAINT publisherId_book_FK FOREIGN KEY(publisher_id) REFERENCES publisher_details(id) ON DELETE CASCADE
);
-------- Category Table
CREATE TABLE category (
  id VARCHAR(4) PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);
------- Book Category 
CREATE TABLE book_category (
  ISBN VARCHAR(13),
  category_id VARCHAR(4),
  CONSTRAINT ISBN_BC_FK FOREIGN KEY(ISBN) REFERENCES book(ISBN) ON DELETE CASCADE,
  CONSTRAINT category_FK FOREIGN KEY(category_id) REFERENCES category(id) ON DELETE CASCADE
); 
------- Author Table 
CREATE TABLE author (
  id VARCHAR(4) PRIMARY KEY,
  Fname VARCHAR(30) NOT NULL,
  Lname VARCHAR(30) NOT NULL
);
------- Book Auther Table
CREATE TABLE book_author (
  ISBN VARCHAR(13),
  author_id VARCHAR(4),
  CONSTRAINT ISBN_BA_FK FOREIGN KEY(ISBN) REFERENCES book(ISBN) ON DELETE CASCADE,
  CONSTRAINT author_FK FOREIGN KEY(author_id) REFERENCES author(id) ON DELETE CASCADE
);
------- Journal
CREATE TABLE journal (
  ISSN VARCHAR(8) PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  location VARCHAR(5),
  description VARCHAR(255),
  status VARCHAR(20) NOT NULL,
  call_No VARCHAR(25),
  copies_No NUMBER(4),
  loan_type VARCHAR(20) NOT NULL,
  publisher_id NUMBER(4),
  CONSTRAINT publisherId_journal_FK FOREIGN KEY(publisher_id) REFERENCES publisher_details(id) ON DELETE CASCADE
);
------- Journal contact Table
CREATE TABLE journal_contact (
  ISSN VARCHAR(8),
  phone NUMBER(10),
  email VARCHAR(30),
  CONSTRAINT ISSN_contact_FK FOREIGN KEY(ISSN) REFERENCES journal(ISSN) ON DELETE CASCADE
);

----- Recording Table
CREATE TABLE recording (
  id NUMBER(4)PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  length VARCHAR(30),
  description VARCHAR(255),
  media_type VARCHAR(30) NOT NULL,
  status VARCHAR(30) NOT NULL,
  narrator VARCHAR(30)
);
------- Thesis Table
CREATE TABLE thesis (
  id NUMBER(4) PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  author VARCHAR(30),
  status VARCHAR(30) NOT NULL,
  language VARCHAR(30),
  description VARCHAR(255),
  print_length NUMBER(4),
  call_No VARCHAR(25),
  location VARCHAR(5),
  loan_type VARCHAR(20) NOT NULL
);

------ Thesis Contact Information Table 
CREATE TABLE thesis_contact (
  thesis_id NUMBER(4) NOT NULL,
  email VARCHAR(30) NOT NULL,
  phone NUMBER(10) NOT NULL,
  CONSTRAINT thesisId_FK FOREIGN KEY(thesis_id) REFERENCES thesis(id) ON DELETE CASCADE
);

----- Room Table
CREATE TABLE room (
  room_No NUMBER(4) PRIMARY KEY,
  type VARCHAR(30) NOT NULL,
  status VARCHAR(30) NOT NULL,
  location VARCHAR(5),
  duration VARCHAR(30),
  capacity VARCHAR(30)
);

----- Member Type Table
CREATE TABLE member_type (
  id NUMBER(4) PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  max_duration VARCHAR(30) NOT NULL,
  max_items VARCHAR(2) NOT NULL
);

------ Member Table
CREATE TABLE member (
  id NUMBER(4) PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  DOB DATE,
  membership_status VARCHAR(30) NOT NULL,
  join_date DATE NOT NULL,
  expiry_date DATE NOT NULL,
  memberType_id NUMBER(4),
  CONSTRAINT memberTypeId_FK FOREIGN KEY(memberType_id) REFERENCES member_type(id) ON DELETE CASCADE
);

------ Member Contact Information Table
CREATE TABLE member_contact (
  member_id NUMBER(4),
  phone VARCHAR(10),
  email VARCHAR(10),
  CONSTRAINT memberId_contact_FK FOREIGN KEY(member_id) REFERENCES member(id) ON DELETE CASCADE
);

----- Member address Table 
CREATE TABLE member_address (
  member_id NUMBER(4),
  city VARCHAR(30),
  zip_code NUMBER(5) NOT NULL,
  street VARCHAR(30),
  CONSTRAINT memberId_address_FK FOREIGN KEY(member_id) REFERENCES member(id) ON DELETE CASCADE
);

------ Circulation Service Table 
CREATE TABLE circulation_service (
  service_id NUMBER(4) PRIMARY KEY,
  status VARCHAR(30) NOT NULL,
  service_type VARCHAR(30) NOT NULL,
  service_name VARCHAR(30) NOT NULL,
  service_date DATE NOT NULL,
  due_date DATE NOT NULL,
  notes VARCHAR(30) NOT NULL,
  member_id NUMBER(4) NOT NULL,
  CONSTRAINT memberId_circ_FK FOREIGN KEY(member_id) REFERENCES member(id) ON DELETE CASCADE
);

------- Fine Table
CREATE TABLE fine (
  service_id NUMBER(4),
  status VARCHAR(30) NOT NULL,
  amount NUMBER(3) NOT NULL,
  description VARCHAR(255),
    CONSTRAINT fine_circId_FK FOREIGN KEY(service_id) REFERENCES circulation_service(service_id) ON DELETE CASCADE
);

------ Book Borrow Table
CREATE TABLE book_borrow (
  ISBN VARCHAR(13),
  service_id NUMBER(4),
  CONSTRAINT BOOK_circId_FK FOREIGN KEY(service_id) REFERENCES circulation_service(service_id) ON DELETE CASCADE,
  CONSTRAINT ISBN_circ_FK FOREIGN KEY(ISBN) REFERENCES book(ISBN) ON DELETE CASCADE
);
------ Recording borrow Table
CREATE TABLE recording_borrow (
  rec_id NUMBER(4),
  service_id NUMBER(4),
  CONSTRAINT rec_circId_FK FOREIGN KEY(service_id) REFERENCES circulation_service(service_id) ON DELETE CASCADE,
  CONSTRAINT recid_circId_FK FOREIGN KEY(rec_id) REFERENCES recording(id) ON DELETE CASCADE
);
------ Room service Table 
CREATE TABLE room_service (
  room_No NUMBER(4),
  service_id NUMBER(4),
  CONSTRAINT room_circId_FK FOREIGN KEY(service_id) REFERENCES circulation_service(service_id) ON DELETE CASCADE,
  CONSTRAINT roomNo_circId_FK FOREIGN KEY(room_No) REFERENCES room(room_No) ON DELETE CASCADE
);

----- Thesis Borrow Table
CREATE TABLE thesis_borrow (
  thesis_id NUMBER(4),
  service_id NUMBER(4),
  CONSTRAINT thesis_circId_FK FOREIGN KEY(service_id) REFERENCES circulation_service(service_id) ON DELETE CASCADE,
  CONSTRAINT thesisId_circId_FK FOREIGN KEY(thesis_id) REFERENCES thesis(id) ON DELETE CASCADE
);

------ Journal Borrow Table
CREATE TABLE journal_borrow (
  ISSN VARCHAR(8),
  service_id NUMBER(4),
  CONSTRAINT journal_circId_FK FOREIGN KEY(service_id) REFERENCES circulation_service(service_id) ON DELETE CASCADE,
  CONSTRAINT ISSN_circId_FK FOREIGN KEY(ISSN) REFERENCES journal(ISSN) ON DELETE CASCADE
);

COMMIT;