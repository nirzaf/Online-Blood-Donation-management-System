<%@ Page Language="C#" MasterPageFile="~/Donor/DonorMasterPage.master" AutoEventWireup="true" CodeFile="DonorAccountDetail.aspx.cs" Inherits="Registration_DonorAccountDetail" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center" style="background-color: gray; width: 511px; height: 22px;">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large"
                    ForeColor="White" OnClick="LinkButton1_Click" Width="184px">Account Detail</asp:LinkButton></td>
            <td align="center" style="background-color: gray; height: 22px; width: 387px;">
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Size="Large"
                    ForeColor="White" OnClick="LinkButton2_Click" Width="200px" >Personal Detail</asp:LinkButton></td>
            <td align="center" style="background-color: gray; height: 22px;">
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Size="Large"
                    ForeColor="White" OnClick="LinkButton3_Click" Width="176px">Address Detail</asp:LinkButton></td>
        </tr>
        <tr>
            <td align="center" style="width: 511px;" valign="top" >
                <asp:Panel ID="Panel1" runat="server" Height="50px" Width="140px" Visible="False">
                <table style="width: 345px; height: 187px">
                    <tr>
                        <td align="center" colspan="2">
                            <span style="color: #ff0000">Please Enter *Value</span></td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 275px">
                            User Name</td>
                        <td align="left" style="width: 267px">
                            <asp:TextBox ID="txtUserName" runat="server" Width="181px" ReadOnly="True"></asp:TextBox></td>
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
                            <asp:Button ID="btnUpdateAccount" runat="server" Text="Change Password" OnClick="btnUpdateAccount_Click" Width="111px" /></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Width="240px" Font-Bold="True"></asp:Label></td>
                    </tr>
                </table>
                </asp:Panel>
                &nbsp;
                </td>
            <td align="center" valign="top" style="width: 387px">
                <asp:Panel ID="Panel2" runat="server" Height="50px" Width="125px" Visible="False">
                <table>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label6" runat="server" Text="First Name"></asp:Label></td>
                        <td align="left" style="width: 114px">
                            <asp:TextBox ID="txtFName" runat="server" Width="175px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label7" runat="server" Text="Middle Name"></asp:Label></td>
                        <td align="left" style="width: 114px">
                            <asp:TextBox ID="txtMName" runat="server" Width="175px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label8" runat="server" Text="Last Name"></asp:Label></td>
                        <td align="left" style="width: 114px">
                            <asp:TextBox ID="txtLName" runat="server" Width="175px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label25" runat="server" Text="Email"></asp:Label></td>
                        <td align="left" style="width: 114px">
                            <asp:TextBox ID="txtEmail" runat="server" Width="173px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" style="height: 57px">
                            <asp:Label ID="Label9" runat="server" Text="DOB"></asp:Label></td>
                        <td align="left">
                            &nbsp;<cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                            </cc1:GMDatePicker>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label23" runat="server" Text="Weight"></asp:Label></td>
                        <td align="left">
                            <asp:TextBox ID="txtWeight" runat="server" Width="143px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label10" runat="server" Text="Gender"></asp:Label></td>
                        <td align="left">
                            <asp:RadioButton ID="radMale" runat="server" Checked="True" GroupName="Gender" Text="Male" />
                            <asp:RadioButton ID="radFemale" runat="server" GroupName="Gender" Text="Female" /></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            User Image:</td>
                        <td align="center">
                            <asp:Image ID="Image1" runat="server" Height="71px" Width="218px" AlternateText="No Image Found" ForeColor="Red" /><br />
                            &nbsp;<asp:LinkButton ID="LinkButton4" runat="server">View Large Image</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label11" runat="server" Text="Upload Image"></asp:Label></td>
                        <td align="left" style="width: 114px; height: 21px">
                            <asp:FileUpload ID="FileUpload1" runat="server" Width="216px" /></td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label22" runat="server" Text="Blood Group"></asp:Label></td>
                        <td align="left" style="width: 114px">
                            <asp:DropDownList ID="ddlBloodGroup" runat="server" Width="170px">
                                <asp:ListItem>-SELECT-</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label12" runat="server" Text="Blood Type"></asp:Label></td>
                        <td align="left" style="width: 114px">
                            <asp:DropDownList ID="ddlBloodType" runat="server" Width="168px">
                                <asp:ListItem>-SELECT-</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label13" runat="server" Text="Contact No(Office)"></asp:Label></td>
                        <td align="left" style="width: 114px; height: 10px;">
                            <asp:TextBox ID="txtPhoneOffice" runat="server" Width="175px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" style="height: 26px">
                            <asp:Label ID="Label14" runat="server" Text="Contact No(Residence)" Width="158px"></asp:Label></td>
                        <td align="left" style="width: 114px; height: 26px">
                            <asp:TextBox ID="txtPhoneHome" runat="server" Width="175px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label15" runat="server" Text="Mobile No."></asp:Label></td>
                        <td align="left" style="width: 114px; height: 26px">
                            <asp:TextBox ID="txtMobile" runat="server" Width="175px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btnUpdate" runat="server" Text="Change Personal Detail" OnClick="btnUpdate_Click" Width="150px" /></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Label ID="lblUpdatePersonal" runat="server" Width="272px" Font-Bold="True"></asp:Label></td>
                    </tr>
                </table>
                </asp:Panel>
                &nbsp;</td>
            <td align="center" valign="top">
                <asp:Panel ID="Panel3" runat="server" Height="50px" Width="125px" Visible="False">
                <table style="height: 192px">
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label16" runat="server" Text="Country"></asp:Label></td>
                        <td align="left" style="width: 114px">
                            <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True"                                Width="134px" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label17" runat="server" Text="State"></asp:Label></td>
                        <td align="left" style="width: 114px">
                            <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True" 
                                Width="134px" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label18" runat="server" Text="City"></asp:Label></td>
                        <td align="left" style="width: 114px">
                            <asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="True" 
                                Width="134px" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label19" runat="server" Text="Location"></asp:Label></td>
                        <td align="left" style="width: 114px; height: 24px">
                            <asp:DropDownList ID="ddlLocation" runat="server" Width="134px">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label20" runat="server" Text="Address"></asp:Label></td>
                        <td align="left" style="width: 114px">
                            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="185px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label21" runat="server" Text="Zip Code" Width="80px"></asp:Label></td>
                        <td align="left" style="width: 114px">
                            <asp:TextBox ID="txtZipCode" runat="server" Width="216px" Height="16px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btnUpdateAddress" runat="server" Text="Change Address Detail" OnClick="btnUpdateAddress_Click" Width="141px" /></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Label ID="lblUpdateAddress" runat="server" Width="264px" Font-Bold="True"></asp:Label></td>
                    </tr>
                    
                </table>
                </asp:Panel>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

