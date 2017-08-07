<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CoomonUserControl.ascx.cs" Inherits="Registration_UserControls_CoomonUserControl" %>
<table style="width: 100%">
    <tr>
        <td align="right" style="background-color: gray">
            <asp:Label ID="lblUser" runat="server" BackColor="Gray" Font-Bold="True" Font-Size="Large"
                ForeColor="LightGray" Style="left: -57px; top: 0px">  Welcome , </asp:Label>
            &nbsp;
            <asp:HyperLink
                    ID="HyperLink1" runat="server" BackColor="Gray" Font-Bold="True" Font-Size="Large"
                    ForeColor="Gainsboro" NavigateUrl="~/Default.aspx" Width="48px">LogOut</asp:HyperLink><asp:HyperLink
                        ID="HyperLink2" runat="server" BackColor="Gray" Font-Bold="True" Font-Size="Large"
                        ForeColor="Gainsboro" NavigateUrl="~/Donor/DonorAccountDetail.aspx" Style="left: 26px;
                        top: 0px" Width="185px">View My Account</asp:HyperLink>
        </td>
    </tr>
</table>
