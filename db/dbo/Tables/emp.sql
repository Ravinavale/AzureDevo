CREATE TABLE [dbo].[emp] (
    [emp_id]        BIGINT       IDENTITY (1, 1) NOT NULL,
    [Employee_name] VARCHAR (50) NULL,
    [email]         VARCHAR (50) NULL,
    [mobile]        VARCHAR (50) NULL,
    [department_id] BIGINT       NULL,
    [salary]        BIGINT       NULL,
    CONSTRAINT [PK_emp] PRIMARY KEY CLUSTERED ([emp_id] ASC)
);

