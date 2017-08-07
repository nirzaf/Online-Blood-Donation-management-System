<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowOrganization.aspx.cs" Inherits="Admin_ShowOrganization" Title="Untitled Page" Theme="Theme2"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="left">
                <asp:CheckBox ID="chkSelectAll" runat="server" AutoPostBack="True" Font-Bold="True"
                    OnCheckedChanged="chkSelectAll_CheckedChanged" Text="Select All" />
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" /></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting"
                    OnRowEditing="GridView1_RowEditing" Width="631px">
                    <EmptyDataTemplate>
                        <b><font color="red">No Data Found</font></b>
                    </EmptyDataTemplate>
                    <Columns>
                        <asp:TemplateField HeaderText="OrgType ID">
                            <ItemTemplate>
                                <asp:CheckBox ID="chkid" runat="server" />
                                <asp:Label ID="lblorgid" runat="server" Text='<%#Eval("TypeID") %>'>
                    </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Organization Type">
                            <ItemTemplate>
                                <asp:Label ID="lblorgtype" runat="server" Text='<%#Eval("TypeName") %>'>
                    </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:Label ID="lbldesc" runat="server" Text='<%#Eval("TypeDescription") %>'>
                    </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Organization Image">
                            <ItemTemplate>
                                <asp:Image ID="imgorg" runat="server" ImageUrl='<%#Eval("OrgImage","~/Admin/OrganizationImages/{0}") %>' AlternateText="No Image Found" Height="90" Width="80"/>
                                        
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="true" ShowEditButton="true" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

