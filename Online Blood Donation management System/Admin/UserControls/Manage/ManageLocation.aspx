<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageLocation.aspx.cs" Inherits="Admin_ManageLocation" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 100%">
            <tr>
                <td colspan="3" style="font-weight: bold; font-size: 14pt">
                    Update Location</td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label1" runat="server" Text="CityID"></asp:Label>
                </td>
                <td align="left">
                    <asp:DropDownList ID="ddlCity" runat="server" Width="236px">
                    </asp:DropDownList>
                </td>
                <td align="left">
                
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label2" runat="server" Text="Location Name"></asp:Label>
                </td>
                <td align="left">
                    &nbsp;<asp:TextBox ID="txtLocation" runat="server" Width="287px"></asp:TextBox></td>
                <td align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Location Name" ControlToValidate="txtLocation"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                
                <td align="right">
                
                <asp:Label ID="Label3" runat="server" Text="Location Description"></asp:Label>
                </td>
                <td align="left">
                    &nbsp;<asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Width="287px"></asp:TextBox></td>
                <td align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Location Description" ControlToValidate="txtDesc"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
               
                <td align="right">
                    <asp:Label ID="Label4" runat="server" Text="Location Code"></asp:Label>
                </td>
                <td align="left">
                    &nbsp;<asp:TextBox ID="txtCode" runat="server" Width="287px"></asp:TextBox></td>
                <td align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Location Code" ControlToValidate="txtCode"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
               
                <td align="right">
                    <asp:Label ID="Label5" runat="server" Text="Pincode"></asp:Label>
                </td>
                <td align="left">
                    &nbsp;<asp:TextBox ID="txtPincode" runat="server" Width="287px"></asp:TextBox></td>
                <td align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Pincode" ControlToValidate="txtPincode"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
               
                <td align="center" colspan="3">
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                    <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" /></td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="lblMsg" runat="server" Width="508px"></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>

