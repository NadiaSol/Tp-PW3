using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlquilaCocheras.Web.MasterPages
{
    public partial class Clientes : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["cliente"] == null) || ((bool)Session["cliente"] == false))

            {
                Response.Redirect("login.aspx");

            }
            else if ((bool)Session["propietario"] == true)
            {
                Response.Redirect("propietarios/reservas.aspx");
            }
        }
    }
}