using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Distribuidora_Saturno.Startup))]
namespace Distribuidora_Saturno
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
