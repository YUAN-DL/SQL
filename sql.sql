USE [bookDB]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/26/2020 16:15:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[pwd] [nvarchar](50) NULL,
	[age] [int] NULL,
	[online] [int] NULL,
	[shenfen] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reader]    Script Date: 11/26/2020 16:15:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reader](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[读者编号] [varchar](100) NULL,
	[读者姓名] [varchar](100) NULL,
	[性别] [varchar](100) NULL,
	[联系电话] [varchar](100) NULL,
 CONSTRAINT [PK_reader] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loginLog]    Script Date: 11/26/2020 16:15:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loginLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nchar](10) NULL,
	[login_date] [nvarchar](50) NULL,
 CONSTRAINT [PK_loginLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[borrow]    Script Date: 11/26/2020 16:15:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[borrow](
	/******[id] [int] IDENTITY(1,1) NOT NULL,
	[操作数] [varchar](100) NULL,
	[图书编号] [varchar](100) NULL,
	[图书名称] [varchar](100) NULL,
	[读者编号] [varchar](100) NULL,
	[读者名称] [varchar](100) NULL,******/

	[id] [int] IDENTITY(1,1) NOT NULL,
	[操作数] [varchar](100) NULL,
	[图书编号] [varchar](100) NULL,
	[图书名称] [varchar](100) NULL,
	[读者编号] [varchar](100) NULL,
	[读者名称] [varchar](100) NULL,
 CONSTRAINT [PK_borrow] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[books]    Script Date: 11/26/2020 16:15:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[books](
	/******[Id] [int] IDENTITY(1,1) NOT NULL,
	[图书编号] [varchar](50) NULL,
	[图书名称] [varchar](50) NULL,
	[作者] [varchar](50) NULL,
	[出版社] [varchar](100) NULL,
	[图书简介] [varchar](225) NULL,******/

	[Id] [int] IDENTITY(1,1) NOT NULL,
	[图书编号] [varchar](50) NULL,
	[图书名称] [varchar](50) NULL,
	[作者] [varchar](50) NULL,
	[出版社] [varchar](100) NULL,
	[图书简介] [varchar](225) NULL,
 CONSTRAINT [PK__books__3214EC0703317E3D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
