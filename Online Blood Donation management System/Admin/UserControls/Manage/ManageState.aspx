<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageState.aspx.cs" Inherits="Admin_ManageState" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 100%">
            <tr>
                <td align="center" colspan="3" style="font-weight: bold; font-size: 14pt">
                    Update State</td>
            </tr>
            <tr>
                <td align="right" style="width: 213px">
                    <asp:Label ID="Label1" runat="server" Text="State Name"></asp:Label></td>
                <td align="left">
                    <asp:TextBox ID="txtUpdateStateName" runat="server"></asp:TextBox></td>
                <td align="left" style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUpdateStateName"
                        ErrorMessage="Enter State Name" Width="145px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" style="width: 213px">
                    <asp:Label ID="Label2" runat="server" Text="State Code "></asp:Label></td>
                <td align="left">
                    <asp:TextBox ID="txtUpdateStateCode" runat="server"></asp:TextBox></td>
                <td align="left" style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUpdateStateCode"
                        ErrorMessage="Enter State Code" Width="181px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" style="width: 213px">
                    <asp:Label ID="Label3" runat="server" Text="State Description" Width="199px"></asp:Label></td>
                <td align="left">
                    <asp:TextBox ID="txtUpdateStateDesc" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                <td align="left" style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUpdateStateDesc"
                        ErrorMessage="Enter State Description" Width="227px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" style="height: 24px;">
                    <asp:Label ID="LabelCountry" runat="server" Text="Country ID"></asp:Label></td>
                <td align="left" style="height: 24px;">
                    <asp:DropDownList ID="ddlCountry" runat="server" Width="182px">
                    </asp:DropDownList></td>
                <td align="left" style="width: 100px; height: 24px;">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                    <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" /></td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="lblmsg" runat="server" Width="686px"></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>

