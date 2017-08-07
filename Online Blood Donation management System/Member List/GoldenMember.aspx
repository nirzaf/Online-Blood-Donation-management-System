<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GoldenMember.aspx.cs" Inherits="Member_List_GoldenMember" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" align="center">
        <tr>
            <td align="center" style="font-weight: bold; font-size: 18pt; color: #ff9900; width: 553px;" valign="top">
                Our Golden Member</td>
        </tr>
        <tr>
            <td valign="top" align="center" style="width: 553px" >
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" Width="552px" GridLines="Both" HorizontalAlign="center">
                     
                 <ItemTemplate>
                <asp:Image ID="img" ImageUrl='<%#Eval("ImageURL","~/Donor/Images/{0}") %>' Height="80" Width="60" runat="server" AlternateText="No Image Found"/><br />
                <asp:Label ID="lbl1" Text='<%#Eval("FirstName") %>' runat="server" Font-Bold="true" Font-Size="Large" ForeColor="Red"></asp:Label>
                </ItemTemplate>
                    <SeparatorStyle BorderColor="Silver" BorderStyle="Ridge" HorizontalAlign="Center"
                        VerticalAlign="Top" BackColor="White" />
                    <AlternatingItemStyle BorderColor="Silver" BorderStyle="Ridge" />
                    <ItemStyle BorderColor="Silver" BorderStyle="Ridge" />
                
                </asp:DataList></td>
        </tr>
    </table>
    <br />
    <br />
    <table style="left: 107px; width: 530px; position: relative; top: -15px; height: 145px">
        <tr>
            <td style="width: 100px">
                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/Images/DSC08814.JPG" /></td>
            <td style="width: 100px">
                <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/Images/DSC08816.JPG" /></td>
            <td style="width: 100px">
                <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl="~/Images/DSC08819.JPG"
                    Width="121px" /></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

