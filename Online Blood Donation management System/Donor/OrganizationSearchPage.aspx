<%@ Page Language="C#" MasterPageFile="~/Donor/DonorMasterPage.master" AutoEventWireup="true" CodeFile="OrganizationSearchPage.aspx.cs" Inherits="Registration_DonorSearchPage" Title="Untitled Page" %>

<%@ Register Src="UserControls/CoomonUserControl.ascx" TagName="CoomonUserControl"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; font-size: 14pt; color: #ffffff;
                background-color: gray">
                Search For Organization</td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label1" runat="server" Text="Select Country:" Width="104px"></asp:Label></td>
            <td style="width: 104px">
                <asp:DropDownList ID="ddlCountry" runat="server" Width="136px" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                </asp:DropDownList></td>
            <td align="right">
                <asp:Label ID="Label2" runat="server" Text="Select State:" Width="88px"></asp:Label></td>
            <td>
                <asp:DropDownList ID="ddlState" runat="server" Width="136px" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label3" runat="server" Text="Select City:" Width="80px"></asp:Label></td>
            <td style="width: 104px">
                <asp:DropDownList ID="ddlCity" runat="server" Width="136px" AutoPostBack="True" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged">
                </asp:DropDownList></td>
            <td align="right">
                <asp:Label ID="Label4" runat="server" Text="Select Location:" Width="112px"></asp:Label></td>
            <td style="width: 72px">
                <asp:DropDownList ID="ddlLocation" runat="server" Width="136px" AutoPostBack="True" OnSelectedIndexChanged="ddlLocation_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left" colspan="4">
                <asp:CheckBox ID="CheckBox1" runat="server" Font-Bold="True" Font-Size="Large" Text="Select All" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /></td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Label ID="Label5" runat="server" BackColor="White" Font-Bold="True" Font-Size="X-Large"
                    ForeColor="Red" Height="16px" Text="PLEASE SELECT LOCATION" Visible="False"
                    Width="400px"></asp:Label><br />
                <asp:Label ID="lblMsg" runat="server" Width="423px" Font-Bold="True" Font-Size="14pt"></asp:Label><br />
            
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="720px" OnRowCommand="GridView1_RowCommand" >
                <EmptyDataTemplate><b><font color="red">No Data Found</font></b></EmptyDataTemplate>
                
                <Columns>
                <asp:TemplateField HeaderText="Select">
               <ItemTemplate>
               <asp:Label ID="lblid" Text='<%#Eval("OrgID") %>' runat="server" Visible="false"></asp:Label>
               <asp:CheckBox ID="chkid" runat="server" />
               
               </ItemTemplate>
                </asp:TemplateField>
                
                 <asp:TemplateField HeaderText="Organization Name">
               <ItemTemplate>
               <asp:Label ID="lblorgname" Text='<%#Eval("OrgName") %>' runat="server"></asp:Label>
               </ItemTemplate>
                </asp:TemplateField>
                
                 <asp:TemplateField HeaderText="Organization Type">
               <ItemTemplate>
               <asp:Label ID="lblorgtype" Text='<%#Eval("TypeName") %>' runat="server"></asp:Label>
               </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Organization Image">
               <ItemTemplate>
               <asp:Image ID="imgorgimage" ImageUrl='<%#Eval("OrgImageURL","~/Organization/Images/{0}") %>' AlternateText="No Image Found" runat="server" Height="100" Width="100"/>
              </ItemTemplate>
              </asp:TemplateField>
           
               <asp:TemplateField>
                <ItemTemplate>
                <asp:Button ID="btn" CommandName="Select" CommandArgument='<%#Eval("OrgID") %>' Text="Select" runat="server" />
                </ItemTemplate>
                </asp:TemplateField>
                 </Columns>
                </asp:GridView>
              
            </td>
        </tr>
    </table>
</asp:Content>

