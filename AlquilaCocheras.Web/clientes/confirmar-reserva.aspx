<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Clientes.Master" AutoEventWireup="true" CodeBehind="confirmar-reserva.aspx.cs" Inherits="AlquilaCocheras.Web.clientes.confirmar_reserva" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">

    <asp:Label ID="label2" runat="server" Text="Fecha Inicio: "></asp:Label>
    <asp:TextBox ID="txtFechaInicio" runat="server" ClientIDMode="Static"></asp:TextBox>
     <asp:CompareValidator ControlToValidate="txtFechaInicio" Display="Dynamic" Text="Fecha incorrecta (dd/mm/yyy)" Operator="DataTypeCheck" Type="Date" Runat="Server" /> <br>
    <asp:Label ID="label4" runat="server" Text="Fecha Fin: "></asp:Label>
    <asp:TextBox ID="txtFechaFin" runat="server" ClientIDMode="Static"></asp:TextBox>
     <asp:CompareValidator ControlToValidate="txtFechaFin" Display="Dynamic" Text="Fecha incorrecta (dd/mm/yyy)" Operator="DataTypeCheck" Type="Date" Runat="Server" /> <br>

    <asp:Label ID="label3" runat="server" Text="Hora de Entrada: "></asp:Label>
        <asp:DropDownList ID="HoraInicial" runat="server">
        <asp:ListItem>-----</asp:ListItem>
        <asp:ListItem>9:00</asp:ListItem>
        <asp:ListItem>9:30</asp:ListItem>
        <asp:ListItem>10:00</asp:ListItem>
        <asp:ListItem>10:30</asp:ListItem>
        <asp:ListItem>11:00</asp:ListItem>
        <asp:ListItem>11:30</asp:ListItem>
        <asp:ListItem>12:00</asp:ListItem>
        <asp:ListItem>12:30</asp:ListItem>
        <asp:ListItem>13:00</asp:ListItem>
        <asp:ListItem>13:30</asp:ListItem>
        <asp:ListItem>14:00</asp:ListItem>
        <asp:ListItem>14:30</asp:ListItem>
        <asp:ListItem>15:00</asp:ListItem>
        <asp:ListItem>15:30</asp:ListItem>
        <asp:ListItem>16:00</asp:ListItem>
        <asp:ListItem>16:30</asp:ListItem>
        <asp:ListItem>17:00</asp:ListItem>
        <asp:ListItem>17:30</asp:ListItem>
        <asp:ListItem>18:00</asp:ListItem>
        <asp:ListItem>18:30</asp:ListItem>
        <asp:ListItem>19:00</asp:ListItem>
        <asp:ListItem>19:30</asp:ListItem>
        <asp:ListItem>20:00</asp:ListItem>
        <asp:ListItem>20:30</asp:ListItem>
    </asp:DropDownList>

    <asp:RequiredFieldValidator id="horainicio" ControlToValidate="HoraInicial" ErrorMessage="Seleccione Hora" Display="Static" InitialValue="-----" runat="server"/>
    <asp:Label ID="label1" runat="server" Text="Hora de Salida: "></asp:Label>
    <asp:DropDownList ID="HoraFinal" runat="server">
        <asp:ListItem>-----</asp:ListItem>
        <asp:ListItem>9:00</asp:ListItem>
        <asp:ListItem>9:30</asp:ListItem>
        <asp:ListItem>10:00</asp:ListItem>
        <asp:ListItem>10:30</asp:ListItem>
        <asp:ListItem>11:00</asp:ListItem>
        <asp:ListItem>11:30</asp:ListItem>
        <asp:ListItem>12:00</asp:ListItem>
        <asp:ListItem>12:30</asp:ListItem>
        <asp:ListItem>13:00</asp:ListItem>
        <asp:ListItem>13:30</asp:ListItem>
        <asp:ListItem>14:00</asp:ListItem>
        <asp:ListItem>14:30</asp:ListItem>
        <asp:ListItem>15:00</asp:ListItem>
        <asp:ListItem>15:30</asp:ListItem>
        <asp:ListItem>16:00</asp:ListItem>
        <asp:ListItem>16:30</asp:ListItem>
        <asp:ListItem>17:00</asp:ListItem>
        <asp:ListItem>17:30</asp:ListItem>
        <asp:ListItem>18:00</asp:ListItem>
        <asp:ListItem>18:30</asp:ListItem>
        <asp:ListItem>19:00</asp:ListItem>
        <asp:ListItem>19:30</asp:ListItem>
        <asp:ListItem>20:00</asp:ListItem>
        <asp:ListItem>20:30</asp:ListItem>
    </asp:DropDownList>

    <asp:RequiredFieldValidator id="horadefin" ControlToValidate="HoraFinal" ErrorMessage="Seleccione Hora" Display="Static" InitialValue="-----" runat="server"/><br>
      

    <asp:Label ID="lblUbicacion" ClientIDMode="Static" runat="server"></asp:Label><br>
    <asp:Image ID="imgFoto" ClientIDMode="Static" runat="server" /><br>
    <asp:Label ID="lblPrecioHora" ClientIDMode="Static" runat="server"></asp:Label><br>
    <asp:Label ID="lblPrecioTotal" ClientIDMode="Static" runat="server"></asp:Label><br>

    <asp:Label ID="lblResultado" runat="server"></asp:Label><br>
    <asp:Button ID="btnConfirmar" runat="server" Text="Confirmar Reserva" ClientIDMode="Static"/> <br>  
    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" ClientIDMode="Static" />
</asp:Content>
