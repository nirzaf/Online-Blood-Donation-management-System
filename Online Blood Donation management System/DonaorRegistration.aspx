<%@ Page Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="DonaorRegistration.aspx.cs" Inherits="Registration_DonaorRegi" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; height: 1305px; width: 594px;">
        <table style="width: 571px" >
            <tr>
                <td colspan="2" align="center" style="font-weight: bold; font-size: 16pt; color: #ffffff; background-color: gray">
                    Please Fill The Following Form</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <span style="font-size: 14pt; color: #ff0033">Please Enter *Value</span></td>
            </tr>
            <tr>
                <td colspan="2" align="center" style="font-weight: bold; font-size: 14pt; color: gray">
                    <span style="color: white; background-color: gray">Personal Details</span></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label6" runat="server" Text="First Name"></asp:Label></td>
                <td style="width: 114px" align="left">
                    <asp:TextBox ID="txtFName" runat="server" Width="153px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFName"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label7" runat="server" Text="Middle Name"></asp:Label></td>
                <td style="width: 114px" align="left">
                    <asp:TextBox ID="txtMName" runat="server" Width="153px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label8" runat="server" Text="Last Name"></asp:Label></td>
                <td style="width: 114px" align="left">
                    <asp:TextBox ID="txtLName" runat="server" Width="153px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLName"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label25" runat="server" Text="Email"></asp:Label></td>
                <td align="left" style="width: 114px">
                    <asp:TextBox ID="txtEmail" runat="server" Width="151px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="height: 57px;" align="right">
                    <asp:Label ID="Label9" runat="server" Text="DOB"></asp:Label></td>
                <td align="left">
                    <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                    </cc1:GMDatePicker>
                   
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label23" runat="server" Text="Weight"></asp:Label></td>
                <td align="left">
                    <asp:TextBox ID="txtWeight" runat="server" Width="143px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtWeight"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label10" runat="server" Text="Gender"></asp:Label></td>
                <td align="left">
                    <asp:RadioButton ID="radMale" runat="server" GroupName="Gender" Text="Male" Checked="True" />
                    <asp:RadioButton ID="radFemale" runat="server" GroupName="Gender" Text="Female" /></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label11" runat="server" Text="Upload Image"></asp:Label></td>
                <td style="width: 114px; height: 21px" align="left">
                    <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label22" runat="server" Text="Blood Group"></asp:Label></td>
                <td align="left" style="width: 114px">
                    <asp:DropDownList ID="ddlBloodGroup" runat="server" Width="170px">
                        <asp:ListItem>-SELECT-</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label12" runat="server" Text="Blood Type"></asp:Label></td>
                <td style="width: 114px" align="left">
                    <asp:DropDownList ID="ddlBloodType" runat="server" Width="168px">
                        <asp:ListItem>-SELECT-</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label13" runat="server" Text="Contact No(Office)"></asp:Label></td>
                <td style="width: 114px" align="left">
                    <asp:TextBox ID="txtPhoneOffice" runat="server" Width="169px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="height: 26px;" align="right">
                    <asp:Label ID="Label14" runat="server" Text="Contact No(Residence)" Width="230px"></asp:Label></td>
                <td style="width: 114px; height: 26px;" align="left">
                    <asp:TextBox ID="txtPhoneHome" runat="server" Width="169px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhoneHome"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="height: 26px;" align="right">
                    <asp:Label ID="Label15" runat="server" Text="Mobile No."></asp:Label></td>
                <td style="width: 114px; height: 26px;" align="left">
                    <asp:TextBox ID="txtMobile" runat="server" Width="169px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMobile"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="height: 24px;" align="center" colspan="2">
                    <span style="font-weight: bold; font-size: 14pt; color: #ffffff; background-color: #808080">
                    Address Details</span></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label16" runat="server" Text="Country"></asp:Label></td>
                <td style="width: 114px" align="left">
                    <asp:DropDownList ID="ddlCountry" runat="server" Width="164px" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label17" runat="server" Text="State"></asp:Label></td>
                <td style="width: 114px" align="left">
                    <asp:DropDownList ID="ddlState" runat="server" Width="164px" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label18" runat="server" Text="City"></asp:Label></td>
                <td style="width: 114px" align="left">
                    <asp:DropDownList ID="ddlCity" runat="server" Width="164px" AutoPostBack="True" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label19" runat="server" Text="Location"></asp:Label></td>
                <td style="width: 114px; height: 24px;" align="left">
                
                    <asp:DropDownList ID="ddlLocation" runat="server" Width="164px">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label20" runat="server" Text="Address"></asp:Label></td>
                <td style="width: 114px" align="left">
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="211px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddress"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label21" runat="server" Text="Zip Code"></asp:Label></td>
                <td style="width: 114px" align="left">
                    <asp:TextBox ID="txtZipCode" runat="server" Width="167px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtZipCode"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" colspan="2" style="text-align: center">
                    <strong><span style="font-size: 14pt; color: #ffffff; background-color: #808080">
                    Account Details</span></strong></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label></td>
                <td align="left" style="width: 114px">
                    <asp:TextBox ID="txtUserName" runat="server" Width="163px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtUserName"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                <td align="left" style="width: 114px">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="163px"></asp:TextBox>&nbsp;
                    <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Large"
                        Width="288px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label></td>
                <td align="left">
                    <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="159px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                        ControlToValidate="txtConfirm" ErrorMessage="Password Mismatch"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label4" runat="server" Text="Hint Question"></asp:Label></td>
                <td align="left" style="width: 114px">
                    <asp:DropDownList ID="ddlHintQuestion" runat="server" Width="172px">
                        <asp:ListItem>What is your Pet Name</asp:ListItem>
                        <asp:ListItem>What is Your Favourite TimePass</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label5" runat="server" Text="Answer"></asp:Label></td>
                <td align="left" style="width: 114px">
                    <asp:TextBox ID="txtHintAnswer" runat="server" Width="165px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtHintAnswer"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="center" colspan="2" style="height: 26px">
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />&nbsp;<asp:Button
                        ID="btnPreferedTime" runat="server" Text="Prefered Day Time" OnClick="btnPreferedTime_Click" />
                    </td>
            </tr>
            <tr>
                <td align="center" colspan="2" style="height: 7px">
                    <asp:Label ID="lblMsg" runat="server" Width="364px" Font-Bold="True" Font-Size="14pt"></asp:Label>
                    </td>
            </tr>
        </table>
    </div>
</asp:Content>

