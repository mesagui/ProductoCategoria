using System;
using System.Collections.Generic;

namespace ProductoCategoira.Models
{
    public  class Categoria
    {
       
        public int IdCategoria { get; set; }



        public string Nombre { get; set; }

        public List<Product> Productos { get; set; }
    }
}
