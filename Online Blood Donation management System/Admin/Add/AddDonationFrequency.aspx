<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="AddDonationFrequency.aspx.cs" Inherits="Admin_AddDonationFrequency"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center">
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; font-size: 14pt">
                Add Donation Frequency</td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label1" runat="server" Text="Frequency" Font-Bold="True"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtFrequency" runat="server"></asp:TextBox></td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFrequency"
                    ErrorMessage="Enter Frequency"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label2" runat="server" Text="Description" Font-Bold="True"></asp:Label></td>
            <td align="left" style="width: 100px">
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <td align="left" style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDescription"
                    ErrorMessage="Enter Description"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right">
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
            </td>
            <td align="left">
                <asp:Button ID="btnNew" runat="server" OnClick="btnNew_Click" Text="New" /></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="lblMsg" runat="server" Width="312px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>
