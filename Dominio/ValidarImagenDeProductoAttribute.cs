using System.ComponentModel.DataAnnotations;
using System.Drawing;
using System.Linq;
using System.Web;

namespace Dominio
{
    public class ValidarImagenDeProductoAttribute : RequiredAttribute
    {
        public override bool IsValid(object value)
        {
            HttpPostedFileBase imagenSiendoSubida = value as HttpPostedFileBase;
            string tipoDeContenido = imagenSiendoSubida.ContentType;
            return tipoDeContenido.Contains("image");
        }
    }
}
