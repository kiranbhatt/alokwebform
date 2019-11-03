<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Useretail.aspx.cs" Inherits="WebApplication5.UserDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript">
        function validate() {

            var collect = "";
            



        }

        function name() {

            var name = document.getElementById("Name");
            if (name.value == "") { return "Please Enter your name"; }

        }
        else
        {
            return "";
        }
        function email() {

            var email = document.getElementById("Email");
            if (email.value == "") { return "Please Enter your email"; }

        }
        else
        {
            return "";
        }

        function Pass() {

            var pass = document.getElementById("Pass");
            if (pass.value == "") {
                return "Please Enter your password";
            }

        }
        else
        {
            return "";
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
                        name:
                    </td>
                    <td>
                        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Email:
                    </td>
                    <td>
                        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    
                    <td>
                        Password:
                    </td>
                    <td>
                        <asp:TextBox ID="Pass" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    
                    <td>
                        <asp:Button ID="btn" runat="server" text="insert" OnClick="btn_Click" />
                    </td>
                </tr>
            </table>
<asp:GridView ID="gv" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
