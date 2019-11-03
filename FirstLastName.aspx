<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstLastName.aspx.cs" Inherits="WebApplication5.FirstLastName" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/CustomJS/first.js"></script>
    
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>FirstName </td>
                    <td>
                        <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>LastName
                    </td>
                    <td>
                        <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Salary
                    </td>
                    <td>
                        <asp:TextBox ID="salary" runat="server"></asp:TextBox>
                    </td>
                </tr>


                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnInsert" runat="server" CssClass="bg-success" Text="Insert" OnClientClick="return Val()" OnClick="btnInsert_Click" />
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <asp:GridView ID="gv" AutoGenerateColumns="false" runat="server" OnRowCommand="gv_RowCommand"  HeaderStyle-CssClass="header" >
                            <Columns>
                                <asp:TemplateField HeaderText="FullName">
                                    <ItemTemplate>
                                        <%#Eval("FirstName") %> <%#Eval("LastName") %>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Salary">
                                    <ItemTemplate>
                                        <%#Eval("Salary") %>
                                    </ItemTemplate>
                                </asp:TemplateField >
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:LinkButton CssClass="bg-danger" ID="linkbutton" OnClientClick="return confirm('Are you sure you want to delete')" CommandName="Del" CommandArgument='<%#Eval("FId") %>' Text="Delete" runat="server"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton CssClass="bg-danger" ID="edit" CommandName="Ed" CommandArgument='<%#Eval("FId") %>' runat="server"  Text="Edit" ></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>

                        </asp:GridView>
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
