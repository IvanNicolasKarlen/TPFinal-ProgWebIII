﻿//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TPFinalProgWebIII
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class PW3TP_20181C_TareasEntities : DbContext
    {
        public PW3TP_20181C_TareasEntities(): base("name=PW3TP_20181C_TareasEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<ArchivoTarea> ArchivoTarea { get; set; }
        public DbSet<Carpeta> Carpeta { get; set; }
        public DbSet<ComentarioTarea> ComentarioTarea { get; set; }
        public DbSet<Tarea> Tarea { get; set; }
        public DbSet<Usuario> Usuario { get; set; }
    }
}
