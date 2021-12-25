using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Drawing;

namespace Dominio
{
    [Table("Productos")]
    public class Producto
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "El Nombre es obligatorio.")]
        public string Nombre { get; set; }

        [DisplayName("Código")]
        [Required(ErrorMessage = "El Código es obligatorio.")]
        public string Codigo { get; set; }

        [DisplayName("Descripción")]
        [DataType(DataType.MultilineText)]
        public string Descripcion { get; set; }

        [DisplayName("Precio ($u)")]
        [Required(ErrorMessage = "El Precio es obligatorio (Número perteneciente a los Reales).")]
        public int Precio { get; set; }

        [DisplayName("Porcentaje sobre el precio para Alvaro")]
        [Required(ErrorMessage = "El porcentaje de ganancia de Alvaro es obligatorio!!! (: (Número perteneciente a los Reales).")]
        [Range(5, 20, ErrorMessage = "Rango válido: 5% - 20%")]
        public int PorcentajeDeGananciaSobreElPrecioParaMi { get; set; }

        [DisplayName("Imagen")]
        [NotMapped]
        [Required(ErrorMessage = "La imagen es obligatoria.")]
        [ValidarImagenDeProducto(ErrorMessage = "El archivo seleccionado no es una imagen.")]
        public HttpPostedFileBase SubidorDeImagen { get; set; }

        [DisplayName("Imagen")]
        public string URLImagen { get; set; }

        public string ObtenerNombreDeImagenDelProductoEnBaseASuCodigoConLaExtensionDeLaImagen()
        {
            string tipoDeImagen = SubidorDeImagen.ContentType;
            string[] extensionDeImagenEnArray = tipoDeImagen.Split('/');
            string extensionDeImagen = extensionDeImagenEnArray[1];
            string nombreFinal = Codigo + "." + extensionDeImagen;
            return nombreFinal;
        }

        public void GuardarImagenEnRuta(string ruta)
        {
            Image imagen = Image.FromStream(SubidorDeImagen.InputStream, true, true);
            int ancho = VariablesGlobales.AnchoPorDefectoParaImagenes;
            int altura = VariablesGlobales.AlturaPorDefectoParaImagenes;
            Bitmap mapaDeBitsDeLaImagenParaCambiarleTamaño = new Bitmap(imagen, new Size(ancho, altura));
            mapaDeBitsDeLaImagenParaCambiarleTamaño.Save(ruta);
        }
    }
}
