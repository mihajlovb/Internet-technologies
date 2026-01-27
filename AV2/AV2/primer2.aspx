<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="primer2.aspx.cs" Inherits="AV2.primer2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

</form>
    <body>
        <form id="form2" runat="server">
            <div>
                <div>
                    <p>Currencies List</p>
                    <hr /><br />
                    
                    Currency: <asp:TextBox ID="currInput" runat="server"></asp:TextBox><br />
                    Value: <asp:TextBox ID="valInput" runat="server"></asp:TextBox>
                    <asp:Button ID="insert" runat="server" Text="Insert" OnClick="insert_Click" />
                    <asp:Button ID="delete" runat="server" Text="Delete" OnClick="delete_Click" /><br />
                    Convert<asp:TextBox ID="convert" runat="server"></asp:TextBox><br /><hr />
                    <asp:RadioButtonList ID="listCurrencies" runat="server" OnSelectedIndexChanged="listCurrencies_SelectedIndexChanged" AutoPostBack="True"></asp:RadioButtonList>
                    Number of listed currencies:<asp:Label ID="currentState" runat="server" Text="0"></asp:Label>
                    Converted Value: <asp:Label ID="status" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </form>
    </body>

</html>
