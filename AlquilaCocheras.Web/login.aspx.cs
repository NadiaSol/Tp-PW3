using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlquilaCocheras.Web
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                        
        }

        protected void btnLogin_Click(object sender, EventArgs e)

        {

            string mail = txtEmail.Text; //leemos el contenido de cada control edit
            string contraseña = txtContrasenia.Text;

            if (mail == "cliente@gmail.com" && contraseña == "Password1")
            {
                Session["cliente"] = true;

                Response.Redirect("/clientes/reservas.aspx", true);
            }
            else
            {
                lblResultado.Text = "Datos incorrectos. Intentenlo de nuevo por favor.";
            }

            if (mail == "propietario@gmail.com" && contraseña == "Password1")
            {

                Session["propietario"] = true;
                Response.Redirect("/propietarios/reservas.aspx", true);

            }

            else
            {
                lblResultado.Text = "Datos incorrectos. Intentenlo de nuevo por favor.";
            }

        }
  
    }
}