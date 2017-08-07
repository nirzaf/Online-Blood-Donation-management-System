<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageCity.aspx.cs" Inherits="Admin_ManageCity" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 100%">
            <tr>
                <td colspan="3" style="font-weight: bold; font-size: 14pt">
                    Update City</td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label1" runat="server" Text="State ID"></asp:Label></td>
                <td align="left">
                    <asp:DropDownList ID="ddlState" runat="server">
                    </asp:DropDownList></td>
                <td align="left">
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label2" runat="server" Text="City Name"></asp:Label></td>
                <td align="left">
                    <asp:TextBox ID="txtCityName" runat="server" Width="171px"></asp:TextBox></td>
                <td align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCityName"
                        ErrorMessage="Enter City Name"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label3" runat="server" Text="City Description"></asp:Label></td>
                <td align="left">
                    <asp:TextBox ID="txtCityDesc" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                <td align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCityDesc"
                        ErrorMessage="Enter City Description"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label4" runat="server" Text="City Code"></asp:Label></td>
                <td align="left">
                    <asp:TextBox ID="txtCityCode" runat="server" Width="171px"></asp:TextBox></td>
                <td align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCityCode"
                        ErrorMessage="Enter City Code"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                    <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" /></td>
            </tr>
            <tr>
                <td align="center" colspan="3" style="height: 21px">
                    <asp:Label ID="lblMsg" runat="server" Width="696px"></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>

