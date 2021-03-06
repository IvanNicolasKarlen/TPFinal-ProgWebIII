USE [PW3TP_20181C_Tareas]
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

GO
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Email], [Contrasenia], [Activo], [FechaRegistracion], [FechaActivacion], [CodigoActivacion]) VALUES (1, N'Noac', N'Tivo', N'juancito@test.com', N'aA123', 0, CAST(N'2018-01-01 00:00:00.000' AS DateTime), NULL, N'4AE52B1C-C3E2-4AB1-8EFD-859FCB87F5B6')
GO
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Email], [Contrasenia], [Activo], [FechaRegistracion], [FechaActivacion], [CodigoActivacion]) VALUES (2, N'Ata', N'Reado', N'atareado@test.com', N'aA123', 1, CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(N'2018-01-01 00:00:00.000' AS DateTime), N'4AE52B1C-C3E2-4AB1-8EFD-859FCB87F5B2')
GO
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Email], [Contrasenia], [Activo], [FechaRegistracion], [FechaActivacion], [CodigoActivacion]) VALUES (3, N'Elba', N'Goneta', N'elbagoneta', N'aA123', 1, CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(N'2018-01-01 00:00:00.000' AS DateTime), N'4AE52B1C-C3E2-4AB1-8EFD-859FCB87F5B4')
GO
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[Carpeta] ON 

