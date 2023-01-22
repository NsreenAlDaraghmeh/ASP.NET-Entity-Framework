<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="task22._1._2023.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style4 {
            height: 24px;
        }
        .auto-style5 {
            width: 79%
        }
        .auto-style6 {
            width: 331px;
        }
        </style>
</head>
<body>
    <form class="container" id="form1" runat="server">
      <br /><br />
        <table  class="table table-striped w-50" style="display:inline-block; width:40%!important">
            <tr>
                <td class="auto-style4">⦁ Number of customers </td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>⦁ Avg of age </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Max Age </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            </div>
        <table class="table table-striped w-50">
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                    <asp:Button ID="Button2" runat="server" Text="Search By Id" OnClick="Button2_Click1" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Search By Name" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Create Customer" />
        <br />
        <asp:GridView ID="GridView1" class=" table table-striped" runat="server">
            <Columns>
                <asp:ImageField DataImageUrlField="Photo" HeaderText="photo">
                    <ControlStyle Width="50px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView2" class=" table table-striped" runat="server">
            <Columns>
                <asp:ImageField DataImageUrlField="Photo" HeaderText="photo">
                    <ControlStyle Width="50px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
