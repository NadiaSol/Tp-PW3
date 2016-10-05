<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Propietarios.Master" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="AlquilaCocheras.Web.propietarios.perfil" %>

<%@ Register Src="~/userControls/ucPerfil.ascx" TagPrefix="uc1" TagName="ucPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
    <uc1:ucPerfil runat="server" ID="ucPerfil" />
    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar perfil" ClientIDMode="Static" />
    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" ClientIDMode="Static" />
</asp:Content>
