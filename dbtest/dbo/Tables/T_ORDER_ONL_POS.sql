CREATE TABLE [dbo].[T_ORDER_ONL_POS] (
    [ORDER_ONL_POS_ID]     BIGINT        IDENTITY (1, 1) NOT NULL,
    [ORDER_NO]             VARCHAR (20)  NULL,
    [CUSTOMER_CODE]        VARCHAR (20)  NULL,
    [CUSTOMER_NAME]        VARCHAR (50)  NULL,
    [PAYMENT_TERMS]        VARCHAR (10)  NULL,
    [PRODUCT_NAME]         VARCHAR (20)  NULL,
    [QTY]                  INT           NULL,
    [UNIT_PRICE]           DECIMAL (18)  NULL,
    [DELIVERY_ADDRESS]     VARCHAR (200) NULL,
    [DELIVERY_INSTRUCTION] VARCHAR (200) NULL,
    [MARKETER_NAME]        VARCHAR (20)  NULL,
    [TRANSACTION_REF_NO]   VARCHAR (20)  NULL,
    [ATTACHMENT_URL]       VARCHAR (200) NULL,
    [REMARKS]              VARCHAR (200) NULL,
    [IS_PROCESSED]         BIT           NULL,
    [CRTEATED_BY]          INT           NULL,
    [CREATED_DATE]         INT           NULL,
    [MODIFIED_DATE]        DATETIME      NULL,
    [MODIFIED_BY]          INT           NULL,
    CONSTRAINT [PK_T_ORDER_ONL_POS] PRIMARY KEY CLUSTERED ([ORDER_ONL_POS_ID] ASC)
);

