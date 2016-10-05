<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Anonimo.Master" AutoEventWireup="true" CodeBehind="registracion.aspx.cs" Inherits="AlquilaCocheras.Web.registracion" %>

<%@ Register Src="~/userControls/ucPerfil.ascx" TagPrefix="uc1" TagName="ucPerfil" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
    <uc1:ucPerfil runat="server" ID="ucPerfil" />
    <br />
    <asp:Button class="btn btn-success" ID="btnRegistrarUsuario" runat="server" Text="Registrar usuario" ClientIDMode="Static" OnClick="btnRegistrarUsuario_Click" />
</asp:Content>
