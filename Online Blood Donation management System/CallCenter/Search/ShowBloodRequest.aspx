<%@ Page Language="C#" MasterPageFile="~/Callcenter/CallcenterMasterPage.master" AutoEventWireup="true" CodeFile="ShowBloodRequest.aspx.cs" Inherits="Admin_Report_ShowBloodRequest" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="center" style="width: 820px">
                <strong>Blood Request Date:</strong><cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                </cc1:GMDatePicker>
                <strong>Request By:</strong><asp:DropDownList ID="ddlReqType" runat="server" AutoPostBack="True"
                    OnSelectedIndexChanged="ddlReqType_SelectedIndexChanged" Width="124px">
                </asp:DropDownList>&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
            <asp:GridView ID="GridView1" runat="server" EmptyDataText="No Request Found"
                    Width="917px" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                    <Columns>
                   <asp:CommandField ShowSelectButton="True" SelectText="Find Donor" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

