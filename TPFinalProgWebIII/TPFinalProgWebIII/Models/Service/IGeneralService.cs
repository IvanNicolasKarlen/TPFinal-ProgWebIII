﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TPFinalProgWebIII.Models.Service
{
    public interface IGeneralService<T>
    {
        T Crear(T a);

        T Modificar(T a);

        void Eliminar(T a);

        List<T> Listar();

        T BuscarPorId(int id);

    }
}