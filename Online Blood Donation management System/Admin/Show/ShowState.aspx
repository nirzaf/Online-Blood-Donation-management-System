<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowState.aspx.cs" Inherits="Admin_ManageState" Title="Untitled Page" Theme="Theme2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center" colspan="2">
                </td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Font-Bold="True"
                    Text="Select All" Width="101px" OnCheckedChanged="CheckBox1_CheckedChanged" />
                <asp:Button ID="btnDelete" runat="server"  Text="Delete" OnClick="btnDelete_Click" /></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"                    
                    Width="683px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
                      <EmptyDataTemplate>
                     <b><font color=red>No State Found</b></font>
                          <img src="../Admin/Images/Logo.gif" />
                       </EmptyDataTemplate>
                    <Columns>
                        <asp:TemplateField HeaderText="State Id">
                            <ItemTemplate>
                                <asp:CheckBox ID="chkId" runat="server" />
                                <asp:Label ID="lblStateId" runat="server" Text='<%#Eval("StateID") %>'>
                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="State Name">
                            <ItemTemplate>
                                <asp:Label ID="lblStateName" runat="server" Text='<%#Eval("StateName") %>'>
                </asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtStateName" runat="server" Text='<%#Eval("StateName") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="State Code">
                            <ItemTemplate>
                                <asp:Label ID="lblStateCode" runat="server" Text='<%#Eval("StateCode") %>'>
                </asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtStateCode" runat="server" Text='<%#Eval("StateCode") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="State Description">
                            <ItemTemplate>
                                <asp:Label ID="lblStateDesc" runat="server" Text='<%#Eval("StateDesc") %>'>
                </asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Panel ID="pnlStateDesc" runat="server" ScrollBars="Vertical">
                                    <asp:TextBox ID="txtStateDesc" runat="server" Text='<%#Eval("StateDesc") %>'></asp:TextBox>
                                </asp:Panel>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        
                                             
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 21px">
                <asp:Label ID="lblMsg" runat="server" Width="532px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

