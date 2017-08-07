<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowBloodType.aspx.cs" Inherits="Admin_ManageBloodType" Title="Untitled Page" Theme="Theme2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 100%">
            <tr>
                <td align="left">
                    <asp:CheckBox ID="chkSelectAll" runat="server" Font-Bold="True" Text="Select All" OnCheckedChanged="chkSelectAll_CheckedChanged" AutoPostBack="True" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" /></td>
            </tr>
            <tr>
                <td style="width: 100px" align="center">
                    &nbsp;
                    <asp:GridView ID="GridView1" runat="server" Width="687px" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
                    <EmptyDataTemplate>
                    <b><font color="red">No Data Found</font></b>
                        <img src="../Admin/Images/Logo.gif" />
                    </EmptyDataTemplate>
                    <Columns>
                    <asp:TemplateField HeaderText="Blood Type ID">
                    <ItemTemplate>
                    <asp:CheckBox ID="chkid" runat="server" />
                    <asp:Label ID="lbltypeid" Text='<%#Eval("BloodTypeID") %>' runat="server">
                    </asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    
                     <asp:TemplateField HeaderText="Blood Type">
                    <ItemTemplate>
                    <asp:Label ID="lbltypename" Text='<%#Eval("TypeName") %>' runat="server">
                    </asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    
                     <asp:TemplateField HeaderText="Type Description">
                    <ItemTemplate>
                    <asp:Label ID="lbltypedesc" Text='<%#Eval("TypeDesc") %>' runat="server">
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
        </table>
    </div>
</asp:Content>

