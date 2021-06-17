DELETE FROM book_subjects WHERE book_subjects.subject = (SELECT id FROM subjects WHERE name = 'History');

DELETE FROM subjects WHERE name = 'History';