GO
INSERT [dbo].[Carpeta] ([IdCarpeta], [IdUsuario], [Nombre], [Descripcion], [FechaCreacion]) VALUES (1, NULL, N'General', NULL, CAST(N'2018-01-11 13:12:37.043' AS DateTime))
GO
INSERT [dbo].[Carpeta] ([IdCarpeta], [IdUsuario], [Nombre], [Descripcion], [FechaCreacion]) VALUES (2, 2, N'Entrevistas', NULL, CAST(N'2018-01-11 13:12:37.043' AS DateTime))
GO
INSERT [dbo].[Carpeta] ([IdCarpeta], [IdUsuario], [Nombre], [Descripcion], [FechaCreacion]) VALUES (3, 2, N'Medico', NULL, CAST(N'2018-01-11 13:12:37.043' AS DateTime))
GO
INSERT [dbo].[Carpeta] ([IdCarpeta], [IdUsuario], [Nombre], [Descripcion], [FechaCreacion]) VALUES (4, 2, N'Proyectos', NULL, CAST(N'2018-01-11 13:12:37.043' AS DateTime))
GO
INSERT [dbo].[Carpeta] ([IdCarpeta], [IdUsuario], [Nombre], [Descripcion], [FechaCreacion]) VALUES (5, 3, N'Viajes', NULL, CAST(N'2018-01-11 13:12:37.043' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Carpeta] OFF
GO
SET IDENTITY_INSERT [dbo].[Tarea] ON 

GO
INSERT [dbo].[Tarea] ([IdTarea], [IdCarpeta], [IdUsuario], [Nombre], [Descripcion], [FechaFin], [Prioridad], [Completada], [FechaCreacion]) VALUES (1, 1, 2, N'Crear tareas 2019', NULL, CAST(N'2019-01-01 00:00:00.000' AS DateTime), 4, 0, CAST(N'2018-04-11 13:12:22.620' AS DateTime))
GO
INSERT [dbo].[Tarea] ([IdTarea], [IdCarpeta], [IdUsuario], [Nombre], [Descripcion], [EstimadoHoras], [FechaFin], [Prioridad], [Completada], [FechaCreacion]) VALUES (2, 2, 2, N'Crear examen entrevista .Net', NULL, 2.5, CAST(N'2018-06-10 00:00:00.000' AS DateTime) , 3, 1, CAST(N'2018-04-11 13:12:22.620' AS DateTime))
GO
INSERT [dbo].[Tarea] ([IdTarea], [IdCarpeta], [IdUsuario], [Nombre], [Descripcion], [EstimadoHoras], [FechaFin], [Prioridad], [Completada], [FechaCreacion]) VALUES (3, 2, 2, N'Reservar sala', NULL, 0.25, CAST(N'2018-05-01 00:00:00.000' AS DateTime), 2, 0, CAST(N'2018-04-11 13:12:22.620' AS DateTime))
GO
INSERT [dbo].[Tarea] ([IdTarea], [IdCarpeta], [IdUsuario], [Nombre], [Descripcion], [EstimadoHoras], [FechaFin], [Prioridad], [Completada], [FechaCreacion]) VALUES (4, 3, 2, N'Sacar turno con dentista', NULL, 0.25, CAST(N'2018-12-12 00:00:00.000' AS DateTime), 4, 0, CAST(N'2018-04-11 13:12:22.620' AS DateTime))
GO
INSERT [dbo].[Tarea] ([IdTarea], [IdCarpeta], [IdUsuario], [Nombre], [Descripcion], [FechaFin], [Prioridad], [Completada], [FechaCreacion]) VALUES (5, 5, 3, N'Sacar pasajes Cuba', NULL, CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, 1, CAST(N'2018-04-11 13:12:22.620' AS DateTime))
GO
INSERT [dbo].[Tarea] ([IdTarea], [IdCarpeta], [IdUsuario], [Nombre], [Descripcion], [FechaFin], [Prioridad], [Completada], [FechaCreacion]) VALUES (6, 5, 3, N'Reservar Hotel Cuba', NULL, CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, 0, CAST(N'2018-04-11 13:12:22.620' AS DateTime))
GO
INSERT [dbo].[Tarea] ([IdTarea], [IdCarpeta], [IdUsuario], [Nombre], [Descripcion], [FechaFin], [Prioridad], [Completada], [FechaCreacion]) VALUES (7, 5, 3, N'Buscar pasaporte', NULL, CAST(N'2018-06-01 00:00:00.000' AS DateTime), 2, 0, CAST(N'2018-04-11 13:12:22.620' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Tarea] OFF
GO
SET IDENTITY_INSERT [dbo].[ComentarioTarea] ON 

GO
INSERT [dbo].[ComentarioTarea] ([IdComentarioTarea], [Texto], [IdTarea], [FechaCreacion]) VALUES (1, N'Recordar crear tareas relacionadas a la construccion de la casa nueva', 1, CAST(N'2018-04-13 13:11:23.023' AS DateTime))
GO
INSERT [dbo].[ComentarioTarea] ([IdComentarioTarea], [Texto], [IdTarea], [FechaCreacion]) VALUES (2, N'Creo que está en la mesa del comedor', 7, CAST(N'2018-04-14 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[ComentarioTarea] ([IdComentarioTarea], [Texto], [IdTarea], [FechaCreacion]) VALUES (3, N'Lo saque en 12 cuotas', 5, CAST(N'2018-04-15 13:13:44.477' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ComentarioTarea] OFF
GO
SET IDENTITY_INSERT [dbo].[ArchivoTarea] ON 

GO
INSERT [dbo].[ArchivoTarea] ([IdArchivoTarea], [RutaArchivo], [IdTarea], [FechaCreacion]) VALUES (1, N'/archivos/tareas/2/examen-net-senior_1ADD5F99-2E17-478C-990F-26257E63ED1F.doc', 2, CAST(N'2018-04-12 09:00:00.000' AS DateTime))
GO
INSERT [dbo].[ArchivoTarea] ([IdArchivoTarea], [RutaArchivo], [IdTarea], [FechaCreacion]) VALUES (2, N'/archivos/tareas/2/examen-net-senior_C6DFA46B-E6BF-41C1-B3F3-8BCFFD0EBDB0.doc', 2, CAST(N'2018-04-13 15:30:00.000' AS DateTime))
GO
INSERT [dbo].[ArchivoTarea] ([IdArchivoTarea], [RutaArchivo], [IdTarea], [FechaCreacion]) VALUES (3, N'/archivos/tareas/5/voucher-cuba_EB949C4A-8DBC-4EBA-99C7-646D97BE640F', 5, CAST(N'2018-04-14 12:02:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ArchivoTarea] OFF
GO
