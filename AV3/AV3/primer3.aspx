<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="primer3.aspx.cs" Inherits="AV3.primer3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="container">
        <div class="form">
            Name:
            <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="nameVal" runat="server" ErrorMessage="Insert name" ControlToValidate="name"></asp:RequiredFieldValidator>
            <%--Nema da raboti bidejkji Button e vo ValidationGroup koj gi ignorira site drugi validatori osven tie vo negovata grupa--%>
        </div>
        <div class="form">
            Grade:
            <asp:TextBox ID="grade" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="gradeVal" runat="server" ErrorMessage="Insert grade"
                ControlToValidate="grade"
                ValidationGroup="group1"
                Display="None"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="gradeRange" runat="server" ErrorMessage="Range 5-10"
                ControlToValidate="grade"
                ValidationGroup="group1"
                MaximumValue="10"
                MinimumValue="5"
                Type="Integer" Display="None"></asp:RangeValidator>
        </div>
        <div class="form">
            Date:
            <asp:TextBox ID="date" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="dateVal" runat="server" ErrorMessage="Insert date"
                ControlToValidate="date"
                ValidationGroup="group1"
                Display="None"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="compareDate" runat="server" ErrorMessage="Invalid date"
                ValidationGroup="group1"
                ControlToValidate="date"
                ValueToCompare="2026-01-27"
                Operator="LessThanEqual" Type="Date" Display="None"></asp:CompareValidator>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Insert" ValidationGroup="group1" OnClick="Button1_Click" /><br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <div class="text-bg-danger">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="group1" />
        </div>
    </div>
</asp:Content>
