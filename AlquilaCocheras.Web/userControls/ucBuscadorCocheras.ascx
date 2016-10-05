<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucBuscadorCocheras.ascx.cs" Inherits="AlquilaCocheras.Web.userControls.ucBuscadorCocheras" %>

<%--Inicio User Control--%>
<form>
    <div class="form-group">
        <asp:Label ID="label1" runat="server" Text="Ubicación: "></asp:Label>
        <asp:TextBox ID="txtUbicacion" runat="server" ClientIDMode="Static"></asp:TextBox>
        <asp:RegularExpressionValidator ControlToValidate="txtUbicacion"
            ID="ValidaUbicacion" runat="server" ValidationExpression="^[A-Za-zñÑ0-9]*$"
            ErrorMessage="Ingrese caracteres alfanuméricos" ValidationGroup="BuscarCocheras"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="CampoRequeridoUbicacion" runat="server"
            ErrorMessage="Campo Requerido" ControlToValidate="txtUbicacion"
            ValidationGroup="BuscarCocheras"></asp:RequiredFieldValidator>
    </div>
    <div class="form-inline">

        <asp:Label ID="label2" runat="server" Text="Período Disponible: "></asp:Label>
        <asp:TextBox ID="txtFechaInicio" runat="server" ClientIDMode="Static"></asp:TextBox>

        <asp:TextBox ID="txtFechaFin" runat="server" ClientIDMode="Static"></asp:TextBox>
        <asp:CompareValidator ControlToValidate="txtFechaFin" ControlToCompare="txtFechaInicio"
            ID="comparaFechas" runat="server" Operator="GreaterThanEqual" Type="Date"
            ErrorMessage="La fecha final no puede ser anterior a la inicial"
            ValidationGroup="BuscarCocheras"></asp:CompareValidator>
    </div>
    <asp:Button ValidationGroup="BuscarCocheras" ID="btnFiltrar" runat="server" Text="Buscar" ClientIDMode="Static" />
</form>
<%--si no se encuentran resultados mostrar mensaje "No se encontraron resultados"--%>
<asp:Label ID="lblResultado" runat="server">No se encontraron resultados</asp:Label>
<%--Fin User Control--%>