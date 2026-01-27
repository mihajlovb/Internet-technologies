<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="primer1.aspx.cs" Inherits="AV2.primer1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="destinationDiv">
                <p>Избери дестинација: </p>
                <asp:ListBox ID="destinationsList" runat="server" SelectionMode="Multiple">
                    <asp:ListItem Value="100">Скопје</asp:ListItem>
                    <asp:ListItem Value="5">Кратово</asp:ListItem>
                    <asp:ListItem Value="55">Куманово</asp:ListItem>
                    <asp:ListItem Value="300">Охрид</asp:ListItem>
                </asp:ListBox>
                <br />
                <asp:Button ID="showBtn" runat="server" Text="Прикажи град" OnClick="showBtn_Click" />
                <br />
                <asp:Label ID="destinationLabel" runat="server" Text=""></asp:Label>

            </div>
        </div>
    </form>
</body>
</html>
