<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Plakjanje.aspx.cs" Inherits="AV4.Plakjanje" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>Products in cart</p>
    <div>
    <asp:ListBox ID="cartItems" runat="server"></asp:ListBox>
    </div>
    Total: <asp:Label ID="total" runat="server" Text=""></asp:Label>den.

</asp:Content>
