<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="OrganizationRegistration.aspx.cs" Inherits="Registration_OrganizationRegistration"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="height: 790px">
        <tr>
            <td colspan="2" align="left" style="font-weight: bold; font-size: 16pt; color: #ffffff;
                background-color: gray; text-align: center;">
                Please Fill The Following Form</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server"  Font-Bold="True" Font-Size="14pt"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <span style="font-size: 14pt; color: #ff0033">Please Enter *Value</span></td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="text-align: center">
                <strong><span style="font-size: 14pt; color: #ffffff; background-color: #808080">Address
                    Details</span></strong></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label11" runat="server" Text="Country"></asp:Label></td>
            <td align="left">
                <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True" Width="128px"
                    OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label12" runat="server" Text="State"></asp:Label></td>
            <td align="left">
                <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                    <asp:ListItem>-SELECT STATE</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label13" runat="server" Text="City"></asp:Label>
            </td>
            <td align="left">
                <asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="True" Width="126px" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged">
                    <asp:ListItem>-SELECT CITY</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label14" runat="server" Text="Location"></asp:Label></td>
            <td align="left">
                <asp:DropDownList ID="ddlLocation" runat="server" Width="127px">
                    <asp:ListItem>-SELECT LOCATION</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label15" runat="server" Text="Address"></asp:Label><span style="font-size: 12pt;
                    color: #ff0033">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtAddress" runat="server" Height="32px" Width="184px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAddress"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label16" runat="server" Text="Zip Code" Width="96px"></asp:Label><span
                    style="font-size: 12pt; color: #ff0033">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtZipCode" runat="server" Height="16px" Width="147px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtZipCode"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <strong><span style="font-size: 14pt; color: #ffffff; background-color: #808080">Personal
                    Details</span></strong></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label6" runat="server" Text="Organization Name" Width="117px"></asp:Label><span
                    style="font-size: 12pt; color: #ff0033">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtOrgName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtOrgName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label7" runat="server" Text="Organization Type"></asp:Label></td>
            <td align="left">
                <asp:DropDownList ID="ddlOrgType" runat="server">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left" style="width: 292px">
                <asp:Label ID="Label20" runat="server" Text="Email"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="width: 292px">
                <asp:Label ID="Label8" runat="server" Text="Organization Image"></asp:Label></td>
            <td align="left">
                <asp:FileUpload ID="FileUpload1" runat="server" /></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label9" runat="server" Text="Organization Description" Width="155px"></asp:Label><span
                    style="color: #ff0033"></span></td>
            <td align="left">
                <asp:TextBox ID="txtOrgDesc" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label18" runat="server" Text="Contact No(Office)"></asp:Label><span
                    style="color: #ff0033">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtPhoneNo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhoneNo"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label19" runat="server" Text="Mobile No"></asp:Label><span style="color: #ff0033">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMobile"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label10" runat="server" Text="Comment"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="text-align: center">
                <strong><span style="font-size: 14pt; color: #ffffff; background-color: #808080">Account
                    Details</span></strong></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label><span style="color: #ff0033">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtName" runat="server" Width="154px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><span style="color: #ff0033">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="153px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Large" Width="158px"></asp:Label></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                    ControlToValidate="txtConfirm" ErrorMessage="Password Mismatch"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label4" runat="server" Text="Hint Question"></asp:Label></td>
            <td align="left">
                <asp:DropDownList ID="ddlHintQuestion" runat="server" Width="160px">
                    <asp:ListItem>WHAT IS YOUR PET NAME</asp:ListItem>
                    <asp:ListItem>WHAT IS YOUR FAVOURITE PASSTIME</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label5" runat="server" Text="Hint Answer"></asp:Label><span style="color: #ff0033">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtAnswer" runat="server" Width="151px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAnswer"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /></td>
        </tr>
    </table>
</asp:Content>
