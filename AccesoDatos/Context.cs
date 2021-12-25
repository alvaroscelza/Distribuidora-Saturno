using Dominio;
using System.Data.Entity;

namespace AccesoDatos
{
    public class Context : DbContext
    {
        public DbSet<Producto> Productos { get; set; }
        
        public Context()
        {
            //En cierta ocasión no me creaba la base de datos al ejecutar la aplicación, la siguiente línea resolvió 
            //el problema. En otra ocasión en que esto no funcionó, habilitar Migrations me lanzó un error que permitió 
            //identificar el problema.
            Database.SetInitializer<Context>(new CreateDatabaseIfNotExists<Context>());
        }
    }
}
