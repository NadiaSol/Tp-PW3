<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucBuscadorCocheras.ascx.cs" Inherits="AlquilaCocheras.Web.userControls.ucBuscadorCocheras" %>

<%--Inicio User Control--%>
<form class="form-horizontal">
    <div class="form-inline">
        <div class="form-group">
            <asp:Label class="col-sm-2 control-label" ID="label1" runat="server" Text="Ubicación: "></asp:Label>
            <asp:TextBox class="form-control" ID="txtUbicacion" runat="server" ClientIDMode="Static"></asp:TextBox>
            <br />
            <asp:RegularExpressionValidator ControlToValidate="txtUbicacion"
                ForeColor="Red" ID="ValidaUbicacion" runat="server"
                ValidationExpression="^[A-Za-zñÑ0-9]*$" ErrorMessage="Ingrese caracteres alfanuméricos"
                ValidationGroup="BuscarCocheras"></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="CampoRequeridoUbicacion" runat="server"
                ForeColor="Red" ErrorMessage="Campo Requerido" ControlToValidate="txtUbicacion"
                ValidationGroup="BuscarCocheras"></asp:RequiredFieldValidator>
            <br />
        </div>
    </div>
    <div class="form-inline">
        <div class="form-group">
            <asp:Label class="col-sm-2 control-label" ID="label2" runat="server" Text="Período Disponible: "></asp:Label>
            <asp:TextBox class="form-control" ID="txtFechaInicio" runat="server" ClientIDMode="Static"></asp:TextBox>
            <asp:TextBox class="form-control" ID="txtFechaFin" runat="server" ClientIDMode="Static"></asp:TextBox>
            <asp:CompareValidator ControlToValidate="txtFechaFin" ControlToCompare="txtFechaInicio"
                ID="comparaFechas" runat="server" Operator="GreaterThanEqual" Type="Date"
                ForeColor="Red" ErrorMessage="La fecha final no puede ser anterior a la inicial"
                ValidationGroup="BuscarCocheras"></asp:CompareValidator>
            <br />
        </div>
    </div>
    <asp:Button class="btn btn-primary" ValidationGroup="BuscarCocheras" ID="btnFiltrar" runat="server" Text="Buscar" ClientIDMode="Static" OnClick="btnFiltrar_Click" />
    <br />
</form>
<%--si no se encuentran resultados mostrar mensaje "No se encontraron resultados"--%>
<asp:Label ID="lblResultado" runat="server">No se encontraron resultados</asp:Label>
<%--Fin User Control--%>