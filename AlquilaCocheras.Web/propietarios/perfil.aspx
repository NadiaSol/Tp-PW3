<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Propietarios.Master" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="AlquilaCocheras.Web.propietarios.perfil" %>
<%@ Register src="../userControls/ucPerfil.ascx" tagname="ucPerfil" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
    <uc1:ucPerfil ID="ucPerfil1" runat="server" />
    <br />
    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar perfil" ClientIDMode="Static" OnClick="btnActualizar_Click" />
    <br />
    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" ClientIDMode="Static" />
</asp:Content>
