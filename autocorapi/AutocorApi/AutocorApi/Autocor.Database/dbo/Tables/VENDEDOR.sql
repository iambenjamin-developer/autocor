﻿CREATE TABLE [dbo].[VENDEDOR] (
    [VEN_CODIGO] INT           NOT NULL,
    [VEN_NOMBRE] NVARCHAR (60) NOT NULL,
    CONSTRAINT [PK_VENDEDOR] PRIMARY KEY CLUSTERED ([VEN_CODIGO] ASC)
);

