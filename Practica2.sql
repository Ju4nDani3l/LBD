USE [Practica_2]
GO
/****** Object:  Table [dbo].[TallaUniforme]    Script Date: 23/02/2019 12:40:21 p.m. ******/
DROP TABLE [dbo].[TallaUniforme]
GO
/****** Object:  Table [dbo].[Salones]    Script Date: 23/02/2019 12:40:21 p.m. ******/
DROP TABLE [dbo].[Salones]
GO
/****** Object:  Table [dbo].[PagosDeColegiatura]    Script Date: 23/02/2019 12:40:21 p.m. ******/
DROP TABLE [dbo].[PagosDeColegiatura]
GO
/****** Object:  Table [dbo].[Nomina]    Script Date: 23/02/2019 12:40:21 p.m. ******/
DROP TABLE [dbo].[Nomina]
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 23/02/2019 12:40:21 p.m. ******/
DROP TABLE [dbo].[Materias]
GO
/****** Object:  Table [dbo].[Maestros]    Script Date: 23/02/2019 12:40:21 p.m. ******/
DROP TABLE [dbo].[Maestros]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 23/02/2019 12:40:21 p.m. ******/
DROP TABLE [dbo].[Libros]
GO
/****** Object:  Table [dbo].[Excursion]    Script Date: 23/02/2019 12:40:21 p.m. ******/
DROP TABLE [dbo].[Excursion]
GO
/****** Object:  Table [dbo].[Edificos]    Script Date: 23/02/2019 12:40:21 p.m. ******/
DROP TABLE [dbo].[Edificos]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 23/02/2019 12:40:21 p.m. ******/
DROP TABLE [dbo].[Alumnos]
GO
/****** Object:  User [Mate_13-PC\Mate_13]    Script Date: 23/02/2019 12:40:21 p.m. ******/
DROP USER [Mate_13-PC\Mate_13]
GO
/****** Object:  User [Mate_13-PC\Mate_13]    Script Date: 23/02/2019 12:40:21 p.m. ******/
CREATE USER [Mate_13-PC\Mate_13] FOR LOGIN [Mate_13-PC\Mate_13] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 23/02/2019 12:40:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumnos](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[ApellidoPaterno] [varchar](15) NOT NULL,
	[ApellidoMaterno] [varchar](15) NOT NULL,
	[Matricula] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Edificos]    Script Date: 23/02/2019 12:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Edificos](
	[Id] [uniqueidentifier] NOT NULL,
	[UbicacionDelEdificio] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Excursion]    Script Date: 23/02/2019 12:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Excursion](
	[Nombre] [uniqueidentifier] NOT NULL,
	[fecha] [date] NOT NULL,
	[PrecioPorAlumno] [int] NOT NULL,
	[Hora] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Libros]    Script Date: 23/02/2019 12:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[Nombre] [uniqueidentifier] NOT NULL,
	[Edicion] [int] NOT NULL,
	[FechaDePublicacion] [date] NOT NULL,
	[AñosQueTieneElLibro]  AS (datediff(year,[FechaDePublicacion],getdate())),
PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Maestros]    Script Date: 23/02/2019 12:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Maestros](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[ApellidoPaterno] [varchar](15) NOT NULL,
	[ApellidoMaterno] [varchar](15) NOT NULL,
	[FechaDeNacimiento] [date] NOT NULL,
	[Edad]  AS (datediff(year,[FechaDeNacimiento],getdate())),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 23/02/2019 12:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Materias](
	[Id] [uniqueidentifier] NOT NULL,
	[NombreDeLaMateria] [varchar](50) NOT NULL,
	[GradoDeLaMateria] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nomina]    Script Date: 23/02/2019 12:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nomina](
	[NumeroDeEmpleado] [uniqueidentifier] NOT NULL,
	[Horas] [int] NOT NULL,
	[Pago] [money] NOT NULL,
	[Recibo]  AS ([Horas]*[pago]),
PRIMARY KEY CLUSTERED 
(
	[NumeroDeEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PagosDeColegiatura]    Script Date: 23/02/2019 12:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagosDeColegiatura](
	[Matricula] [uniqueidentifier] NOT NULL,
	[Inscripcion] [int] NOT NULL,
	[Materias] [int] NOT NULL,
	[Beca] [decimal](18, 0) NOT NULL,
	[PagoFinal]  AS ([Beca]*([Inscripcion]+[Materias])),
PRIMARY KEY CLUSTERED 
(
	[Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salones]    Script Date: 23/02/2019 12:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Salones](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](5) NOT NULL,
	[CantidadDeAsientos] [int] NOT NULL,
	[Ubicacion] [varchar](20) NOT NULL,
	[Descripcion]  AS (([Ubicacion]+'')+[Nombre]),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TallaUniforme]    Script Date: 23/02/2019 12:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TallaUniforme](
	[Id] [uniqueidentifier] NOT NULL,
	[UniformeDeportivo] [varchar](5) NOT NULL,
	[UniformeGala] [varchar](5) NOT NULL,
	[PedidosDeUniformes]  AS ([UniformeDeportivo]+[UniformeGala]),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
