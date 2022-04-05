CREATE TABLE [dbo].[dep] (
    [department_id]   BIGINT       IDENTITY (1, 1) NOT NULL,
    [department_name] VARCHAR (50) NULL,
    CONSTRAINT [PK_dep] PRIMARY KEY CLUSTERED ([department_id] ASC)
);

