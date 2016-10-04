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
            if (txtEmail.Text == "cliente@gmail.com" && txtContrasenia.Text == "Password1")
            {
                Response.Redirect("/clientes/reservas.aspx", true);

            }
            else
            {
                lblResultado.Text = "Usuario o Contrasenia incorrecto";
            }

            if (txtEmail.Text == "propietario@gmail.com" && txtContrasenia.Text == "Password1")
            {
                Response.Redirect("/propietarios/reservas.aspx", true);

            }
            else
            {
                lblResultado.Text = "Usuario o Contrasenia incorrecto";
            }
        }
    }
}