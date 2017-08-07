<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddNewBloodType.aspx.cs" Inherits="Admin_AddNewBloodType" Title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  
   
                      <table width="100%" align="center">
                          <tr>
                              <td align="center" colspan="3" style="font-weight: bold; font-size: 14pt">
                                  Add New Blood Type</td>
                          </tr>
                        <tr>
                            <td align="right" style="height: 23px" >
                                <asp:Label ID="lblCountryName" runat="server" CssClass="label" Text="Blood Type:"></asp:Label></td>
                            <td  align="left" style="height: 23px">
                                <asp:TextBox ID="txtBloodType" runat="server" Width="224px"></asp:TextBox></td>
                            <td align="left" style="height: 23px" >
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Blood Type" ControlToValidate="txtBloodType"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" >
                                <asp:Label ID="lblCountryDesc" runat="server" Text="Blood Type Description:"></asp:Label></td>
                            <td align="left">
                                <asp:TextBox ID="txtBloodDesc" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox></td>
                            <td align="left" >
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Blood Type description" ControlToValidate="txtBloodDesc"></asp:RequiredFieldValidator></td>
                        </tr>
                          <tr>
                              <td align="center" colspan="3">
                        
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                                  <asp:Button ID="btnNew" runat="server" OnClick="btnNew_Click" Text="New" /></td>
                          </tr>
                          <tr>
                              <td align="center" colspan="3">
                                  <asp:Label ID="lblMsg" runat="server"></asp:Label></td>
                          </tr>
                    </table>
        
    
</asp:Content>

