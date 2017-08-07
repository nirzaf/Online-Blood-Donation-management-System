<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddOrganization.aspx.cs" Inherits="Admin_AddOrganization" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; font-size: 14pt">
                Add New Organization</td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label1" runat="server" Text="Organization Type"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="txtOrgName" runat="server" Width="221px"></asp:TextBox></td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOrgName"
                    ErrorMessage="Enter Organization Name" Width="155px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDescription"
                    ErrorMessage="Enter Description"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label3" runat="server" Text="Organization Image"></asp:Label></td>
            <td align="left">
                <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            <td align="left">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="height: 26px">
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                <asp:Button ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" /></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="lblMsg" runat="server" Width="500px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

