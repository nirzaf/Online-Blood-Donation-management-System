<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
                            <table style="width: 375px">
                                <tr>
                                    <td align="center" colspan="2" style="font-weight: bold; font-size: 14pt; color: #ffffff;
                                        background-color: gray">
                    Sign In</td>
                                    <td align="center" colspan="1" rowspan="5" valign="middle">
                                        <asp:Image ID="Image1" runat="server" Height="117px" ImageAlign="AbsMiddle" ImageUrl="~/Images/Logo.gif"
                                            Width="104px" /></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 302px">
                                        <asp:Label ID="Label1" runat="server" Text="User Name :" Width="120px" Font-Bold="True"></asp:Label></td>
                                    <td align="left" style="width: 210px">
                                        <asp:TextBox ID="txtUsername" runat="server" Width="157px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 302px">
                                        <asp:Label ID="Label2" runat="server" Text="Pssword :" Font-Bold="True"></asp:Label></td>
                                    <td align="left" style="width: 210px; height: 26px">
                                        <asp:TextBox ID="txtPassword" runat="server" Width="157px" TextMode="Password"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" valign="top">
                                        <asp:Image ID="Image2" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Images/alertIconWin.gif"
                                            Visible="False" />
                                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"
                                            Width="248px"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="height: 26px">
                                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"  /></td>
                                </tr>
                            </table>
    </div>
</asp:Content>

