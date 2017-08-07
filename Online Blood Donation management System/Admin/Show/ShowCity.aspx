<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowCity.aspx.cs" Inherits="Admin_ManageCity" Title="Untitled Page" Theme="Theme2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center">
                </td>
        </tr>
        <tr>
            <td align="left">
                <asp:CheckBox ID="chkSelectAll" runat="server" Font-Bold="True" Text="Select All" AutoPostBack="True" OnCheckedChanged="chkSelectAll_CheckedChanged" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" /></td>
        </tr>
        <tr>
            <td align="center" style="width: 100px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="701px" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
                      <EmptyDataTemplate>
                     <b><font color=red>No City Found</b></font>
                          <img src="../Admin/Images/Logo.gif" />
                       </EmptyDataTemplate>
                    <Columns>
                    <asp:TemplateField HeaderText="City Id">
                    <ItemTemplate>
                    <asp:CheckBox ID="chkid" runat="server" />
                    <asp:Label ID="lblCityId" Text='<%#Eval("CityID") %>' runat="server">
                    </asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="City Name">
                    <ItemTemplate>
                    <asp:Label ID="lblCityName" Text='<%#Eval("CityName") %>' runat="server">
                    </asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="City Description">
                    <ItemTemplate>
                    <asp:Label ID="lblCityDesc" Text='<%#Eval("CityDesc") %>' runat="server">
                    </asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="City Code">
                    <ItemTemplate>
                    <asp:Label ID="lblCityCode" Text='<%#Eval("CityCode") %>' runat="server">
                    </asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ButtonType="Button"/>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 100px">
                <asp:Label ID="lblMsg" runat="server" Width="501px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

