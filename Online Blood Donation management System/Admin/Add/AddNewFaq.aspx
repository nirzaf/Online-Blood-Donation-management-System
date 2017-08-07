<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddNewFaq.aspx.cs" Inherits="Admin_AddNewFaq" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        &nbsp;<table>
            <tr>
                <td align="center" colspan="3" style="font-weight: bold; font-size: 14pt">
                    Add New Question</td>
            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblquestion" runat="server" CssClass="label" Text="Question:"></asp:Label></td>
                                <td style="width: 121px">
                                    <asp:TextBox ID="txtAnswer" runat="server" Width="257px" TextMode="MultiLine"></asp:TextBox></td>
                                <td align="left" style="width: 121px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Question" ControlToValidate="txtQuestion"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblAnswer" runat="server" Text="Answer:"></asp:Label></td>
                                <td style="width: 121px">
                                    <asp:TextBox ID="txtQuestion" runat="server" Width="257px" TextMode="MultiLine"></asp:TextBox></td>
                                <td align="left" style="width: 121px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Answer" ControlToValidate="txtAnswer"></asp:RequiredFieldValidator></td>
                            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click"  />
                    <asp:Button ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" /></td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="lblMsg" runat="server" Width="313px"></asp:Label></td>
            </tr>
                        </table>
        &nbsp;
    </div>
</asp:Content>

