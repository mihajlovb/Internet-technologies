<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="primer2.aspx.cs" Inherits="AV3.primer2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="container">
        <asp:DropDownList ID="cities" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Choose city</asp:ListItem>
            <asp:ListItem>Kratovo</asp:ListItem>
            <asp:ListItem>Skopje</asp:ListItem>
            <asp:ListItem>Veles</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="citiesVal" runat="server" ErrorMessage="Pick something!!!" ControlToValidate="cities" InitialValue="Choose city" ></asp:RequiredFieldValidator>
        <div><asp:Button ID="chooseBtn" runat="server" Text="Choose" OnClick="chooseBtn_Click" /></div><br />
        <div>
            Chosen city: <asp:Label ID="chosenCity" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
