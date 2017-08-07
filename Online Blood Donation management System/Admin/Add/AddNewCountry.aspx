<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddNewCountry.aspx.cs" Inherits="Admin_AddNewItem" Title="Untitled Page" %>
<%-- Add content controls here --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <table align="center">
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; font-size: 16pt; width: 697px;">
                Add New Country</td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="width: 697px">
                                   <table>
                        <tr>
                            <td align="right" style="width: 1072px; height: 26px;">
                <asp:Label ID="lblCountryName" runat="server" Text="Country:" CssClass="label"></asp:Label></td>
                            <td style="width: 121px; height: 26px;">
                <asp:TextBox ID="txtCountryName" runat="server" Width="252px"></asp:TextBox></td>
                            <td style="width: 121px; height: 26px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCountryName"
                                    ErrorMessage="Enter Country Name" Width="142px"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 1072px">
                <asp:Label ID="lblCountryDesc" runat="server" Text="Country Description:"></asp:Label></td>
                            <td style="width: 121px">
                <asp:TextBox ID="txtCountryDesc" runat="server" Width="257px" TextMode="MultiLine"></asp:TextBox></td>
                            <td style="width: 121px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCountryDesc"
                                    ErrorMessage="Enter Country Description" Width="167px"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 1072px">
                <asp:Label ID="lblCountryCode" runat="server" Text="Country Code:" Width="157px"></asp:Label></td>
                            <td align="left" style="width: 121px">
                <asp:TextBox ID="txtCountryCode" runat="server" Width="147px"></asp:TextBox></td>
                            <td align="left" style="width: 121px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCountryCode"
                                    ErrorMessage="Enter Country Code" Width="171px"></asp:RequiredFieldValidator></td>
                        </tr>
                    </table>
              
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="width: 697px">
                <asp:Label ID="lblMsg" runat="server" Width="376px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="width: 697px">
                <asp:Button ID="btnAddCountry" runat="server" Text="Add" OnClick="btnAddCountry_Click"  />
                <asp:Button ID="btnclear" runat="server" Text="Clear" OnClick="btnclear_Click"  />
                <asp:Label ID="Label1" runat="server" Visible="False" Width="15px">1</asp:Label></td>
        </tr>
    </table>
</asp:Content>
