<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HeaderControl.ascx.cs"
    Inherits="Admin_UserControls_HeaderControl" %>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td colspan="3" style="height: 18px">
            <table style="width: 100%">
                <tr>
                    <td align="center" colspan="4" style="font-weight: bold; font-size: 24pt; color: #ffffff;
                        font-family: 'Comic Sans MS', 'Franklin Gothic Medium'; height: 21px; background-color: #ff6666">
                        BLOOD BEQUEATH FEDERAL AGENT
                        <div style="text-align: right">
                            &nbsp;</div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="height: 44px">
            <asp:Image ID="Image1" runat="server" Height="55px" ImageUrl="~/Images/Logo.gif"
                Width="112px" /></td>
        <td style="font-size: 18pt; width: 132px; color: #ff3366; font-family: 'Arial Unicode MS';
            height: 44px; text-align: center">
            <strong><span>
                <asp:Label ID="Label1" runat="server" Font-Names="Comic Sans MS" Text="Donate Blood Save a Life"
                    Width="836px"></asp:Label></span></strong></td>
        <td style="height: 44px">
        </td>
    </tr>
</table>
