using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Tundra2.Startup))]
namespace Tundra2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
