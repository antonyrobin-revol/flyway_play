CREATE OR ALTER PROCEDURE AddItem
    @id INT,
    @name VARCHAR(100)
AS
BEGIN
    INSERT INTO items (id, name)
    VALUES (@id, @name);
END;