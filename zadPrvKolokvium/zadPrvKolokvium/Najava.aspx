<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="zadPrvKolokvium.Najava" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="container">
        <div class="form">
            Ime<asp:TextBox ID="ime" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="imeVal" runat="server" ErrorMessage="Vnesete ime" ControlToValidate="ime"></asp:RequiredFieldValidator>
        </div>
        <div class="form">
            Lozinka<asp:TextBox ID="lozinka" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="lozinkaVal" runat="server" ErrorMessage="Vnesete lozinka" ControlToValidate="lozinka"></asp:RequiredFieldValidator>
        </div>
        <div class="form">
            Email<asp:TextBox ID="email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="emailVal" runat="server" ErrorMessage="Vnesi email" ControlToValidate="email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="emailFormatVal" runat="server" 
                ErrorMessage="Nevalidna email adresa" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="email"></asp:RegularExpressionValidator>
        </div>
        <asp:Button ID="najavaKopce" runat="server" Text="Najavete se" OnClick="najavaKopce_Click" />
    </div>
</asp:Content>
