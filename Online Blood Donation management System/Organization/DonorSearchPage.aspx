<%@ Page Language="C#" MasterPageFile="~/Organization/OrganizationMasterPage.master" AutoEventWireup="true" CodeFile="DonorSearchPage.aspx.cs" Inherits="Registration_DonorSearchPage" Title="Untitled Page" %>

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
            <td align="center" colspan="4">
                <asp:Label ID="Label5" runat="server" BackColor="White" Font-Bold="True" Font-Size="X-Large"
                    ForeColor="Red" Height="16px" Text="PLEASE SELECT LOCATION" Visible="False"
                    Width="400px"></asp:Label><br />
                <br />
            
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="720px" AllowPaging="True" EmptyDataText="No Donor Found" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5">
                <EmptyDataTemplate><b><font color="red">No Data Found</font></b></EmptyDataTemplate>
                
                <Columns>
                
                 <asp:TemplateField HeaderText="Donor Name">
               <ItemTemplate>
               <asp:Label ID="lblname" Text='<%#Eval("FirstName") %>' runat="server"></asp:Label>
               </ItemTemplate>
                </asp:TemplateField>
                
                 <asp:TemplateField HeaderText="Email">
               <ItemTemplate>
               <asp:Label ID="lblmail" Text='<%#Eval("Email") %>' runat="server"></asp:Label>
               </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Blood Group">
               <ItemTemplate>
               <asp:Label ID="lblgroup" Text='<%#Eval("BloodGroup") %>' runat="server"></asp:Label>
               </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Blood Type">
               <ItemTemplate>
               <asp:Label ID="lbltype" Text='<%#Eval("TypeName") %>' runat="server"></asp:Label>
               </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Mobile No">
               <ItemTemplate>
               <asp:Label ID="lblmob" Text='<%#Eval("MobileNo") %>' runat="server"></asp:Label>
               </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Donor Image">
               <ItemTemplate>
               <asp:Image ID="img" ImageUrl='<%#Eval("ImageURL","~/Donor/Images/{0}") %>'  runat="server" Height="100" Width="100" AlternateText="No Image Found" />
              </ItemTemplate>
              </asp:TemplateField>
                </Columns>
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                </asp:GridView>
               <%--</ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                <ItemTemplate>
                <asp:Button ID="btn" CommandName="Delete" CommandArgument='<%#Eval("OrgID") %>' Text="Delete" runat="server" />
                </ItemTemplate>
                </asp:TemplateField>--%>
                
              
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="height: 26px">
                <asp:Label ID="lblMsg" runat="server" Width="448px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

