<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="FAQ" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td style="width: 100px">
                <asp:GridView ID="GridView1" runat="server" Width="604px" AutoGenerateColumns="False" Font-Bold="True" ForeColor="DimGray" OnRowCommand="GridView1_RowCommand">
                <Columns>
                <asp:TemplateField HeaderText="Select Question" >
                <ItemTemplate>
                <asp:LinkButton ID="lnk" Text='<%#Eval("Question") %>' CommandName="Select" CommandArgument='<%#Eval("FaqID") %>' runat="server" Font-Bold="true" ForeColor="Red"></asp:LinkButton>
                </ItemTemplate>
                </asp:TemplateField>
                </Columns>
                    <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="lblAnswer" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="DimGray"
                    Height="52px" Width="604px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

