<%@ Control Language="C#" AutoEventWireup="true" CodeFile="FotterMenuControl.ascx.cs" Inherits="UserControls_FotterMenuControl" %>
<table border="1" width="100%">
    <tr>
        <td style="height: 15px; background-color: #ffcc66">
            &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="Gray" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></td>
        <td style="font-size: 12pt; height: 15px; background-color: #ffcc66">
            &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" ForeColor="Gray">About Us</asp:HyperLink></td>
        <td style="font-size: 12pt; background-color: #ffcc66">
            &nbsp;<asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" ForeColor="Gray">Contact Us</asp:HyperLink></td>
        <td style="font-size: 12pt; width: 123px; height: 15px; background-color: #ffcc66">
            &nbsp;<asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" ForeColor="Gray">Send Email</asp:HyperLink></td>
        <td style="font-size: 12pt; width: 123px; height: 15px; background-color: #ffcc66">
            <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" ForeColor="Gray">FAQ</asp:HyperLink></td>
    </tr>
</table>
