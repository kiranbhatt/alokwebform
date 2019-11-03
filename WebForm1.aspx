<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:TextBox ID="Textname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>Age:</td>
                    <td>
                        <asp:TextBox ID="Textage" runat="server"></asp:TextBox>
                    </td>
                </tr>
 <tr>
                    <td>City:</td>
                    <td>
                        <asp:TextBox ID="Textcity" runat="server"></asp:TextBox>
                    </td>
                </tr>
 <tr>
                    <td>Class:</td>
                    <td>
                        <asp:TextBox ID="Textclass" runat="server"></asp:TextBox>
                    </td>
                </tr>

<tr>
                    
                    <td>
                      <asp:Button ID="Textbutton" Text="Insert" runat="server" onclick="Textbutton_Click" />
                    </td>
                </tr>
                <tr>
                    
                    <td>
                     <asp:GridView ID="gv" runat="server"></asp:GridView>
                    </td>
                </tr>
             
            </table>
           
        </div>
    </form>
  
</body>
</html>
