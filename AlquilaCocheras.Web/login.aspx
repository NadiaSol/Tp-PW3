<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Anonimo.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AlquilaCocheras.Web.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
    <div class="form-group">
        <asp:Label ID="label3" runat="server" Text="Email: "></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" class="form-control" ClientIDMode="Static"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Mail Inválido" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </div>
    <div class="form-group">

        <asp:Label ID="label2" runat="server" Text="Contraseña: "></asp:Label>
        <asp:TextBox ID="txtContrasenia" class="form-control" runat="server" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
    </div>
    <%--Si el usuario no existe o si no coinciden las credenciales, mostrar mensaje "Usuario y/o Contraseña inválidos"--%>
    <asp:Label ID="lblResultado"  runat="server"></asp:Label>
    <asp:Button class="btn btn-success btn-lg" ID="btnLogin" runat="server" Text="Ingresar" ClientIDMode="Static" OnClick="btnLogin_Click" />

    <a href="/registracion.aspx" class="btn btn-primary btn-lg active" role="button">Registrarse como nuevo usuario</a>
</asp:Content>
