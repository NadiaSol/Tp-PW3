<%@ Page Title="Index"  EnableEventValidation="false" Language="C#" MasterPageFile="~/MasterPages/Anonimo.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="AlquilaCocheras.Web._default" %>

<%@ Register Src="~/userControls/ucBuscadorCocheras.ascx" TagPrefix="uc1" TagName="ucBuscadorCocheras" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">

    <uc1:ucBuscadorCocheras runat="server" ID="ucBuscadorCocheras" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField HeaderText="Precio" />
            <asp:BoundField HeaderText="Propietario" />
            <asp:DynamicField HeaderText="Total" />
            <asp:ImageField HeaderImageUrl="~/imagenes/cocheras/cochera2.jpg">
            </asp:ImageField>

            <asp:HyperLinkField Text="Reservar" />
            <asp:TemplateField HeaderImageUrl="~/imagenes/cocheras/Customized Map.jpg" HeaderText="Mapa"></asp:TemplateField>
            <asp:BoundField HeaderText="Puntuacion" />

        </Columns>
    </asp:GridView>
    <%--    LISTADO  (gridview, repeater o datalist)
    Por cada disponibilidad se deberá mostrar la siguiente información:
    precio, 
    nombre y 
    apellido del propietario, 
    precio total por las horas que se desean reservar, 
    la foto, 
    el mapa del lugar donde está ubicado (utilizar la API de Google Maps) 
    la puntuación promedio        
    y el link a confirmar reserva que esta agregado abajo como asp:HyperLink, 
        donde deberán cambiarle dinamicamente el link y ponerle el idcochera correspondiente
    --%>
    <asp:HyperLink ID="aConfirmar"  class="btn btn-primary btn-lg active" runat="server" ClientIDMode="Static" NavigateUrl="/clientes/confirmar-reserva.aspx?idcochera=123">Reservar</asp:HyperLink>
</asp:Content>

