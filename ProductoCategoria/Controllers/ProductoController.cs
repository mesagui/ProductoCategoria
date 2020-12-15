using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProductoCategoira.Models;

namespace ProductoCategoira.Controllers
{
    public class ProductoController : Controller
    {
        public ProductoContex _conexion = new ProductoContex();

        public IActionResult Index()

        {

            var productos = _conexion.Products.Include(a=>a.Categoria).ToList();

            return View(productos);
        }

        [HttpGet]
        public ActionResult Create()
        {

            var producto = _conexion.Categorias.ToList();
            ViewBag.Categorias = producto; 
            return View(new Product());
        }

        [HttpPost]
        public ActionResult Create(Product producto)
        {
            var productoa = _conexion.Categorias.ToList();
            ViewBag.Categorias = productoa;

            if (producto.Costo < 10)
            {
                ModelState.AddModelError("Costo", "EL costo debe ser mayor a 10");
            }
            if (ModelState.IsValid)
            {
                _conexion.Products.Add(producto);
                _conexion.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(producto);
            
        }


        [HttpGet]
        public ActionResult Edit(int id)
        {
            ViewBag.Id = id;
            var productos= _conexion.Products.Where(o => o.IdProducto == id).FirstOrDefault();

            ViewBag.Categorias = _conexion.Categorias.ToList();
            ViewBag.Nombre = productos.Nombre;
            ViewBag.Provedor = productos.Proveedor;
            ViewBag.Costo= productos.Costo;
            return View("Edit");
        }
        [HttpPost]
        public ActionResult Edit(Product producto)
        {
            

            var oPruducto = _conexion.Products.Where(o => o.IdProducto == producto.IdProducto).FirstOrDefault();

            oPruducto.Nombre = producto.Nombre;
            oPruducto.Proveedor = producto.Proveedor;
            oPruducto.Costo = producto.Costo;
            oPruducto.IdProducto = producto.IdProducto;

            _conexion.SaveChanges();

            return RedirectToAction("Index");
        }



        public ActionResult Delete(int id)
        {
            var producto = _conexion.Products.Where(o=>o.IdProducto == id).FirstOrDefault();

            _conexion.Remove(producto);
            _conexion.SaveChanges();

            return RedirectToAction("Index");
        }
    }
}
