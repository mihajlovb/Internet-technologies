<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AV2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Internet Technologies</h1>
    </div>
    <div class="row">
        <div class="col-md">
            Izberete grad:
            <br />
            <asp:ListBox ID="ListaGradovi" runat="server"></asp:ListBox>
        </div>
    </div>

</asp:Content>
