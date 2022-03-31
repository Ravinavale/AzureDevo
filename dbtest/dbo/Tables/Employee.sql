CREATE TABLE [dbo].[Employee] (
    [id]       INT          IDENTITY (1, 1) NOT NULL,
    [Employee] VARCHAR (15) NULL,
    CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([id] ASC)
);

