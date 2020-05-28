﻿CREATE TABLE [dbo].[CLIENTES] (
    [CODCLI]       FLOAT (53)     NOT NULL,
    [NOMBRE]       NVARCHAR (255) DEFAULT (NULL) NULL,
    [CUIT]         NVARCHAR (255) DEFAULT (NULL) NULL,
    [USUARIO]      NVARCHAR (255) DEFAULT (NULL) NULL,
    [PASS]         NVARCHAR (255) DEFAULT (NULL) NULL,
    [TIPO_USUARIO] INT            DEFAULT ((1)) NOT NULL,
    [ZON_CODIGO]   FLOAT (53)     CONSTRAINT [DF_CLIENTES_ZON_CODIGO] DEFAULT ((0)) NULL,
    [GIR_CODIGO]   INT            NULL,
    CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED ([CODCLI] ASC)
);






GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'autocor.clientes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CLIENTES';


GO
CREATE NONCLUSTERED INDEX [IX_CLIENTES_1]
    ON [dbo].[CLIENTES]([ZON_CODIGO] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_CLIENTES]
    ON [dbo].[CLIENTES]([GIR_CODIGO] ASC);

