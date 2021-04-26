USE [EmployeeDB]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 27-04-2021 00:19:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 27-04-2021 00:19:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[DateOfBrith] [datetime2](7) NOT NULL,
	[Gender] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[PhotoPath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 
GO
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (1, N'IT')
GO
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (2, N'HR')
GO
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (3, N'Payroll')
GO
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (4, N'Admin')
GO
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 
GO
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Email], [DateOfBrith], [Gender], [DepartmentId], [PhotoPath]) VALUES (1, N'A Su', N'30MKI', N'rakesh.kumar7007@gmail.com', CAST(N'1980-10-05T00:00:00.0000000' AS DateTime2), 0, 1, N'images/A Su-30MKI.jpg')
GO
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Email], [DateOfBrith], [Gender], [DepartmentId], [PhotoPath]) VALUES (2, N'IAF', N'Tejas', N'Sam@pragimtech.com', CAST(N'1981-12-22T00:00:00.0000000' AS DateTime2), 0, 2, N'images/IAF_Tejas.jpg')
GO
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Email], [DateOfBrith], [Gender], [DepartmentId], [PhotoPath]) VALUES (3, N'A C-130J ', N'Hercules', N'mary@pragimtech.com', CAST(N'1979-11-11T00:00:00.0000000' AS DateTime2), 1, 1, N'images/A C-130J Hercules.jpg')
GO
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Email], [DateOfBrith], [Gender], [DepartmentId], [PhotoPath]) VALUES (4, N'A Kamov', N'Ka-31', N'sara@pragimtech.com', CAST(N'1982-09-23T00:00:00.0000000' AS DateTime2), 1, 3, N'images/A Kamov Ka-31.jpg')
GO
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Email], [DateOfBrith], [Gender], [DepartmentId], [PhotoPath]) VALUES (1001, N'An AH-64 ', N'Apache', N'shiv@gmail.com', CAST(N'2020-05-15T16:35:54.5179120' AS DateTime2), 0, 1, N'images/An AH-64 Apache.jpg')
GO
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Email], [DateOfBrith], [Gender], [DepartmentId], [PhotoPath]) VALUES (1002, N'Sukhoi ', N'Su-57', N'Jennifer@hotmail.com', CAST(N'1990-05-15T00:00:00.0000000' AS DateTime2), 1, 1, N'images/Sukhoi Su-57.jpg')
GO
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Email], [DateOfBrith], [Gender], [DepartmentId], [PhotoPath]) VALUES (1003, N'Martin F-35', N'Lightning II', N'martin@gmail.com', CAST(N'1980-05-17T00:00:00.0000000' AS DateTime2), 0, 1, N'images/Martin F-35 Lightning II.jpg')
GO
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
