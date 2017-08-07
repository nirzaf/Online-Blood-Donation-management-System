<%@ Page Language="C#" MasterPageFile="~/Organization/OrganizationMasterPage.master" AutoEventWireup="true" CodeFile="MakeRequestForBlood.aspx.cs" Inherits="MakeRequestForBlood" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; font-size: 14pt; color: #ffffff;
                background-color: gray">
                Please Fill The Following Form</td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="text-align: center">
                <span style="color: #ff0000">Please Enter * Value</span></td>
        </tr>
        <tr>
            <td align="left" >
                Name:</td>
            <td align="left" >
                <asp:TextBox ID="txtName" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" >
            Email:
            </td>
            <td align="left">
                <asp:TextBox ID="txtMail" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left">
                Phone:</td>
            <td align="left">
                <asp:TextBox ID="txtPhone" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left">
            Country:
            </td>
            <td >
                <asp:TextBox ID="txtCountry" runat="server" ReadOnly="True"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td align="left">
            State:
            </td>
            <td align="left" style="height: 23px">
                <asp:TextBox ID="txtState" runat="server" ReadOnly="True"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td align="left" style="width: 166px">
            City:
            </td>
            <td align="left">
                <asp:TextBox ID="txtCity" runat="server" ReadOnly="True"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td align="left">
            Location:
            </td>
            <td align="left">
                <asp:TextBox ID="txtLocation" runat="server" ReadOnly="True"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                Blood Require Address<span style="color: #ff0000">*</span>:</td>
            <td align="left">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="154px" ValidationGroup="g1"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left">
            Blood Type:
            </td>
            <td align="left">
                <asp:DropDownList ID="ddlBloodType" runat="server" Width="155px">
                </asp:DropDownList>&nbsp;</td>
        </tr>
        <tr>
            <td align="left">
            Blood Group:
            </td>
            <td align="left">
                <asp:DropDownList ID="ddlBloodGroup" runat="server" Width="155px">
                </asp:DropDownList>&nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                Request Date:</td>
            <td align="left">
                <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                </cc1:GMDatePicker>
            </td>
        </tr>
        <tr>
            <td align="left">
                Blood Required Date:&nbsp;</td>
            <td align="left">
                <cc1:GMDatePicker ID="GMDatePicker2" runat="server">
                </cc1:GMDatePicker>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit Request" ValidationGroup="g1" /></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Width="288px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

