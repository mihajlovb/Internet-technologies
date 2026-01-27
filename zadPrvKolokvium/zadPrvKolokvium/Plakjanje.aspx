<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Plakjanje.aspx.cs" Inherits="zadPrvKolokvium.Plakjanje" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>PROIZVODI VO KOSNICKA</h1>
    <div>
        <asp:ListBox ID="proizvodiZaPlakjanje" runat="server" SelectionMode="Multiple"></asp:ListBox><br />
        Vkupna cena: <asp:Label ID="vkupnaCena" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
