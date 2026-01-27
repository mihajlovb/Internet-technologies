<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="primer1.aspx.cs" Inherits="AV3.primer1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="formsContainer">
        <div>
            Внеси е-маил:
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="emailVal" runat="server" ErrorMessage="Внеси е-маил адреса" ControlToValidate="email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="emailRegexVal" runat="server" ErrorMessage="Невалиден е-маил"
                ValidationExpression="\S+@\w+\.\w+"
                ControlToValidate="email">
            </asp:RegularExpressionValidator>
        </div>
        <div>
            Внеси лозинка:
            <asp:TextBox ID="password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="passVal" runat="server" ErrorMessage="Внеси лозинка"
                ControlToValidate="password">

            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="passRegexVal" runat="server" ErrorMessage="Невалидна лозинка"
                ControlToValidate="password"
                ValidationExpression=".{3,12}"></asp:RegularExpressionValidator>
        </div>
        <div>
            Потврди лозинка:
            <asp:TextBox ID="cpassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="cpassVal" runat="server" ErrorMessage="Потврди лозинка" ControlToValidate="cpassword">

            </asp:RequiredFieldValidator>
            <asp:CompareValidator ID="passCompareVal" runat="server" ErrorMessage="Невалидна лозинка"
                ControlToCompare="password"
                ControlToValidate="cpassword"></asp:CompareValidator>
        </div>
        <asp:Button ID="registerBtn" runat="server" Text="Регистрирај се" OnClick="registerBtn_Click" />
    </div>
    Welcome:
    <asp:Label ID="welcomeMessage" runat="server" Text=""></asp:Label>
</asp:Content>
