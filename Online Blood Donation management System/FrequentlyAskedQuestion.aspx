<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FrequentlyAskedQuestion.aspx.cs" Inherits="FrequentlyAskedQuestion" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                   <table align="center">
                    <tr>
                        <td align="center" style="width: 22px; height: 15px">
                            <asp:Image ID="Image1" runat="server" Height="19px" ImageAlign="AbsMiddle" ImageUrl="~/Images/Bullet.jpg"
                                Width="22px" /></td>
                        <td style="width: 547px;">
                            &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" OnClick="LinkButton1_Click"
                    Width="374px" Font-Bold="True" Font-Size="Medium">Why should we donate blood?</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 22px">
                            <asp:Image ID="Image9" runat="server" Height="19px" ImageAlign="AbsMiddle" ImageUrl="~/Images/Bullet.jpg"
                                Width="22px" /></td>
                        <td style="width: 547px">
                            <asp:LinkButton ID="LinkButton9" runat="server" Font-Bold="True" Font-Size="Medium"
                                ForeColor="Red" Height="19px" OnClick="LinkButton9_Click" Width="393px">What should I eat before blood-donation?</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 22px">
                            <asp:Image ID="Image2" runat="server" Height="19px" ImageAlign="AbsMiddle" ImageUrl="~/Images/Bullet.jpg"
                                Width="22px" /></td>
                        <td style="width: 547px">
                <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Red" Height="19px" OnClick="LinkButton2_Click"
                    Width="393px" Font-Bold="True" Font-Size="Medium">What should I eat after blood donation? </asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 22px">
                            <asp:Image ID="Image3" runat="server" Height="19px" ImageAlign="AbsMiddle" ImageUrl="~/Images/Bullet.jpg"
                                Width="22px" /></td>
                        <td style="width: 547px">
                <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="Medium" Width="393px" OnClick="LinkButton3_Click">Any side effects of Blood donations?</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 22px">
                            <asp:Image ID="Image4" runat="server" Height="19px" ImageAlign="AbsMiddle" ImageUrl="~/Images/Bullet.jpg"
                                Width="22px" /></td>
                        <td style="width: 547px">
                <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="Red" Width="706px" Font-Bold="True" Font-Size="Medium" OnClick="LinkButton4_Click">Can I get any disease like AIDS or Hepatitis or any other disease by Blood donation?</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 22px; height: 21px;">
                            <asp:Image ID="Image5" runat="server" Height="19px" ImageAlign="AbsMiddle" ImageUrl="~/Images/Bullet.jpg"
                                Width="22px" /></td>
                        <td style="width: 547px; height: 21px;">
                            <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Size="Medium"
                                ForeColor="Red" Width="225px" OnClick="LinkButton5_Click">How much Blood can I donate?</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 22px">
                            <asp:Image ID="Image6" runat="server" Height="19px" ImageAlign="AbsMiddle" ImageUrl="~/Images/Bullet.jpg"
                                Width="22px" /></td>
                        <td style="width: 547px">
                            <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" Font-Size="Medium"
                                ForeColor="Red" Width="269px" OnClick="LinkButton6_Click">How frequently can I donate Blood? </asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 22px">
                            <asp:Image ID="Image7" runat="server" Height="19px" ImageAlign="AbsMiddle" ImageUrl="~/Images/Bullet.jpg"
                                Width="22px" /></td>
                        <td style="width: 547px">
                            <asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" Font-Size="Medium"
                                ForeColor="Red" Width="307px" OnClick="LinkButton7_Click">Why should I become a regular blood donor?</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 22px">
                            <asp:Image ID="Image8" runat="server" Height="19px" ImageAlign="AbsMiddle" ImageUrl="~/Images/Bullet.jpg"
                                Width="22px" /></td>
                        <td style="width: 547px">
                            <asp:LinkButton ID="LinkButton8" runat="server" Font-Bold="True" Font-Size="Medium"
                                ForeColor="Red" Width="308px" OnClick="LinkButton8_Click">What exactly happens during blood-donation?</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 22px"><asp:Image ID="Image10" runat="server" Height="19px" ImageAlign="AbsMiddle" ImageUrl="~/Images/Bullet.jpg"
                                Width="22px" /></td>
                        <td style="width: 547px">
                            <asp:LinkButton ID="LinkButton10" runat="server" Font-Bold="True" Font-Size="Medium"
                                ForeColor="Red" OnClick="LinkButton10_Click" Width="308px">What happens to blood I donate?</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td align="right" style="height: 21px;" colspan="2">
                        </td>
                    </tr>
                    <tr>
                        <td align="right" colspan="2" style="height: 21px">
                            <asp:LinkButton ID="LinkButton11" runat="server" BackColor="#FFC080" Font-Bold="True"
                                ForeColor="White" OnClick="LinkButton11_Click">Post Donation Care that a donor should take after donating blood. </asp:LinkButton></td>
                    </tr>
                </table>
                <br />
            
                <div style="text-align: left">
                    <table style="height: 203px">
                        <tr>
                            <td >
                                <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="Red"
                                    Width="735px" Font-Bold="True"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="height: 6px" >
                                &nbsp;<asp:Panel ID="Panel3" runat="server" Height="50px" Width="125px" Visible="False">
                                    <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="#404040" Width="735px" Font-Bold="False" Height="90px"></asp:Label></asp:Panel>
                                <div style="text-align: center">
                                    &nbsp;</div>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
            <span style="font-size: 11pt; font-family: 'Times New Roman'"></span>
        
        
    
</asp:Content>

