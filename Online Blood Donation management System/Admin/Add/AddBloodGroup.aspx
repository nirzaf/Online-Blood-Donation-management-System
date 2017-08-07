<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddBloodGroup.aspx.cs" Inherits="Admin_Add_AddBloodGroup" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%" align="center">
                          <tr>
                              <td align="center" colspan="3" style="font-weight: bold; font-size: 14pt">
                                  Add New Blood Group</td>
                          </tr>
                        <tr>
                            <td align="right" style="height: 23px" >
                                <asp:Label ID="lblCountryName" runat="server" CssClass="label" Text="Blood Group:"></asp:Label></td>
                            <td  align="left" style="height: 23px">
                                <asp:TextBox ID="txtBloodGroup" runat="server" Width="224px" ValidationGroup="GV1"></asp:TextBox></td>
                            <td align="left" style="height: 23px" >
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Blood Group" ControlToValidate="txtBloodGroup" ValidationGroup="GV1"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" >
                                <asp:Label ID="lblCountryDesc" runat="server" Text="Blood Group Description:"></asp:Label></td>
                            <td align="left">
                                <asp:TextBox ID="txtGroupDesc" runat="server" TextMode="MultiLine" Width="250px" ValidationGroup="GV1"></asp:TextBox></td>
                            <td align="left" >
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Blood Group Description" ControlToValidate="txtGroupDesc" ValidationGroup="GV1"></asp:RequiredFieldValidator></td>
                        </tr>
                          <tr>
                              <td align="center" colspan="3">
                        
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" ValidationGroup="GV1" />
                                  <asp:Button ID="btnNew" runat="server" OnClick="btnNew_Click" Text="New" /></td>
                          </tr>
                          <tr>
                              <td align="center" colspan="3">
                                  <asp:Label ID="lblMsg" runat="server" Visible="False"></asp:Label></td>
                          </tr>
                    </table>

</asp:Content>

