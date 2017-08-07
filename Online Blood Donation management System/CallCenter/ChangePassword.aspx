<%@ Page Language="C#" MasterPageFile="~/CallCenter/CallCenterMasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="CallCenter_ChangePassword" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td align="center" colspan="2">
                <span style="color: #ff0000">Please Enter *Value</span></td>
        </tr>
        <tr>
            <td align="left" style="width: 275px">
                User Name</td>
            <td align="left" style="width: 267px">
                <asp:TextBox ID="txtUserName" runat="server" ReadOnly="True" Width="181px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="width: 275px">
                Old Password<span style="color: #ff0000">*</span>:</td>
            <td align="left" style="width: 267px">
                <asp:TextBox ID="txtOldPwd" runat="server" TextMode="Password" Width="182px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="width: 275px">
                New Password<span style="color: #ff0000">*:</span></td>
            <td align="left" style="width: 267px">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="182px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="width: 275px">
                Confirm Password<span style="color: #ff0000">*:</span></td>
            <td align="left" style="width: 267px">
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="181px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                    ControlToValidate="txtConfirm" ErrorMessage="Password Mismatch"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnUpdateAccount" runat="server" OnClick="btnUpdateAccount_Click"
                    Text="Change Password" Width="111px" /></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Width="240px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

