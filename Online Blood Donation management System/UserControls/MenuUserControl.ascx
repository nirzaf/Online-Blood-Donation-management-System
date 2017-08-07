<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MenuUserControl.ascx.cs" Inherits="UserControls_MenuUserControl" %>
<div style="text-align: center">
    <table width="100%" border="1" style="text-align:center">
        <tr>
            <td style="background-color: #ffcc66; height: 27px;" colspan="7">
                <asp:Menu ID="Menu1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Gray" Orientation="Horizontal" StaticEnableDefaultPopOutImage="False" Width="100%">
                    <DynamicMenuItemStyle BackColor="Silver" ForeColor="Gold" />
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Home" Value="Home"></asp:MenuItem>
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                         <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Join Us" Value="Home">
                            <asp:MenuItem Text="Donor Registration" Value="Donor Registration" NavigateUrl="~/DonaorRegistration.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Organization Registration" Value="Organization Registration" NavigateUrl="~/OrganizationRegistration.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Request Registration" Value="Request Registration" NavigateUrl="~/MakeRequestForBlood.aspx"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/ContactUs.aspx" Text="Contact Us" Value="Home"></asp:MenuItem>
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/AboutUs.aspx" Text="About Us" Value="Home"></asp:MenuItem>
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/FeedBack.aspx" Text="Feed Back" Value="Home"></asp:MenuItem>
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/FeedBack.aspx" Text="Member List" Value="Home">
                            <asp:MenuItem NavigateUrl="~/Member List/GoldenMember.aspx" Text="Golden Member"
                                Value="Golden Member"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Member List/SilverMember.aspx" Text="Silver Member"
                                Value="Silver Member"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/Default.aspx" Text="Admin Login" Value="Home"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </td>
        </tr>
    </table>
</div>
