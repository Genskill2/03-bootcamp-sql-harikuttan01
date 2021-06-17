-- SELECT book_subjects.subject FROM book_subjects INNER JOIN books ON book_subjects.book = books.id AND books.title = 'Atomic Habits';

SELECT subjects.name FROM subjects WHERE id IN (SELECT book_subjects.subject FROM book_subjects INNER JOIN books ON book_subjects.book = books.id AND books.title = 'Atomic Habits');
