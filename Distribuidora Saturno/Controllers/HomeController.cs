using AccesoDatos;
using System.Linq;
using System.Web.Mvc;

namespace Distribuidora_Saturno.Controllers
{
    public class HomeController : Controller
    {
        private Context db = new Context();

        public ActionResult Index()
        {
            var todosLosProductos = View(db.Productos.ToList());
            return todosLosProductos;
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Contact()
        {
            return View();
        }
    }
}