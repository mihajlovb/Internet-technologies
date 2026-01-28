<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Glasaj.aspx.cs" Inherits="LAB.Glasaj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="profesor" runat="server" Text=""></asp:Label>
        <div>
            <asp:ListBox ID="lbPredmeti" runat="server" OnSelectedIndexChanged="lbPredmeti_SelectedIndexChanged" AutoPostBack="true"></asp:ListBox>
            <asp:ListBox ID="lbOcenki" runat="server"></asp:ListBox>
        </div>
        <asp:Button ID="glasajKopce" runat="server" Text="glasaj" OnClick="glasajKopce_Click" /><br />
        Glasavte: <asp:Label ID="glassjLabela" runat="server" Text=""></asp:Label>
        <hr />
        <div>
            Predmet <asp:TextBox ID="predmetInput" runat="server"></asp:TextBox>
        </div>
        <div>
            Ocenka <asp:TextBox ID="ocenkaInput" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="dodadiKopce" runat="server" Text="dodadi" OnClick="dodadiKopce_Click" />
        <asp:Button ID="izbrisiKopce" runat="server" Text="izbrisi" OnClick="izbrisiKopce_Click" />
    </form>
</body>
</html>
