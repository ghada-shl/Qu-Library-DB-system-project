CREATE VIEW vBookstatus AS 
SELECT book.ISBN, book.title,book.copies_No as Copies_Number, category.name as Category
FROM book JOIN book_category ON book.ISBN = book_category.ISBN join category ON book_category.category_id = category.id 
WHERE book.status = 'available';
