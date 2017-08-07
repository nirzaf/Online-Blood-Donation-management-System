<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowCountry.aspx.cs" Inherits="Admin_ManageCountry" Title="Untitled Page" Theme="Theme2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2" align="center">
                </td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                <asp:CheckBox ID="CheckBox1" runat="server" Font-Bold="True" Text="Select All" Width="101px" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" /></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="683px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" >
                  <EmptyDataTemplate>
                     <b><font color=red>No Country Found</b></font>
                      <img src="../Admin/Images/Logo.gif" />
                       </EmptyDataTemplate>
                <Columns>
                <asp:TemplateField HeaderText="Country Id">
                <ItemTemplate>
                <asp:CheckBox ID="chkId" runat="server" />
                <asp:Label ID="lblCountryId" Text='<%#Eval("CountryID") %>' runat="server">
                </asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Country Name" >
                <ItemTemplate>
                <asp:Label ID="lblCountryName" Text='<%#Eval("CountryName") %>' runat="server">
                </asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                <asp:TextBox ID="txtCountryName" Text='<%#Eval("CountryName") %>' runat="server"></asp:TextBox>
                </EditItemTemplate>
                </asp:TemplateField>
                
                 <asp:TemplateField HeaderText="Country Description" >
                <ItemTemplate>
                <asp:Label ID="lblCountryDesc" Text='<%#Eval("CountryDesc") %>' runat="server">
                </asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                <asp:Panel ID="pnlCountryDesc" runat="server" ScrollBars="Vertical">
                <asp:TextBox ID="txtCountryDesc" Text='<%#Eval("CountryDesc") %>' runat="server"></asp:TextBox>
                </asp:Panel>
                </EditItemTemplate>
                </asp:TemplateField>
                
                 <asp:TemplateField HeaderText="Country Code" >
                <ItemTemplate>
                <asp:Label ID="lblCountryCode" Text='<%#Eval("CountryCode") %>' runat="server">
                </asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                <asp:TextBox ID="txtCountryCode" Text='<%#Eval("CountryCode") %>' runat="server"></asp:TextBox>
                </EditItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ButtonType="Button" />
                </Columns>
                
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="height: 21px;" align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Width="371px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

