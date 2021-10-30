
select * from  vBookstatus;

insert into book values ('9780133970777','Fundamentals of Database Systems ', 'Clear explanations of theory and design, broad coverage of models and real systems', 'English', 25, 'available', 'borrow', 'PR 8923 W6 L36 2015 c.3', 'F1WA7', 1200, 1);

insert into book values ('9780262033848',' Introduction to Algorithms', 'The latest edition of the essential text and professional reference, with substantial new material on such topics as vEB trees, multithreaded algorithms, dynamic programming, and edge-based flow', 'English', 3, 'available', 'short loan', 'PR 8923 W6 L36 2005 c.3', 'F2EA4', 1692, 1);

insert into book values ('9781449373320',' Designing Data-Intensive Applications:The Big Ideas Behind Reliable,Scalable, Maintainable Systems','The latest edition of the essential text and professional reference, with substantial new material on such topics as vEB trees, multithreaded algorithms, dynamic programming, and edge-based flow', 'English', 0, 'unavailable', 'borrow', 'PR 8923 W6 L36 1975 c.3', 'F2EA7', 1692, 1);

insert into category values ( '1', 'Textbook'); 

insert into book_category values ('9780133970777', '1');
insert into book_category values ('9780262033848', '1');
insert into book_category values ('9781449373320', '1');




