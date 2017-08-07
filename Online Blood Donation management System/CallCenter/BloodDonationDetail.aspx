<%@ Page Language="C#" MasterPageFile="~/CallCenter/CallCenterMasterPage.master" AutoEventWireup="true" CodeFile="BloodDonationDetail.aspx.cs" Inherits="Registration_BloodDonationDetail" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td align="center" style="background-color: gray; text-align: center; height: 24px;">
                <strong><span style="font-size: 14pt; color: #ffffff">Donation Detail</span></strong></td>
        </tr>
        <tr>
            <td align="center" valign="top">
                    <table style="width: 452px">
                        <tr>
                            <td align="center" colspan="2">
                                <span style="color: #ff0000">Please Eneter *Value</span></td>
                        </tr>
                        <tr>
                            <td align="left">
                                Donor Name<span style="color: #ff0000">*</span>:</td>
                            <td align="left" style="width: 114px">
                                <asp:DropDownList ID="ddlDonorName" runat="server" Width="140px">
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td align="left" style="height: 33px">
                                Donation Date<span style="color: #ff0000">*</span>:</td>
                            <td align="left" style="height: 33px;">
                                <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                                </cc1:GMDatePicker>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                Taker Name<span style="color: #ff0000">*</span>:</td>
                            <td align="left" style="width: 114px">
                                <asp:DropDownList ID="ddlTakerName" runat="server" Width="136px">
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td align="left">
                                Organization Name<span style="color: #ff0000">*</span>:</td>
                            <td align="left" style="width: 114px">
                                <asp:DropDownList ID="ddlOrgName" runat="server" Width="138px">
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td align="left">
                                Quantity<span style="color: #ff0000">*</span>:</td>
                            <td align="left" style="width: 114px">
                                <asp:TextBox ID="txtQty" runat="server" Width="164px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="left">
                                Comment:</td>
                            <td align="left" style="width: 114px">
                                <asp:TextBox ID="txtComment" runat="server" Width="163px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Button ID="btnSubmit" runat="server"
                                    Text="Submit" OnClick="btnSubmit_Click" /></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Label ID="lblMsg" runat="server" Width="306px" Font-Bold="True"></asp:Label></td>
                        </tr>
                    </table>
                &nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

