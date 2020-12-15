
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using ProductoCategoira.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProductoCategoria.BD
{
    public class ProductoMap:IEntityTypeConfiguration<Product>
    {
        public void Configure(EntityTypeBuilder<Product> builder)
        {

            builder.ToTable("Product");
            builder.HasKey(x => x.IdProducto);

            builder.HasOne(o => o.Categoria)
                .WithMany(o => o.Productos)
                .HasForeignKey(o => o.IdCategoriaProduct);
        }
    }
}
