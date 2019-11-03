<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="WebApplication5.Detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript">
        function Val() {
            var Storemsg = "";
            Storemsg += CheckFirstName();
            Storemsg += CheckFirstName();
            if (Storemsg !== "") {


            }
            {

            }

        }

    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        FirstName:
                    </td>
                    <td>
                        <asp:TextBox ID="txt_fname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        LastName:
                    </td>
                    <td>
                        <asp:TextBox ID="txt_lname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Salary:
                    </td>
                    <td>
                        <asp:TextBox ID="salary" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                   
                   <td>
                       <asp:Button ID="btn_Insert" runat="server" Text="Insert" OnClientClick="return Val()" OnClick="btn_Insert_Click" />
                    </td>
                </tr>


            </table>


        </div>
        <div>
            <asp:GridView ID="GridView" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
