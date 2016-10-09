using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlquilaCocheras.Web.MasterPages
{
    public partial class Propietarios : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["propietario"] == null) || ((bool)Session["propietario"] == false))

            {
                Response.Redirect("login.aspx");

            }
            else if((bool)Session["cliente"] == true)
            {
                Response.Redirect("clientes/reservas.aspx");
            }

        }
    }
}