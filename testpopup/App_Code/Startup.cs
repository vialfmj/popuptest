using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(testpopup.Startup))]
namespace testpopup
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
