<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucPerfil.ascx.cs" Inherits="AlquilaCocheras.Web.userControls.ucPerfil" %>
<asp:Label ID="label1" runat="server" Text="Nombre: "></asp:Label>
    <asp:TextBox ID="txtNombre" runat="server" ClientIDMode="Static"></asp:TextBox>

    <asp:RequiredFieldValidator ID="validatorNombre" runat="server" ControlToValidate="txtNombre" Display="Dynamic" ErrorMessage="Campo Requerido!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <br />

    <asp:Label ID="label2" runat="server" Text="Apellido: "></asp:Label>
    <asp:TextBox ID="txtApellido" runat="server" ClientIDMode="Static"></asp:TextBox>

    <asp:RequiredFieldValidator ID="validatorApellido" runat="server" ControlToValidate="txtApellido" Display="Dynamic" ErrorMessage="Campo Requerido!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />

    <asp:Label ID="label3" runat="server" Text="Email: "></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" ClientIDMode="Static"></asp:TextBox>

   <asp:RequiredFieldValidator ID="validatorEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Campo Requerido!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />

    <asp:Label ID="label4" runat="server" Text="Contraseña: "></asp:Label>
    <asp:TextBox ID="txtContrasenia" runat="server" TextMode="Password" ClientIDMode="Static"></asp:TextBox>

    <asp:RequiredFieldValidator ID="validatorPass1" runat="server" ControlToValidate="txtContrasenia" Display="Dynamic" ErrorMessage="Campo Requerido!" ForeColor="Red"></asp:RequiredFieldValidator>
    &nbsp;TO DO: regex de contraseña&nbsp;<br />

    <asp:Label ID="label5" runat="server" Text="Confirme Contraseña: "></asp:Label>
    <asp:TextBox ID="txtConfContrasenia" runat="server" TextMode="Password" ClientIDMode="Static"></asp:TextBox>

    <asp:RequiredFieldValidator ID="validatorPass2" runat="server" ControlToValidate="txtConfContrasenia" Display="Dynamic" ErrorMessage="Campo Requerido!" ForeColor="Red"></asp:RequiredFieldValidator>

    &nbsp;<asp:CompareValidator ID="validatorPasswords" runat="server" ControlToCompare="txtContrasenia" ControlToValidate="txtConfContrasenia" ErrorMessage="Las Contraseñas NO coinciden!" ForeColor="Red"></asp:CompareValidator>
<br />
<br />
Tipo de Usuario:

    <asp:RadioButtonList ID="rblPerfil" runat="server" ClientIDMode="Static">
        <asp:ListItem Text="Cliente" Value="1" />
        <asp:ListItem Text="Propietario" Value="2" />
    </asp:RadioButtonList>

    <asp:RequiredFieldValidator ID="validatorCombo" runat="server" ControlToValidate="rblperfil" Display="Dynamic" ErrorMessage="Campo Requerido!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />

    <asp:Label ID="lblResultado" runat="server"></asp:Label>
    