using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(IndividualAssignment.Startup))]
namespace IndividualAssignment
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
