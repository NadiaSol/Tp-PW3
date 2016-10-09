<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucBuscadorCocheras.ascx.cs" Inherits="AlquilaCocheras.Web.userControls.ucBuscadorCocheras" %>
<pages enableEventValidation="false"/> 
<%--Inicio User Control--%>
<form>
    <div class="form-group">
        <asp:Label ID="label1" runat="server" Text="Ubicación: "></asp:Label>
        <asp:TextBox class="form-control" ID="txtUbicacion" runat="server" ClientIDMode="Static"></asp:TextBox>
        <asp:RegularExpressionValidator ForeColor="Red" ControlToValidate="txtUbicacion"
            ID="ValidaUbicacion" runat="server" ValidationExpression="^[A-Za-zñÑ]*$"
            ErrorMessage="Ingrese caracteres alfanuméricos" ValidationGroup="BuscarCocheras"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="CampoRequeridoUbicacion" runat="server"
            ErrorMessage="Campo Requerido" ControlToValidate="txtUbicacion"
            ValidationGroup="BuscarCocheras"
            ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div class="form-inline">

        <asp:Label ID="label2" runat="server" Text="Período Disponible: "></asp:Label>
        <asp:TextBox class="form-control" ID="txtFechaInicio" runat="server" ClientIDMode="Static"></asp:TextBox>

        <asp:TextBox class="form-control" ID="txtFechaFin" runat="server" ClientIDMode="Static"></asp:TextBox>
        <asp:CompareValidator ForeColor="Red" ControlToValidate="txtFechaFin" ControlToCompare="txtFechaInicio"
            ID="comparaFechas" runat="server" Operator="GreaterThanEqual" Type="Date"
            ErrorMessage="La fecha final no puede ser anterior a la inicial"
            ValidationGroup="BuscarCocheras"></asp:CompareValidator>

        <asp:Button  class="btn btn-primary" ValidationGroup="BuscarCocheras" ID="btnFiltrar" runat="server" Text="Buscar" ClientIDMode="Static" OnClick="btnFiltrar_Click" />
    </div>
</form>
<%--si no se encuentran resultados mostrar mensaje "No se encontraron resultados"--%>
<asp:Label class="bg-danger" ID="lblResultado" runat="server" Visible="False" >No se encontraron resultados</asp:Label>
<%--Fin User Control--%>