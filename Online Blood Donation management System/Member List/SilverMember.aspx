<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SilverMember.aspx.cs" Inherits="Member_List_SilverMember" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center" style="font-weight: bold; font-size: 18pt; color: gray" valign="top">
                Our Silver Member</td>
        </tr>
        <tr>
            <td align="center" valign="top">
                <asp:DataList ID="DataList2" runat="server" GridLines="Both" HorizontalAlign="center"
                    RepeatColumns="2" Width="552px">
                    <ItemTemplate>
                        <asp:Image ID="img" runat="server" Height="80" ImageUrl='<%#Eval("ImageURL","~/Donor/Images/{0}") %>'
                            Width="60" AlternateText="No Image Found"/><br />
                        <asp:Label ID="lbl1" runat="server" Font-Bold="true" Font-Size="Large" ForeColor="Red"
                            Text='<%#Eval("FirstName") %>'></asp:Label>
                    </ItemTemplate>
                    <AlternatingItemStyle BorderColor="Silver" BorderStyle="Ridge" />
                    <ItemStyle BorderColor="Silver" BorderStyle="Ridge" />
                    <SeparatorStyle BackColor="White" BorderColor="Silver" BorderStyle="Ridge" HorizontalAlign="Center"
                        VerticalAlign="Top" />
                </asp:DataList></td>
        </tr>
    </table>
    <br />
    <table style="left: 21px; width: 541px; position: relative; top: -9px; height: 159px">
        <tr>
            <td style="width: 89px">
                <asp:Image ID="Image1" runat="server" Height="149px" ImageUrl="~/Images/DSC08816.JPG"
                    Width="191px" /></td>
            <td style="width: 100px">
                <asp:Image ID="Image2" runat="server" Height="155px" ImageUrl="~/Images/DSC08819.JPG"
                    Width="180px" /></td>
        </tr>
    </table>
</asp:Content>

