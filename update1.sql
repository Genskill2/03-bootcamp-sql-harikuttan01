UPDATE publisher SET name = 'Prentice Hall' WHERE publisher.name = 'PHI';

-- UPDATE books SET publisher = (SELECT publisher.id FROM publisher WHERE publisher.name = 'Prentice Hall')