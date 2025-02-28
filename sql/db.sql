USE [MVM.PruebaTecnica]
GO
/****** Object:  User [sa]    Script Date: 05/07/2019 0:18:38 ******/
CREATE USER [sa] FOR LOGIN [usrPruebaTecnica] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [sa]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [sa]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [sa]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [sa]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [sa]
GO
ALTER ROLE [db_datareader] ADD MEMBER [sa]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [sa]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [sa]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [sa]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 05/07/2019 0:18:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Id], [Email], [Password]) VALUES (1, N'cristian', N'123')
INSERT [dbo].[Usuario] ([Id], [Email], [Password]) VALUES (2, N'leomessi', N'456')
INSERT [dbo].[Usuario] ([Id], [Email], [Password]) VALUES (3, N'cr7', N'789')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
