<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="LAB.Najava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                Ime<asp:TextBox ID="ime" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="imeVAl" runat="server" ErrorMessage="Vnesi ime" ControlToValidate="ime"></asp:RequiredFieldValidator>
            </div>
            <div>
                Lozinka<asp:TextBox ID="lozinka" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lozinkaVal" runat="server" ErrorMessage="Vnesi lozinka" ControlToValidate="lozinka"></asp:RequiredFieldValidator>
            </div>
            <div>
                Email<asp:TextBox ID="email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="emailVal" runat="server" ErrorMessage="Vnesi email" ControlToValidate="email"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regexVal" runat="server" ErrorMessage="Nevaliden email" 
                    ControlToValidate="email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
        </div>
        <asp:Button ID="najavaKopce" runat="server" Text="najavi se" OnClick="najavaKopce_Click" />
    </form>
</body>
</html>
