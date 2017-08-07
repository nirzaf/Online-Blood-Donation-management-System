<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LeftPaneControl.ascx.cs" Inherits="Admin_UserControls_RightPaneControl" %>
<table style="width: 122px; height: 147px" >
    <tr>
        <td valign="top" >
            <table border="1" >
                <tr>
                    <td style="width: 231px; background-color: #ff6666">
                        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" CssClass="Menu" Font-Bold="True"
                            ForeColor="#7C6F57" Width="121px" Font-Names="Verdana" Font-Size="10pt" DynamicHorizontalOffset="2" StaticSubMenuIndent="10px">
                            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                            <DynamicMenuStyle BackColor="#F7F6F3" />
                            <StaticSelectedStyle BackColor="#5D7B9D" />
                            <DynamicSelectedStyle BackColor="#5D7B9D" />
                            <DynamicMenuItemStyle BackColor="#FF8080" BorderStyle="Solid" ForeColor="White" HorizontalPadding="5px" VerticalPadding="2px" />
                            <Items>
                                <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/Admin/AdminDefaultPage.aspx"></asp:MenuItem>
                            </Items>
                            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                        </asp:Menu>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #ff6666; width: 231px;">
                      <asp:Menu ID="Menu2" runat="server" BackColor="#F7F6F3" CssClass="Menu" Font-Bold="True"
                            ForeColor="#7C6F57" Width="121px" Font-Names="Verdana" Font-Size="10pt" DynamicHorizontalOffset="2" StaticSubMenuIndent="10px">
                            <Items>
                                <asp:MenuItem Text="Add" Value="Home">
                                    <asp:MenuItem Text="Country" Value="Country" NavigateUrl="~/Admin/Add/AddNewCountry.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="State" Value="State" NavigateUrl="~/Admin/Add/AddNewState.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="City" Value="City" NavigateUrl="~/Admin/Add/AddNewCity.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="Location" Value="Location" NavigateUrl="~/Admin/Add/AddNewLocation.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="Blood Type" Value="Blood Type" NavigateUrl="~/Admin/Add/AddNewBloodType.aspx">
                                    </asp:MenuItem>
                                    <asp:MenuItem Text="Add FAQ" Value="Add FAQ" NavigateUrl="~/Admin/Add/AddNewFaq.aspx"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Admin/Add/AddBloodGroup.aspx" Text="Blood Group" Value="Blood Group">
                                    </asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Admin/Add/AddOrganization.aspx" Text="Organization" Value="Organization">
                                    </asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Admin/Add/AddDonationFrequency.aspx" Text="Donation Frequency"
                                        Value="Donation Frequency"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Admin/Add/EmployeeDetail.aspx" Text="Employee Detail"
                                        Value="Employee Detail"></asp:MenuItem>
                                </asp:MenuItem>
                            </Items>
                            <DynamicMenuStyle BackColor="#F7F6F3" />
                            <DynamicMenuItemStyle BackColor="#FF8080" BorderStyle="Solid" ForeColor="White" HorizontalPadding="5px" VerticalPadding="2px" />
                            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                            <StaticSelectedStyle BackColor="#5D7B9D" />
                            <DynamicSelectedStyle BackColor="#5D7B9D" />
                            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                        </asp:Menu>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #ff6666; width: 231px;">
                      <asp:Menu ID="Menu7" runat="server" BackColor="#F7F6F3" CssClass="Menu" Font-Bold="True"
                            ForeColor="#7C6F57" Width="102px" Font-Names="Verdana" Font-Size="10pt" DynamicHorizontalOffset="2" StaticSubMenuIndent="10px">
                            <DynamicMenuItemStyle BackColor="#FF8080" BorderStyle="Solid" ForeColor="White" HorizontalPadding="5px" VerticalPadding="2px" />
                            <Items>
                                <asp:MenuItem Text="Show Items" Value="Home">
                                    <asp:MenuItem Text="Show Country" Value="Country" NavigateUrl="~/Admin/Show/ShowCountry.aspx">
                                    </asp:MenuItem>
                                    <asp:MenuItem Text="Show State" Value="State" NavigateUrl="~/Admin/Show/ShowState.aspx">
                                    </asp:MenuItem>
                                    <asp:MenuItem Text="Show City" Value="City" NavigateUrl="~/Admin/Show/ShowCity.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="Show Location" Value="Location" NavigateUrl="~/Admin/Show/ShowLocation.aspx">
                                    </asp:MenuItem>
                                    <asp:MenuItem Text="Show Blood Type" Value="Blood Type" NavigateUrl="~/Admin/Show/ShowBloodType.aspx">
                                    </asp:MenuItem>
                                    <asp:MenuItem Text="Show FAQ" Value="Manage FAQ" NavigateUrl="~/Admin/Show/ShowFAQ.aspx"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Admin/Show/ShowBloodGroup.aspx" Text="Show Blood Group" Value="Show Blood Group">
                                    </asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Admin/Show/ShowOrganization.aspx" Text="Show Organization"
                                        Value="Show Organization"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Admin/Show/ShowDonationFrequency.aspx" Text="Show Donation Frequency"
                                        Value="Show donation Frequency"></asp:MenuItem>
                                </asp:MenuItem>
                            </Items>
                            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                            <DynamicMenuStyle BackColor="#F7F6F3" />
                            <StaticSelectedStyle BackColor="#5D7B9D" />
                            <DynamicSelectedStyle BackColor="#5D7B9D" />
                            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                        </asp:Menu>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
