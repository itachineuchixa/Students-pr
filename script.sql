USE [master]
GO
/****** Object:  Database [Students]    Script Date: 28.11.2022 15:00:28 ******/
CREATE DATABASE [Students]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Students', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Students.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Students_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Students_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Students] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Students].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Students] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Students] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Students] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Students] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Students] SET ARITHABORT OFF 
GO
ALTER DATABASE [Students] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Students] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Students] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Students] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Students] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Students] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Students] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Students] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Students] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Students] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Students] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Students] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Students] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Students] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Students] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Students] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Students] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Students] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Students] SET  MULTI_USER 
GO
ALTER DATABASE [Students] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Students] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Students] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Students] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Students] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Students] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Students] SET QUERY_STORE = OFF
GO
USE [Students]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 28.11.2022 15:00:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[group_name] [nvarchar](50) NOT NULL,
	[special_id] [int] NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marks]    Script Date: 28.11.2022 15:00:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[students_id] [int] NOT NULL,
	[subject_id] [int] NOT NULL,
	[Mark] [int] NOT NULL,
 CONSTRAINT [PK_Marks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specials]    Script Date: 28.11.2022 15:00:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Special] [nvarchar](50) NULL,
 CONSTRAINT [PK_Specials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 28.11.2022 15:00:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[group_id] [int] NOT NULL,
	[gender] [nvarchar](1) NOT NULL,
	[n_zachetki] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 28.11.2022 15:00:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[subject] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (1, N'ИСП.20А', 1)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (2, N'ТСА.19А', 2)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (3, N'БД.20А', 3)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (4, N'БД.19А', 4)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (5, N'ИМ.18', 5)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (6, N'КСБ.21', 6)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (7, N'ТТР.20А', 7)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (8, N'РТ.17А', 8)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (9, N'РИИ.20', 9)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (10, N'ВД.19', 10)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (11, N'ВД.1', 11)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (12, N'ВД.2', 12)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (13, N'ВД.3', 13)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (14, N'ВД.4', 14)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (15, N'ВД.5', 15)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (16, N'ВД.6', 16)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (17, N'ВД.7', 17)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (18, N'ВД.8', 18)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (19, N'ВД.9', 19)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (20, N'ВД.10', 20)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (21, N'ВД.11', 21)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (22, N'ВД.12', 22)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (23, N'ВД.13', 23)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (24, N'ВД.14', 24)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (25, N'ВД.15', 25)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (26, N'ВД.16', 26)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (27, N'ВД.17', 27)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (28, N'ВД.18', 28)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (29, N'ВД.19', 29)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (30, N'ВД.20', 30)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (31, N'ВД.21', 31)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (32, N'ВД.22', 32)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (33, N'ВД.23', 33)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (34, N'ВД.24', 34)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (35, N'ВД.25', 35)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (36, N'ВД.26', 36)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (37, N'ВД.27', 37)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (38, N'ИСП.1В', 38)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (39, N'ИСП.2Б', 39)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (40, N'ИСП.3А', 40)
INSERT [dbo].[Groups] ([Id], [group_name], [special_id]) VALUES (41, N'ИСП.4А', 41)
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[Marks] ON 

INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (1, 1, 1, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (2, 1, 2, 4)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (4, 1, 3, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (5, 1, 4, 3)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (6, 1, 5, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (7, 2, 1, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (8, 2, 1, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (10, 2, 3, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (11, 2, 4, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (12, 2, 5, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (13, 3, 1, 2)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (14, 4, 2, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (15, 4, 8, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (16, 4, 9, 4)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (17, 5, 1, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (18, 5, 2, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (19, 5, 3, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (20, 5, 4, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (21, 6, 6, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (22, 7, 7, 4)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (23, 8, 8, 3)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (24, 9, 9, 2)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (25, 10, 10, 3)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (26, 11, 11, 4)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (27, 12, 12, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (28, 13, 13, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (29, 14, 14, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (30, 15, 15, 4)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (31, 16, 16, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (32, 17, 17, 4)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (33, 18, 18, 3)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (34, 19, 19, 2)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (35, 20, 20, 4)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (36, 21, 21, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (37, 22, 22, 4)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (38, 23, 23, 3)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (41, 25, 24, 2)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (42, 26, 26, 4)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (43, 27, 27, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (44, 28, 28, 3)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (45, 29, 29, 4)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (46, 30, 30, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (47, 31, 31, 4)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (50, 33, 32, 4)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (51, 34, 33, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (52, 35, 35, 4)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (53, 36, 36, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (54, 36, 1, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (55, 37, 2, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (56, 38, 3, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (57, 39, 5, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (58, 40, 12, 5)
INSERT [dbo].[Marks] ([Id], [students_id], [subject_id], [Mark]) VALUES (59, 42, 41, 5)
SET IDENTITY_INSERT [dbo].[Marks] OFF
GO
SET IDENTITY_INSERT [dbo].[Specials] ON 

INSERT [dbo].[Specials] ([Id], [Special]) VALUES (1, N'Программист')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (2, N'Логист')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (3, N'Предприниматель')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (4, N'Банкир')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (5, N'Менеджер')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (6, N'QA инженер')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (7, N'OPSEC')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (8, N'Консалт')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (9, N'АИ разработчик')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (10, N'Ветеринар')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (11, N'Медсестра')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (12, N'Медбрат')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (13, N'Консультант')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (14, N'Военнослужащий')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (15, N'Конвоир')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (16, N'Пожарный')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (17, N'разведчик')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (18, N'Спасатель')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (19, N'Телохранитель')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (20, N'HTML-верстальщик')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (21, N'UX-дизайнер')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (22, N'Администратор базы данных')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (23, N'Блогер')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (24, N'Диктор')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (25, N'Веб-дизайнер')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (26, N'Копирайтер')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (27, N'Контент-мейкер')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (28, N'Сетевой инженер')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (29, N'Системный администратор')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (30, N'Системный аналитик')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (31, N'Спичрайтер')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (32, N'Тестировщик')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (33, N'Археолог')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (34, N'Астроном')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (35, N'Библиограф')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (36, N'Биолог')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (37, N'Биохимик')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (38, N'Вирусолог')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (39, N'Геолог')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (40, N'Египтолог')
INSERT [dbo].[Specials] ([Id], [Special]) VALUES (41, N'Искусствовед')
SET IDENTITY_INSERT [dbo].[Specials] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (1, N'Аврамов А.А', 18, 1, N'м', 1)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (2, N'Николаев В.В', 19, 2, N'м', 2)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (3, N'Сергеева С.С', 17, 3, N'ж', 3)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (4, N'Яковленко П.В', 18, 4, N'м', 4)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (5, N'Василенкко Н.А', 19, 5, N'ж', 5)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (6, N'Никитин Н.Н', 18, 6, N'м', 6)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (7, N'Некрасова М.Ю', 19, 7, N'ж', 7)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (8, N'Черкасов Е.В', 18, 8, N'м', 9)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (9, N'Сафронов И.П', 17, 9, N'м', 11)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (10, N'Иванец Н.П', 18, 10, N'ж', 15)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (11, N'Новиков А.Д', 19, 11, N'м', 16)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (12, N'Власов Н.Д', 18, 12, N'м', 17)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (13, N'Туманова А. К.', 18, 13, N'ж', 18)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (14, N'Жданова У. Д.', 19, 14, N'ж', 19)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (15, N'Ларин Т. П.', 18, 15, N'м', 20)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (16, N'Ермаков А. Я.', 19, 16, N'м', 21)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (17, N'Панина В. М.', 18, 17, N'ж', 22)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (18, N'Зайцев М. Ф.', 18, 18, N'м', 23)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (19, N'Николаев Д. Г.', 17, 19, N'м', 24)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (20, N'Карташова П. Р.', 18, 20, N'ж', 25)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (21, N'Романов К. И.', 18, 21, N'м', 26)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (22, N'Позднякова К. К.', 19, 22, N'ж', 27)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (23, N'Горюнов Ф. М.', 19, 23, N'м', 28)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (25, N'Анисимова В. Б.', 19, 24, N'ж', 29)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (26, N'Денисов А. А.', 18, 25, N'м', 30)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (27, N'Зубов В. Р.', 19, 26, N'ж', 31)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (28, N'Исаева М. Д.', 18, 27, N'ж', 32)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (29, N'Яковлев В. Н.', 18, 28, N'м', 33)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (30, N'Спиридонова А. Г.', 20, 29, N'ж', 34)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (31, N'Полякова Т. Р.', 17, 30, N'ж', 35)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (33, N'Белова Е. С.', 18, 31, N'ж', 36)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (34, N'Попов М. Д.', 18, 32, N'м', 37)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (35, N'Морозова В.Н', 19, 33, N'ж', 38)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (36, N'Назаров М. Э.', 18, 34, N'м', 39)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (37, N'Жукова А. Г.', 17, 35, N'ж', 40)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (38, N'Кочетков М. И.', 19, 36, N'м', 41)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (39, N'Ковалева С. С.', 18, 37, N'ж', 42)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (40, N'Фролов А. А.', 19, 38, N'м', 43)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (41, N'Бобров Т. М.', 21, 39, N'м', 44)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (42, N'Миронов А. В.', 22, 40, N'м', 45)
INSERT [dbo].[Students] ([Id], [FIO], [age], [group_id], [gender], [n_zachetki]) VALUES (43, N'Иванов П. Г.', 18, 41, N'м', 46)
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON 

INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (1, N'Математика')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (2, N'Анлийский')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (3, N'МДК 01.01')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (4, N'МДК 11.01')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (5, N'Физкультура')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (6, N'Философия')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (7, N'Психология')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (8, N'Бухгалтерское дело')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (9, N'Финансовая грамотность')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (10, N'Основы нейрообучения')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (11, N'География')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (12, N'Биология')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (13, N'Информатика')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (14, N'Химия')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (15, N'Физика')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (16, N'История')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (17, N'Литература')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (18, N'Русский язык')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (19, N'геометрия')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (20, N'Мой край')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (21, N'Питон')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (22, N'C#')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (23, N'Rust')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (24, N'Golang')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (25, N'HTML')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (26, N'Node js')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (27, N'PHP')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (28, N'Java ')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (29, N'javascript')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (30, N'move')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (31, N'solidity')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (32, N'delphi')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (33, N'basic')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (34, N'c++')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (35, N'c')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (36, N'anaconda')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (37, N'Робототехника')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (38, N'Фитнес')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (39, N'Основы программирования')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (40, N'алгоритмизация')
INSERT [dbo].[Subjects] ([Id], [subject]) VALUES (41, N'ОБЖ')
SET IDENTITY_INSERT [dbo].[Subjects] OFF
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Specials] FOREIGN KEY([special_id])
REFERENCES [dbo].[Specials] ([Id])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Specials]
GO
ALTER TABLE [dbo].[Marks]  WITH CHECK ADD  CONSTRAINT [FK_Marks_Students] FOREIGN KEY([students_id])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[Marks] CHECK CONSTRAINT [FK_Marks_Students]
GO
ALTER TABLE [dbo].[Marks]  WITH CHECK ADD  CONSTRAINT [FK_Marks_Subjects] FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[Marks] CHECK CONSTRAINT [FK_Marks_Subjects]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Groups] FOREIGN KEY([group_id])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Groups]
GO
USE [master]
GO
ALTER DATABASE [Students] SET  READ_WRITE 
GO
