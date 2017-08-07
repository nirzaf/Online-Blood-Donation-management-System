<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowLocation.aspx.cs" Inherits="Admin_ManageLocation" Title="Untitled Page" Theme="Theme2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 100%">
            <tr>
                <td align="left">
                    <asp:CheckBox ID="CheckBox1" runat="server" Font-Bold="True" Text="Select All" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" /></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="699px" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
                       <EmptyDataTemplate>
                     <b><font color=red>No Location Found</b></font>
                           <img src="../Admin/Images/Logo.gif" />
                       </EmptyDataTemplate>
                        <Columns>
                       
                        <asp:TemplateField HeaderText="Location ID">
                        <ItemTemplate>
                        <asp:CheckBox ID="chkid" runat="server" />
                        <asp:Label ID="lblLocationId" Text='<%#Eval("LocationID") %>' runat="server">
                        </asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Location Name">
                        <ItemTemplate>
                        <asp:Label ID="lblLocationName" Text='<%#Eval("LocationName") %>' runat="server">
                        </asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Location Description">
                        <ItemTemplate>
                        <asp:Label ID="lblLocationDesc" Text='<%#Eval("LocationDesc") %>' runat="server">
                        </asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Location Code">
                        <ItemTemplate>
                        <asp:Label ID="lblLocationCode" Text='<%#Eval("LocationCode") %>' runat="server">
                        </asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Pincode">
                        <ItemTemplate>
                        <asp:Label ID="lblLocationPinCode" Text='<%#Eval("Pincode") %>' runat="server">
                        </asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ButtonType="Button" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

