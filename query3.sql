-- SELECT book_subjects.book FROM book_subjects INNER JOIN subjects ON book_subjects.subject = subjects.id AND (subjects.name = 'Technology' OR subjects.name = 'Politics');
SELECT books.title FROM books WHERE id IN (SELECT books_subjects.book FROM books_subjects INNER JOIN subjects ON books_subjects.subject = subjects.id AND (subjects.name = 'Technology' OR subjects.name = 'Politics'));
