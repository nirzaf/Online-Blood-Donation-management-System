<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmAdminLogin.aspx.cs" Inherits="Admin_frmAdminLogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <table align="center" cellpadding="1" cellspacing="4" border="0" style="width: 330px">
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; font-size: 14pt; color: #ffffff;
                background-color: gray; height: 22px;">
                Admin Login</td>
        </tr>
        <tr>
            <td align="left" style="width: 1357px; height: 10px;">
                User Name:</td>
            <td align="left" style="width: 199px; height: 10px;">
                <asp:TextBox ID="txtUsername" runat="server" Width="164px"></asp:TextBox></td>
            <td align="left" rowspan="4" style="width: 199px">
                <asp:Image ID="Image1" runat="server" Height="58px" ImageAlign="AbsMiddle" ImageUrl="~/Admin/Images/Logo2.jpg"
                    Width="50px" /></td>
        </tr>
        <tr>
            <td align="left" style="width: 1357px; height: 11px;">
                Password:</td>
            <td align="left" style="width: 199px; height: 11px;" >
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="164px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="2" valign="top" style="height: 6px; text-align: right">
                &nbsp;<asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" /></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 24px">
                <asp:Image ID="Image2" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Images/alertIconWin.gif"
                    Visible="False" Height="25px" /><asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"
                    Width="190px"></asp:Label></td>
        </tr>
   </table>
</asp:Content>

