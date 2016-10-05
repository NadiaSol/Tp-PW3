<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Propietarios.Master" AutoEventWireup="true" CodeBehind="reservas.aspx.cs" Inherits="AlquilaCocheras.Web.propietarios.reservas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
    <p id="pickerReservas">
    <asp:Label ID="label1" runat="server" Text="Período Disponible: "></asp:Label>
    <asp:TextBox ID="txtFechaInicio" CssClass="date start" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:TextBox ID="txtFechaFin" CssClass="date end" runat="server" ClientIDMode="Static"></asp:TextBox>
    </p>
    <p id="pickerReservasStatus"></p>

    <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" ClientIDMode="Static"/>

    <asp:Table ID="Table1" 
            runat="server" 
            CellPadding="5"
            CellSpacing="5" BorderColor="Black" BorderStyle="Solid" GridLines="Both"
            BorderWidth="1" ViewStateMode="Inherit">
            <asp:TableHeaderRow 
                runat="server" 
                BorderStyle="Solid" BorderColor="Black" BorderWidth="1">
                <asp:TableHeaderCell>Fecha de Inicio</asp:TableHeaderCell>
                <asp:TableHeaderCell>Fecha de Fin</asp:TableHeaderCell>
                <asp:TableHeaderCell>Ubicacion de Cochera</asp:TableHeaderCell>
                <asp:TableHeaderCell>Cantidad de Horas</asp:TableHeaderCell>
                <asp:TableHeaderCell>Usuario que Reservó</asp:TableHeaderCell>
                <asp:TableHeaderCell>Puntuacion de la cochera</asp:TableHeaderCell>
                <asp:TableHeaderCell>Total Cobrado</asp:TableHeaderCell>

            </asp:TableHeaderRow>
            <asp:TableRow 
                ID="TableRow1" 
                runat="server" 
                >
                <asp:TableCell>05/10/2016</asp:TableCell>
                <asp:TableCell>05/10/2016</asp:TableCell>
                <asp:TableCell>Palermo</asp:TableCell>
                <asp:TableCell>4</asp:TableCell>
                <asp:TableCell>Paola</asp:TableCell>
                <asp:TableCell>5</asp:TableCell>
                <asp:TableCell>$400</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow 
                ID="TableRow2" 
                runat="server" 
                >
                <asp:TableCell>05/10/2016</asp:TableCell>
                <asp:TableCell>05/10/2016</asp:TableCell>
                <asp:TableCell>Retiro</asp:TableCell>
                <asp:TableCell>6</asp:TableCell>
                <asp:TableCell>Laura</asp:TableCell>
                <asp:TableCell>3</asp:TableCell>
                <asp:TableCell>$200</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow 
                ID="TableRow3" 
                runat="server" 
                >
                <asp:TableCell>05/10/2016</asp:TableCell>
                <asp:TableCell>05/10/2016</asp:TableCell>
                <asp:TableCell>Recoleta</asp:TableCell>
                <asp:TableCell>11</asp:TableCell>
                <asp:TableCell>John</asp:TableCell>
                <asp:TableCell>2</asp:TableCell>
                <asp:TableCell>$800</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow 
                ID="TableRow4" 
                runat="server" 
                >
                <asp:TableCell>05/10/2016</asp:TableCell>
                <asp:TableCell>05/10/2016</asp:TableCell>
                <asp:TableCell>Palermo</asp:TableCell>
                <asp:TableCell>11</asp:TableCell>
                <asp:TableCell>Patricio</asp:TableCell>
                <asp:TableCell>3</asp:TableCell>
                <asp:TableCell>$600</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow 
                ID="TableRow5" 
                runat="server" 
                BackColor="Orange">
                <asp:TableCell>05/10/2016</asp:TableCell>
                <asp:TableCell>05/10/2016</asp:TableCell>
                <asp:TableCell>La Boca</asp:TableCell>
                <asp:TableCell>9,5</asp:TableCell>
                <asp:TableCell>María</asp:TableCell>
                <asp:TableCell>N/A</asp:TableCell>
                <asp:TableCell>$800</asp:TableCell>
            </asp:TableRow>
            <asp:TableFooterRow 
                runat="server" 
                >
                <asp:TableCell 
                    ColumnSpan="7" 
                    HorizontalAlign="Right"
                    Font-Italic="true"
                    BorderStyle="Solid" BorderColor="Black">
                    Fin de los resultados
                </asp:TableCell>
            </asp:TableFooterRow>
        </asp:Table>  

</asp:Content>
