<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowDonationFrequency.aspx.cs" Inherits="Admin_ShowDonationFrequency" Title="Untitled Page" Theme="Theme2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" Font-Bold="True" Text="Select All" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" /></td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="600px" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
                <Columns>
                <asp:TemplateField HeaderText="Frequency ID">
                <ItemTemplate>
                <asp:CheckBox ID="chkid" runat="server" />
                <asp:Label ID="lblfreqid" Text='<%#Eval("FrequencyID") %>' runat="server"></asp:Label>
                </ItemTemplate>                
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Donation Frequency">
                <ItemTemplate>
                <asp:Label ID="lblFreq" Text='<%#Eval("Frequency") %>' runat="server">
                </asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Frequency Description">
                <ItemTemplate>
                <asp:Label ID="lblDesc" Text='<%#Eval("Description") %>' runat="server">
                </asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" ButtonType="Button" />
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

