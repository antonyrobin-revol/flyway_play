SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [dbo].[person]'
GO
CREATE TABLE [dbo].[person]
(
[id] [INT] NOT NULL,
[name] [VARCHAR] (100) NOT NULL
)
GO

INSERT INTO person (id, name) VALUES (1, 'John Doe');
INSERT INTO person (id, name) VALUES (2, 'Jane Smith');
INSERT INTO person (id, name) VALUES (3, 'Alice Johnson');
INSERT INTO person (id, name) VALUES (4, 'Bob Brown');
INSERT INTO person (id, name) VALUES (5, 'Charlie White');
GO