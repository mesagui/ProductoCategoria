using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace ProductoCategoira.Models
{
    public  class Product
    {
        public int IdProducto { get; set; }


        [Required(ErrorMessage ="El nombre es requerido")]
        public string Nombre { get; set; }

        public int IdCategoriaProduct { get; set; }

        [Required(ErrorMessage = "El Proveedor es requerido")]
        public string Proveedor { get; set; }


        [Required(ErrorMessage = "El costo es requerido")]
        public double Costo { get; set; }

        public Categoria Categoria { get; set; }
    }

}
