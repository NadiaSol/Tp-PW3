using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlquilaCocheras.Web.userControls
{
    public partial class ucPerfil : System.Web.UI.UserControl
    {
        public TextBox TextoNombre
        {
            get { return txtNombre; }
            set { txtNombre = TextoNombre; }
        }
        public TextBox TextoApellido
        {
            get { return txtApellido; }
            set { txtApellido = TextoApellido; }
        }
        public TextBox TextoPass1
        {
            get { return txtContrasenia; }
            set { txtContrasenia = TextoPass1; }
        }
        public TextBox TextoPass2
        {
            get { return txtConfContrasenia; }
            set { txtConfContrasenia = TextoPass2; }
        }
        public TextBox TextoMail
        {
            get { return txtEmail; }
            set { txtEmail = TextoMail; }
        }
        public RadioButtonList RadioTipo
        {
            get { return rblPerfil; }
            set { rblPerfil = RadioTipo; }
        }
        public Label TextoLabel
        {
            get { return lblResultado; }
            set { lblResultado = TextoLabel; }
        }
        public TextBoxprotected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}