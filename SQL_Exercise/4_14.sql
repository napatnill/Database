ALTER TYPE colors ADD VALUE 'Yellow';
ALTER TYPE colors ADD VALUE 'Green';

INSERT INTO product VALUES
	(7,'kitchen cabinet', 'Yellow', 1500.00),
	(8, 'table', 'Green', 550.00);

SELECT * FROM product;

-- use to show the enum values
/*
SELECT enumlabel FROM pg_enum
WHERE enumtypid = 'colors'::regtype;
*/