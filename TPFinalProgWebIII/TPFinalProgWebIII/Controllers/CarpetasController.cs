﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TPFinalProgWebIII.Models.Service;
using TPFinalProgWebIII.Models.View;

namespace TPFinalProgWebIII.Controllers
{
    public class CarpetasController : CustomController
    {

        PW3TP_20181C_TareasEntities db = new PW3TP_20181C_TareasEntities();
        // GET: Carpetas

        private IUsuarioService _usuarioService;
        private IGeneralService<Carpeta> _generalService;

        public CarpetasController(IUsuarioService usuarioService, IGeneralService<Carpeta> generalService)
        {
            _usuarioService = usuarioService;
            _generalService = generalService;
        }

        public ActionResult Index()
        {
            int id;
            int.TryParse(Session["IdUsuario"].ToString(), out id);
            Usuario usuario = db.Usuario.Single(x => x.IdUsuario == id);

            ViewBag.carpetas = usuario.Carpeta.OrderBy(x => x.Nombre).ToList();

            return View("Index", ViewBag);
        }

        public ActionResult Crear()
        {

            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [ActionName("Crear-Carpeta")]
        public ActionResult Crear(CarpetaVal carpetaVal)
        {
            int id;

            if (!ModelState.IsValid)
            {
                return View();

            } else {

                Carpeta carpeta = new Carpeta();
                int.TryParse(Session["IdUsuario"].ToString(), out id);
                carpeta.IdUsuario = id;
                carpeta.Nombre = carpetaVal.Nombre;
                carpeta.Descripcion = carpetaVal.Descripcion;

                //Esta linea no hace falta, la dejo comentada porque causa una excepción
                //carpeta.Usuario = db.Usuario.Find(id);
                

                _generalService.Create(carpeta);
             
                return RedirectToAction("Index");
            }
            
        }

        public ActionResult Tareas(int id)
        {
            ViewBag.tareas = db.Tarea.Where(x => x.IdCarpeta == id).ToList();

            return View("Tareas", ViewBag);
        }
    }
}