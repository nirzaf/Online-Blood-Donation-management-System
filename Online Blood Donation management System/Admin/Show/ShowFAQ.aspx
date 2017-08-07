<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowFAQ.aspx.cs" Inherits="Admin_ShowFAQ" Title="Untitled Page" Theme="Theme2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 100%">
            <tr>
                <td style="width: 706px">
                </td>
            </tr>
            <tr>
                <td align="left" style="width: 706px">
                    <asp:CheckBox ID="chkSelectAll" runat="server" Font-Bold="True" Text="Select All" OnCheckedChanged="chkSelectAll_CheckedChanged" AutoPostBack="True" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" /></td>
            </tr>
            <tr>
                <td align="center" style="width: 706px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="739px" OnRowEditing="GridView1_RowEditing" AllowPaging="True" PageSize="3" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting">
                    <EmptyDataTemplate><b><font color="red">No Data Found</font></b>
                        <img src="../Admin/Images/Logo.gif" />
                    </EmptyDataTemplate>
                    <Columns>
                    <asp:TemplateField HeaderText="Question Id">
                    <ItemTemplate>
                    <asp:CheckBox ID="chkid" runat="server" />
                    <asp:Label ID="lblid" Text='<%#Eval("FaqID") %>' runat="server">
                    </asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Question">
                    <ItemTemplate>
                    <asp:Panel ID="pnlq" runat="server" ScrollBars="both" Enabled="true"></asp:Panel>
                    <asp:Label ID="lblquestion" Text='<%#Eval("Question") %>' runat="server" Width="100">
                    </asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Answer">
                    <ItemTemplate>
                    <asp:Panel ID="pnla" runat="server" ScrollBars="Vertical"  Direction="LeftToRight" Enabled="true" Width="300" Height="100"> 
                                        <%#Eval("Answer") %>
                    </asp:Panel>
                   
                    </ItemTemplate>
                    </asp:TemplateField>
                      
                       <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ButtonType="Button" >
                           <ControlStyle ForeColor="Red" />
                       </asp:CommandField>
                    
                   
                    </Columns>
                        <PagerSettings FirstPageImageUrl="~/Images/Bullet.jpg" NextPageImageUrl="~/Images/Bullet.jpg" FirstPageText="First" LastPageImageUrl="~/Images/Bullet.jpg" LastPageText="Last" Mode="NextPrevious" NextPageText="Next" Position="TopAndBottom" PreviousPageImageUrl="~/Images/Bullet.jpg" PreviousPageText="Previous" />
                        <PagerStyle BackColor="White" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

