using AccesoDatos;
using Dominio;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;

namespace Distribuidora_Saturno.Controllers
{
    [Authorize(Roles = "Administrador")]
    public class ProductosController : Controller
    {
        private Context db = new Context();
        private Producto nuevoProducto;
        private string rutaCompletaAImagenDelProducto;

        // GET: Productos
        public ActionResult Index()
        {
            var todosLosProductos = View(db.Productos.ToList());
            return todosLosProductos;
        }

        // GET: Productos/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Producto producto = db.Productos.Find(id);
            if (producto == null)
            {
                return HttpNotFound();
            }
            return View(producto);
        }

        // GET: Productos/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Productos/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Nombre,Codigo,Descripcion,Precio,PorcentajeDeGananciaSobreElPrecioParaMi,SubidorDeImagen")] Producto producto)
        {
            if (ModelState.IsValid)
            {
                nuevoProducto = producto;
                guardarImagenEnCarpetaImagenesDentroDeContent();
                nuevoProducto.URLImagen = rutaCompletaAImagenDelProducto;
                db.Productos.Add(producto);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(producto);
        }

        private void guardarImagenEnCarpetaImagenesDentroDeContent()
        {
            var caminoHaciaCarpetaDeImagenes = "/Content/Images/";
            var nombreImagen = nuevoProducto.ObtenerNombreDeImagenDelProductoEnBaseASuCodigoConLaExtensionDeLaImagen();
            rutaCompletaAImagenDelProducto = caminoHaciaCarpetaDeImagenes + nombreImagen;
            string mapPath = Server.MapPath(rutaCompletaAImagenDelProducto);
            nuevoProducto.GuardarImagenEnRuta(mapPath);
        }

        // GET: Productos/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Producto producto = db.Productos.Find(id);
            if (producto == null)
            {
                return HttpNotFound();
            }
            return View(producto);
        }

        // POST: Productos/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Nombre,Codigo,Descripcion,Precio,PorcentajeDeGananciaSobreElPrecioParaMi,SubidorDeImagen")] Producto producto)
        {
            if (ModelState.IsValid)
            {
                nuevoProducto = producto;
                guardarImagenEnCarpetaImagenesDentroDeContent();
                nuevoProducto.URLImagen = rutaCompletaAImagenDelProducto;
                db.Entry(producto).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(producto);
        }
        
        // GET: Productos/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Producto producto = db.Productos.Find(id);
            if (producto == null)
            {
                return HttpNotFound();
            }
            return View(producto);
        }

        // POST: Productos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Producto producto = db.Productos.Find(id);
            db.Productos.Remove(producto);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
