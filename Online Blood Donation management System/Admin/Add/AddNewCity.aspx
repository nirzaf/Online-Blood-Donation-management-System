<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddNewCity.aspx.cs" Inherits="AddNewCity" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border:0;width:100%">
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; font-size: 16pt">
                Add New City</td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 121px" >
                    <table style="border:0;width:100%">
                        <tr>
                            <td align="right" style="width: 50%">
                                <asp:Label ID="Label1" runat="server" Text="State ID:"></asp:Label></td>
                            <td align="left" style="width: 50%">
                                <asp:DropDownList id="ddlState" runat="server" Width="155px"></asp:DropDownList></td>
                            <td align="left" style="width: 50%">
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width:50%" >
                                <span style="color: red;"></span><asp:Label ID="lblCountryName" runat="server" CssClass="label" Text="City:"></asp:Label></td>
                            <td style="width:50%" align="left">
                                <asp:TextBox ID="txtCityName" runat="server" Width="257px" MaxLength="50"></asp:TextBox></td>
                            <td align="left" style="width: 50%">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter City Name" ControlToValidate="txtCityName"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width:50%">
                                <asp:Label ID="lblCountryDesc" runat="server" Text="City Description:"></asp:Label></td>
                            <td style="width:50%" align="left">
                                <asp:TextBox ID="txtCityDesc" runat="server" Width="257px" TextMode="MultiLine"></asp:TextBox></td>
                            <td align="left" style="width: 50%">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter City Description" ControlToValidate="txtCityDesc"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width:50%">
                                <span style="color: red;"></span><asp:Label ID="lblCountryCode" runat="server" Text="City Code:" ></asp:Label></td>
                                <td align="left" style="width:50%">
                                <asp:TextBox ID="txtCityCode" runat="server"></asp:TextBox></td>
                            <td align="left" style="width: 50%">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter City Code" ControlToValidate="txtCityCode" Width="140px"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnAddCity" runat="server" Text="Add" OnClick="btnAddCity_Click" />
                <asp:Button ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" />
                </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Width="502px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

