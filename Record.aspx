<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Record.aspx.cs" Inherits="WebApplication5.Record" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript">
        function Validation() {
            var StoreMessage = "";
          var  StoreMessage1 = CheckName();

           

            var StoreMessage2 = CheckSalary();

            

          

            if (StoreMessage1 !== "" && StoreMessage2 !== "") {
                alert(StoreMessage1 + " \n " + StoreMessage2);
                return false;

            }
            else if (StoreMessage1!== "") {
                alert(StoreMessage1);
                return false;
            }
            else if (StoreMessage2!== "") {
                alert(StoreMessage2);
                return false;
            }
        }

        function CheckName() {
            var TN = document.getElementById("textname");
            if (TN.value == "") {
                return " Enter your Name";
            }
            else {
                return "";
            }

        }

        function CheckSalary() {

            var TS = document.getElementById("textsalary");
            if (TS.value == "") {
                return "Enter your salary";
            }
            else {
                return "";
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
                    <td>Name:
                    </td>
                    <td>
                        <asp:TextBox ID="textname" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>Salary:
                    </td>
                    <td>
                        <asp:TextBox ID="textsalary" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Button ID="button" runat="server" Text="Insert" OnClientClick="return Validation()" OnClick="button_Click" />
                    </td>
                </tr>

            </table>
        </div>
        <div>
            <asp:GridView ID="gv" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
