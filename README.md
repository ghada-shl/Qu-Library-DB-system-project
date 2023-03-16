# Qu-Library-DB-system-project
a Database system for an academic library, storing information on Books, loans and members.

Qassim university’s library provides a variety of resources, physical ones (books, thesis, journals, rooms) and virtual (recordings: audio books, video and sound tapes)
The physical resources are organized by subject using the Library of Congress (LC) categorization system, which consists of a combination of letters and numbers. To locate items inside the library, each item is assigned an address that follows a specified format designed for the library's structure. The format begins with the letter F followed by a number indicating the floor number, then a letter W or E indicating the west or east side, and finally the letter A followed by a number indicating the aisle number (e.g., F1WA3). Virtual resources can only be accessed via the library's computers using a one-time password issued upon request. Access to all resources is limited to (students, Faculty, staff) who subscribe as members i.e.: patrons of the library. The members have various privileges granted to them based on their member type. The members' access to library resources is governed by the services (catalog, circulation). The catalog is a web-based service, providing Facilities to search on various criteria including keywords, title, call number. The catalog is accessible through the website using the member's credentials. The circulation service, which is managed by the library's circulation desk, controls the issuing and returning of library resources, reservations on the resources, and penalties for members who violate the rules. The circulation services are accessible to patrons who present their member card to the circulation desk.
Members are free to borrow any of the library's resources, however the maximum number of items they may borrow and the maximum duration are determined by the member's type Resources that are rare, frequently used, or in limited supply are classed as short loan and can only be used on the premises for a maximum period of two hours. rooms and short loan resources are available upon reservation through the circulation desk for penalties, Fines will be imposed on Members who fail to return borrowed items by the due date.



# Data requirements 
The following main features for the proposed library system have been identified in order to meet its objectives: 

1.The Catalog:
Book information stored include: a unique ISBN, publisher details(name, phone number, email) , title, the LC call number, status( available or not/reserved), language, description, print length, loan type (borrow/short loan), category, author, Number of copies, location ( the library format location) Thesis information stored include: a unique identifier, title, author, contact information, status( available or not t/reserved), description, location, Lc call number, language, loan type (borrow/short loan), print length

Journal information stored include: a unique ISSN, title, publisher details(name, email, phone number), description, status( available or not t/reserved), contact information, number of copies, loan type (borrow/short loan), Lc call number, location, print length
Recording information stored include: a unique identifier, title, length, narrator, description, status, media type( audio book, video tape, sound tape)

2.The Circulation:
circulation services information stored include: a unique identifier, service type(issue/return), service name(loan, reservation, fine), date, due date, service notes, status(confirmed, cancelled, active, archived) membership services information stored include: a unique identifier, name, date of birth, contact information, address , membership status, join date, expiry date, member type(indicating maximum items to loan and maximum loan period)




# Transaction Requirements 

Data entry
•  Enter the details of a book such as (Fundamentals of Database Systems by Ramez Elmasri, Shamkant Navathe, Pearson (June 8, 2015), ISBN-13: 978-0133970777 ) with call number and location specified by library •  Enter a new member information •  Enter a member type such as (undergraduate student, graduate student, faculty, staff and indicate privileges ( enter maximum items to loan and maximum loan period for each) •  Enter the details of a journal •  Enter the details of a thesis •  Enter the details of a recording •  Enter the details of issuing a loan service •  Enter the details of issuing a room reservation •  Enter the details of issuing a fine on a member •  Enter the details of returning a borrowed resource •  Enter the details of issuing a one-time password to members who wish to use the library's computer for virtual resources
Data update/deletion
•  update/delete book details •  update/delete journal number of copies •  update/delete thesis details •  update/delete recordings details •  update/delete member details •  update/delete Fine status •  update/delete room reservation details
Data queries
•  List all books that are limited to use on premises •  List all members that can borrow more than 5 items at a time •  Identify the total numbers of books categorized as literature •  List all rooms that are currently free to use •  List all members that have unpaid fines •  List all the members that are part of the staff •  Identify the books that are borrowed by a given member id •  List all resources that are currently unavailable •  List all journal published in 2015 •  identify the number of copies of a given book id •  List all recordings published by a given narrator name •  List all information on specific member •  identify all short loan books that are currently reserved

