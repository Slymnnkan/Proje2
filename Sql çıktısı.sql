USE [Proje5Admin]
GO
/****** Object:  Table [dbo].[TBLADMIN]    Script Date: 27.02.2022 22:05:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLADMIN](
	[ID] [int] NOT NULL,
	[KULLANICI] [varchar](20) NULL,
	[SIFRE] [varchar](20) NULL
) ON [PRIMARY]
GO
