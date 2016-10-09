<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Propietarios.Master" AutoEventWireup="true" CodeBehind="cocheras.aspx.cs" Inherits="AlquilaCocheras.Web.propietarios.cocheras" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
    <asp:Label ID="label1" runat="server" Text="Ubicación: "></asp:Label>
    <asp:TextBox ID="txtUbicacion" runat="server" ClientIDMode="Static"></asp:TextBox>

    <asp:RequiredFieldValidator ID="reqUbicacion" runat="server" ControlToValidate="txtUbicacion" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <p id="pickerCocheras">
    <asp:Label ID="label2" runat="server" Text="Período Disponible: "></asp:Label>
    &nbsp;<br />
    desde
    <asp:TextBox ID="txtFechaInicio" CssClass="date start" runat="server" ClientIDMode="Static" TextMode="Date"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqFecha1" runat="server" ControlToValidate="txtFechaInicio" ErrorMessage="Fecha Inicial Requerida" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    hasta
    <asp:TextBox ID="txtFechaFin" CssClass="date end" runat="server" ClientIDMode="Static" TextMode="Date"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqFecha2" runat="server" ControlToValidate="txtFechaFin" ErrorMessage="Fecha Final Requerida" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="label3" runat="server" Text="Horario Diario Disponible: "></asp:Label>
    &nbsp;<br />
    desde <asp:TextBox ID="txtHorarioInicio" CssClass="time start" runat="server" ClientIDMode="Static"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="reqHora1" runat="server" ControlToValidate="txtHorarioInicio" ErrorMessage="Hora Inicial Requerida" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    hasta
    <asp:TextBox ID="txtHorarioFin" CssClass="time end" runat="server" ClientIDMode="Static"></asp:TextBox>

    <asp:RequiredFieldValidator ID="reqHora2" runat="server" ControlToValidate="txtHorarioFin" ErrorMessage="Hora Final Requerida" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p id="pickerCocherasStatus"></p>
    <asp:Label ID="label4" runat="server" Text="Descripción: "></asp:Label>
    <asp:TextBox ID="txtDescripcion" runat="server" ClientIDMode="Static"></asp:TextBox>

    <asp:RequiredFieldValidator ID="reqDescripcion" runat="server" ControlToValidate="txtDescripcion" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />

    <asp:Label ID="label5" runat="server" Text="Latitud: "></asp:Label>
    <asp:TextBox ID="txtLatitud" runat="server" ClientIDMode="Static"></asp:TextBox>

    <asp:RequiredFieldValidator ID="reqLat" runat="server" ControlToValidate="txtLatitud" ErrorMessage="Coordenada Latitud Requerida" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="valLatDecimal" runat="server" ControlToValidate="txtLatitud" ErrorMessage="Solo Formato Decimal" ForeColor="Red" ValidationExpression="^\d+\,[0-9]{2}$"></asp:RegularExpressionValidator>
    <br />

    <asp:Label ID="label6" runat="server" Text="Longitud: "></asp:Label>
    <asp:TextBox ID="txtLongitud" runat="server" ClientIDMode="Static"></asp:TextBox>

    <asp:RequiredFieldValidator ID="reqLong" runat="server" ControlToValidate="txtLongitud" ErrorMessage="Coordenada Longitud Requerida" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="valLongDecimal" runat="server" ControlToValidate="txtLongitud" ErrorMessage="Solo formato decimal" ForeColor="Red" ValidationExpression="^\d+\,[0-9]{2}$"></asp:RegularExpressionValidator>
    <br />

    <asp:Label ID="label7" runat="server" Text="Metros Cuadrados: "></asp:Label>
    <asp:TextBox ID="txtMetrosCuadrados" runat="server" ClientIDMode="Static"></asp:TextBox>

    <asp:RequiredFieldValidator ID="reqMetros" runat="server" ControlToValidate="txtMetrosCuadrados" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="valEntero" runat="server" ControlToValidate="txtMetrosCuadrados" ErrorMessage="Solo formato entero" ForeColor="Red" ValidationExpression="^[1-9]\d*$"></asp:RegularExpressionValidator>
&nbsp;<asp:RangeValidator ID="valMetros" runat="server" ControlToValidate="txtMetrosCuadrados" ErrorMessage="No puede ser menor a 5 mt2" ForeColor="Red" type="Integer" MaximumValue="999999" MinimumValue="5"></asp:RangeValidator>
    <br />

    <asp:Label ID="label8" runat="server" Text="Tipo Vehículo: "></asp:Label>
    <asp:RequiredFieldValidator ID="reqVehiculo" runat="server" ControlToValidate="lbTipoVehiculo" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:ListBox ID="lbTipoVehiculo" runat="server" ClientIDMode="Static">
        <asp:ListItem Value="0">Seleccione:</asp:ListItem>
        <asp:ListItem Value="1">Auto</asp:ListItem>
        <asp:ListItem Value="2">Pickup</asp:ListItem>
        <asp:ListItem Value="3">Camion</asp:ListItem>
        <asp:ListItem Value="4">Moto</asp:ListItem>
    </asp:ListBox>

    <br />

    <asp:Label ID="label9" runat="server" Text="Precio por Hora: "></asp:Label>
    <asp:TextBox ID="txtPrecioHora" runat="server" ClientIDMode="Static" TextMode="Number"></asp:TextBox>

    <asp:RequiredFieldValidator ID="reqPrecio" runat="server" ControlToValidate="txtPrecioHora" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPrecioHora" ErrorMessage="Solo formato decimal" ForeColor="Red" ValidationExpression="^\d+\,[0-9]{2}$"></asp:RegularExpressionValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPrecioHora" ErrorMessage="Precio mayor a 0" ForeColor="Red" MaximumValue="999999999" MinimumValue="1" Type="Integer"></asp:RangeValidator>
    <br />

    <asp:Label ID="label10" runat="server" Text="Foto: "></asp:Label>
    <asp:RequiredFieldValidator ID="reqFoto" runat="server" ControlToValidate="fuFoto" Display="Dynamic" ErrorMessage="Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:FileUpload ID="fuFoto" runat="server" ClientIDMode="Static" />

    <br />

    <asp:Button ID="btnCrearCochera" runat="server" Text="Crear Cochera" ClientIDMode="Static" OnClick="btnCrearCochera_Click"/>   
&nbsp;<asp:Label ID="lblResultado" runat="server"></asp:Label>
    </asp:Content>