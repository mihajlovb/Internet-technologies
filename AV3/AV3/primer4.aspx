<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="primer4.aspx.cs" Inherits="AV3.primer4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form">
        Phone number: <asp:TextBox ID="phnum" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="phnumVal" runat="server" ErrorMessage="Your phone number please!"
            ControlToValidate="phnum"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="phnumRegexVal" runat="server" 
            ErrorMessage="Invalid phone number"
            ControlToValidate="phnum" ValidationExpression="07[1567]\d{6}" CssClass="bg-danger"></asp:RegularExpressionValidator>
    </div>
    <asp:Button ID="validateBtn" runat="server" Text="Validate" OnClick="validateBtn_Click" />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</asp:Content>
