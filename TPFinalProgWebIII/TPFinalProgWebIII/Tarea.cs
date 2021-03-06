//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    using TPFinalProgWebIII.Models.Enum;

    public partial class Tarea
    {
        public Tarea()
        {
            this.Prioridad = (short)TipoPrioridad.BAJA;
            this.ArchivoTarea = new HashSet<ArchivoTarea>();
            this.ComentarioTarea = new HashSet<ComentarioTarea>();
            this.FechaCreacion = DateTime.Now;
            this.Completada = 0;
        }
    
        public int IdTarea { get; set; }
        public int IdCarpeta { get; set; }
        public int IdUsuario { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public Nullable<decimal> EstimadoHoras { get; set; }
        public Nullable<System.DateTime> FechaFin { get; set; }
        public short Prioridad { get; set; }
        public short Completada { get; set; }
        public System.DateTime FechaCreacion { get; set; }
    
        public virtual ICollection<ArchivoTarea> ArchivoTarea { get; set; }
        public virtual ICollection<ComentarioTarea> ComentarioTarea { get; set; }
        public virtual Usuario Usuario { get; set; }
        
    }
}
