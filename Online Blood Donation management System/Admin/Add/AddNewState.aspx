<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddNewState.aspx.cs" Inherits="AddNewState" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table align="center" border="1">
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; font-size: 16pt">
                Add New State</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                
                    <table>
                        <tr>
                            <td align="right" >
                                <asp:Label ID="lblStateName" runat="server" Text="State Name:" CssClass="label"></asp:Label></td>
                            <td align="left">
                                <asp:TextBox ID="txtStateName" runat="server" Width="257px"></asp:TextBox></td>
                            <td align="left" >
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter State Name" ControlToValidate="txtStateName" ></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" >
                                <asp:Label ID="lblStateCode" runat="server" Text="State Code:" Width="157px"></asp:Label></td>
                            <td  align="left">
                                <asp:TextBox ID="txtStateCode" runat="server" Width="97px"></asp:TextBox></td>
                            <td align="left" >
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter State Code" ControlToValidate="txtStateCode" Width="135px"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" >
                                <asp:Label ID="lblStateDesc" runat="server" Text="State Description:"></asp:Label></td>
                            <td align="left" >
                                <asp:TextBox ID="txtStateDesc" runat="server" Width="257px"></asp:TextBox></td>
                            <td align="left" >
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter State Description" ControlToValidate="txtStateDesc" Width="142px"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="Label1" runat="server" Text="Country ID:" Width="157px"></asp:Label></td>
                            <td align="left" >
                                <asp:DropDownList ID="ddlCountry" runat="server" Width="200px">
                                </asp:DropDownList></td>
                            <td align="left" style="width: 3px">
                            </td>
                        </tr>
                    </table>
                
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Width="432px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnAddState" runat="server" Text="Add" OnClick="btnAddState_Click" />
                <asp:Button ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" />
                </td>
        </tr>
    </table>
</asp:Content>

