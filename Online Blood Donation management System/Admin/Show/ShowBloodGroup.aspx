<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowBloodGroup.aspx.cs" Inherits="Admin_ShowBloodGroup" Title="Untitled Page" Theme="Theme2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 100%">
            <tr>
                <td align="left">
                    <asp:CheckBox ID="chkSelectAll" runat="server" Font-Bold="True" Text="Select All" OnCheckedChanged="chkSelectAll_CheckedChanged" AutoPostBack="True" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" /></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="631px" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
                    <EmptyDataTemplate>
                    <b><font color="red">No Data Found</font></b>
                    </EmptyDataTemplate>
                    <Columns>
                    <asp:TemplateField HeaderText="Blood Group ID">
                    <ItemTemplate>
                    <asp:CheckBox ID="chkid" runat="server" />
                    <asp:Label ID="lblbloodid" Text='<%#Eval("BloodGroupID") %>' runat="server">
                    </asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Blood Group">
                    <ItemTemplate>
                    <asp:Label ID="lblgroup" Text='<%#Eval("BloodGroup") %>' runat="server">
                    </asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                    <asp:Label ID="lbldesc" Text='<%#Eval("Description") %>' runat="server">
                    </asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" ButtonType="Button" />
                    </Columns>
                    
                    </asp:GridView>
                </td>
            </tr>
           
        </table>
    </div>
</asp:Content>

