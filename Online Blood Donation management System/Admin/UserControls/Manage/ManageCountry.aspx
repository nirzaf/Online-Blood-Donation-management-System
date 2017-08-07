<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageCountry.aspx.cs" Inherits="Admin_ManageCountry" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 100%">
            <tr>
                <td align="center" colspan="3" style="font-weight: bold; font-size: 14pt">
                    Update Country</td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label1" runat="server" Text="Country Name"></asp:Label></td>
                <td align="left">
                    <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox></td>
                <td align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCountry"
                        ErrorMessage="Enter Country Name"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label2" runat="server" Text="Country Description"></asp:Label></td>
                <td align="left">
                    <asp:TextBox ID="txtCountryDesc" runat="server"></asp:TextBox></td>
                <td align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCountryDesc"
                        ErrorMessage="Enter Country Description"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label3" runat="server" Text="Country Code"></asp:Label></td>
                <td align="left">
                    <asp:TextBox ID="txtCountryCode" runat="server"></asp:TextBox></td>
                <td align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCountryCode"
                        ErrorMessage="Enter Country Code"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                    <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" />&nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="lblMsg" runat="server" Width="594px"></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>

