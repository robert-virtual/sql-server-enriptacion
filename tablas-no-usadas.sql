/****** Object:  Table [dbo].[Compras]    Script Date: 11/8/2021 08:55:21 ******/

CREATE TABLE [dbo].[Compras](
	[IdCompra] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[ColaboradorFk] [int] FOREIGN KEY REFERENCES Colaboradores(IdColaborador) NOT NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
	[Fecha] [datetime] NOT NULL DEFAULT (getdate()),
) 
GO

/****** Object:  Table [dbo].[DetallesCompras]    Script Date: 11/8/2021 08:55:21 ******/

CREATE TABLE [dbo].[DetallesCompras](
	[CompraFk] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[ProductoFk] [int] FOREIGN KEY REFERENCES Productos(IdProducto) NULL,
	[PrecioCompra] [float] NOT NULL,
	[Cantidad] [int] NOT NULL
) ON [PRIMARY]



insert into Colaboradores
(dni,rtn,nombre,Telefono,FechaNacimiento,Clave,PuestoFk) 
values(
	'0703200101235',
	'0703200101235R',
	'Administrador',
	'88137603',
	'2000-08-31',
	'123',
	1
)
GO