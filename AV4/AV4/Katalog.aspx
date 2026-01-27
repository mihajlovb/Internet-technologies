<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Katalog.aspx.cs" Inherits="AV4.Katalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p class="text-center">Catalog</p>
    <div class="text-center">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Collection Catalog</asp:LinkButton><br />
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Music Catalog</asp:LinkButton><br />
        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Font Catalog</asp:LinkButton><br />
    </div>
</asp:Content>
