<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Proizvodi.aspx.cs" Inherits="AV4.Proizvodi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="chosenTitle" runat="server" Text="Title"></asp:Label>
    <asp:ListBox ID="productName" runat="server" AutoPostBack="true" OnSelectedIndexChanged="productName_SelectedIndexChanged"></asp:ListBox>
    <asp:ListBox ID="productPrice" runat="server"></asp:ListBox>
    <br />
    <hr />
    <asp:Button ID="addBtn" runat="server" Text="Add" OnClick="addBtn_Click" />
    <br />
    <hr />
    <asp:LinkButton ID="backBtn" runat="server" OnClick="backBtn_Click">Catalog</asp:LinkButton>
    <asp:ListBox ID="cartBox" runat="server"></asp:ListBox>
    <br />
    Number of changes:<asp:Label ID="totalPrice" runat="server" Text="0"></asp:Label>
    <br />
    <hr />
    <asp:Button ID="buyBtn" runat="server" Text="Buy" OnClick="buyBtn_Click" />
</asp:Content>
