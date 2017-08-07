<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MakeRequestForBlood.aspx.cs" Inherits="MakeRequestForBlood" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; font-size: 14pt; color: #ffffff;
                background-color: gray">
                Please Fill The Following Form</td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="text-align: center">
                <span style="color: #ff0000">Please Enter * Value</span></td>
        </tr>
        <tr>
            <td align="left" >
                Name:</td>
            <td align="left">
                <span style="color: #ff0000">*</span></td>
            <td align="left" >
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" >
            Email:
            </td>
            <td align="left">
                <span style="color: #ff0000">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtMail" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMail" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left">
                Phone:</td>
            <td align="left">
                <span style="color: #ff0000">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPhone" ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left">
            Country:
            </td>
            <td align="left">
            </td>
            <td >
                <asp:DropDownList ID="ddlCountry" runat="server" Width="160px" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="left">
            State:
            </td>
            <td align="left" style="height: 23px">
            </td>
            <td align="left" style="height: 23px">
                <asp:DropDownList ID="ddlState" runat="server" Width="160px" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 166px">
            City:
            </td>
            <td align="left">
            </td>
            <td align="left">
                <asp:DropDownList ID="ddlCity" runat="server" Width="160px" AutoPostBack="True" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="left">
            Location:
            </td>
            <td align="left">
            </td>
            <td align="left">
                <asp:DropDownList ID="ddlLocation" runat="server" Width="160px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="left">
                Blood Require Address:</td>
            <td align="left">
            </td>
            <td align="left">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="154px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left">
            Blood Type:
            </td>
            <td align="left">
            </td>
            <td align="left">
                <asp:DropDownList ID="ddlBloodType" runat="server" Width="160px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="left">
            Blood Group:
            </td>
            <td align="left">
            </td>
            <td align="left">
                <asp:DropDownList ID="ddlBloodGroup" runat="server" Width="160px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="left">
                Request Date:</td>
            <td align="left">
            </td>
            <td align="left">
                &nbsp;<cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                </cc1:GMDatePicker>
            </td>
        </tr>
        <tr>
            <td align="left">
                Blood Required Date:&nbsp;</td>
            <td align="left">
            </td>
            <td align="left">
                &nbsp;<cc1:GMDatePicker ID="GMDatePicker2" runat="server">
                </cc1:GMDatePicker>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit Request" /></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="lblMsg" runat="server" Width="288px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

