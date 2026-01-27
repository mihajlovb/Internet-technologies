<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Proizvodi.aspx.cs" Inherits="zadPrvKolokvium.Proizvodi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="container">
        <div>Naslov: <asp:Label ID="naslov" runat="server" Text=""></asp:Label></div>
        <div>
            Cenata na selektiraniot proizvod e: <asp:Label ID="cena" runat="server" Text=""></asp:Label><br />
            <asp:ListBox ID="lbProizvodi" runat="server" OnSelectedIndexChanged="lbProizvodi_SelectedIndexChanged" AutoPostBack="true" SelectionMode="Multiple"></asp:ListBox><br />
            <asp:Button ID="dodadiKopce" runat="server" Text="Dodadi" OnClick="dodadiKopce_Click" />
        </div>
        <hr />
        <asp:ListBox ID="lbKosnicka" runat="server" AutoPostBack="true" SelectionMode="Multiple" ></asp:ListBox>
        <hr />
        <asp:Button ID="kupiKopce" runat="server" Text="Kupi" OnClick="kupiKopce_Click" />

    </div>
</asp:Content>
