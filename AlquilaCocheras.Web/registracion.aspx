<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Anonimo.Master" AutoEventWireup="true" CodeBehind="registracion.aspx.cs" Inherits="AlquilaCocheras.Web.registracion" %>

<%@ Register src="userControls/ucPerfil.ascx" tagname="ucPerfil" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
    <uc1:ucPerfil ID="ucPerfil1" runat="server" />
    <br />
    <asp:Button ID="btnRegistrarUsuario" runat="server" Text="Registrar usuario" ClientIDMode="Static" OnClick="btnRegistrarUsuario_Click" />
</asp:Content>
