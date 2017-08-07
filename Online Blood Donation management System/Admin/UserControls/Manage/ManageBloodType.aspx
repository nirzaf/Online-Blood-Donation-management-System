<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageBloodType.aspx.cs" Inherits="Admin_ManageBloodType" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 100%">
            <tr>
                <td colspan="3" style="font-weight: bold; font-size: 14pt">
                    Update Blood Type</td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label1" runat="server" Text="Blood Type"></asp:Label></td>
                <td align="left">
                    <asp:TextBox ID="txtType" runat="server"></asp:TextBox></td>
                <td align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtType"
                        ErrorMessage="Enter Blood Type"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label2" runat="server" Text="Type Description"></asp:Label></td>
                <td align="left">
                    <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                <td align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDesc"
                        ErrorMessage="Enter Description"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                    <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" /></td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="lblMsg" runat="server" Width="454px"></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>

