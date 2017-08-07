<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HeaderControl.ascx.cs" Inherits="Admin_UserControls_HeaderControl" %>
<%@ Register Src="MenuUserControl.ascx" TagName="MenuUserControl" TagPrefix="uc1" %>
<table width="100%" style="margin:0">
    <tr>
        <td colspan="3" style="height: 21px">
            <table width="100%">
                <tr>
                    <td align="center" style="font-weight: bold; font-size: 24pt; color: #ffffff; font-family: 'Comic Sans MS', 'Franklin Gothic Medium';
                        height: 21px; background-color: #ff6666; width: 784px;">
                BLOOD BEQUEATH FEDERAL AGENT</td>
                    <td style="height: 21px; background-color: #ff6666; width: 32px;" >
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="White" NavigateUrl="~/Login.aspx">SignIn</asp:HyperLink>
                    </td>
                    <td style="height: 21px; background-color: #ff6666; width: 22px;" >
                        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" ForeColor="White" Width="36px" NavigateUrl="~/FAQ.aspx">FAQ</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="height: 44px">
            <asp:Image ID="Image1" runat="server" Height="48px" ImageUrl="~/Admin/Images/Logo.gif"
                Width="112px" /></td>
        <td style="font-size: 18pt; width: 132px; color: #ff3366; font-family: 'Arial Unicode MS';
            height: 44px; text-align: center">
            <strong><span>
                <asp:Label ID="Label1" runat="server" Font-Names="Comic Sans MS" Text="Donate Blood Save a Life"
                    Width="836px"></asp:Label></span></strong></td>
        <td style="height: 44px">
        </td>
    </tr>
    <tr>
        <td align="center" colspan="3">
            <uc1:MenuUserControl ID="MenuUserControl1" runat="server" OnLoad="MenuUserControl1_Load" />
        </td>
    </tr>
</table>
