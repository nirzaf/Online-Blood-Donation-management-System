<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EmployeeDetail.aspx.cs" Inherits="Admin_Add_EmployeeDetail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table align="center">
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; font-size: 16pt; color: #ffffff;
                background-color: gray">
                Please Fill The Following Form</td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 21px">
                <span style="color: #ff0000">Please Enter * Value</span></td>
        </tr>
        <tr>
            <td align="left">
                Name<span style="color: #ff0000">*</span>:</td>
            <td align="left">
                <asp:TextBox ID="txtName" runat="server" Width="173px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left">
                Address<span style="color: #ff0000">*</span>:</td>
            <td align="left">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="173px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left">
                Phone<span style="color: #ff0000">*</span>:</td>
            <td align="left">
                <asp:TextBox ID="txtPhone" runat="server" Width="173px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPhone"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left">
                Email<span style="color: #ff0000">*</span>:</td>
            <td align="left">
                <asp:TextBox ID="txtMail" runat="server" Width="173px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMail"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left">
                User Name<span style="color: #ff0000">*</span>:</td>
            <td align="left">
                <asp:TextBox ID="txtUserName" runat="server" Width="171px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUserName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left">
                Password<span style="color: #ff0000">*</span>:</td>
            <td align="left">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="171px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left">
                Confirm Password<span style="color: #ff0000">*:</span></td>
            <td align="left">
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="171px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                    ControlToValidate="txtConfirm" ErrorMessage="Password Mismatch"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 26px">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />&nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 7px">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Width="374px"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

