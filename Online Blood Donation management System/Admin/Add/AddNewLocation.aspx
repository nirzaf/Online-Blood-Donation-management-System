<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddNewLocation.aspx.cs" Inherits="AddNewLocation" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="1">
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; font-size: 16pt">
                Add New Location</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Panel ID="Panel1" runat="server" Height="50px" Width="125px">
                    <table>
                        <tr>
                            <td align="right" style="width: 1072px">
                                <asp:Label ID="Label1" runat="server" Text="City Name"></asp:Label></td>
                            <td align="left" style="width: 121px">
                                <asp:DropDownList ID="ddlCity" runat="server" Width="172px">
                                </asp:DropDownList></td>
                            <td align="left">
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 1072px">
                                <asp:Label ID="lblCountryName" runat="server" CssClass="label" Text="Location:"></asp:Label></td>
                            <td style="width: 121px">
                                <asp:TextBox ID="txtLocName" runat="server" Width="257px"></asp:TextBox></td>
                            <td align="left">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Location" ControlToValidate="txtLocName"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 1072px">
                                <asp:Label ID="lblCountryDesc" runat="server" Text="Location Description:"></asp:Label></td>
                            <td style="width: 121px">
                                <asp:TextBox ID="txtLocDesc" runat="server" Width="257px"></asp:TextBox></td>
                            <td align="left">
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Location Description" ControlToValidate="txtLocDesc" Width="195px"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 1072px">
                                <asp:Label ID="lblCountryCode" runat="server" Text="Location Code:" Width="157px"></asp:Label></td>
                            <td align="left" style="width: 121px">
                                <asp:TextBox ID="txtLocCode" runat="server" Width="97px"></asp:TextBox></td>
                            <td align="left">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Location Code" ControlToValidate="txtLocCode"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 1072px">
                                <asp:Label ID="lblPinCode" runat="server" Text="Pin Code:" Width="157px"></asp:Label></td>
                            <td align="left" style="width: 121px">
                                <asp:TextBox ID="txtPinCode" runat="server" Width="257px"></asp:TextBox></td>
                            <td align="left">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPinCode"
                                    ErrorMessage="Enter Pin Code"></asp:RequiredFieldValidator></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnAddCity" runat="server" Text="Add" OnClick="btnAddCity_Click" />
                <asp:Button ID="btnClear" runat="server" Text="New" OnClick="btnClear_Click" /></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Width="444px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

