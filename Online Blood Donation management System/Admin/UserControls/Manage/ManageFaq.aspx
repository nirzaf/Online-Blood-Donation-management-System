<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageFaq.aspx.cs" Inherits="Admin_ManageFaq" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; font-size: 14pt">
                Update Question &amp; Answer</td>
        </tr>
        <tr>
            <td align="right" style="width: 100px; height: 52px">
                <asp:Label ID="Label1" runat="server" Text="Question"></asp:Label></td>
            <td align="left" style="width: 100px; height: 52px">
                <asp:TextBox ID="txtQuestion" runat="server" Height="87px" TextMode="MultiLine" Width="385px"></asp:TextBox></td>
            <td align="left" style="width: 100px; height: 52px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuestion"
                    ErrorMessage="Enter Question"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="width: 100px">
                <asp:Label ID="Label2" runat="server" Text="Answer"></asp:Label></td>
            <td align="left" style="width: 100px">
                <asp:TextBox ID="txtAnswer" runat="server" Height="87px" TextMode="MultiLine" Width="385px"></asp:TextBox></td>
            <td align="left" style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAnswer"
                    ErrorMessage="Enter Answer"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" /></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="lblMsg" runat="server" Width="453px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

