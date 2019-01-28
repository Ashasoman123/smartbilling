<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminManageProfile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 228px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table align="center">
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                            Text="Create Mall Profile" Width="165px" BackColor="#3399FF" 
                            Font-Bold="True" ForeColor="White" Height="35px" />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowCustomPaging="True" 
                            AutoGenerateColumns="False" CellPadding="4" Font-Bold="True" 
                            Font-Italic="False" Font-Names="Calibri" Font-Overline="False" 
                            Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" 
                            ForeColor="#333333" GridLines="None" HorizontalAlign="Center" 
                            Width="859px" onitemcommand="DataGrid1_ItemCommand">
                            <AlternatingItemStyle BackColor="White" />
                            <Columns>
                                <asp:BoundColumn DataField="profile_id" HeaderText="Id" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="contact_no" HeaderText="Contact Number">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="email" HeaderText="E-mail"></asp:BoundColumn>
                                <asp:BoundColumn DataField="web_address" HeaderText="Web Address">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="facilities" HeaderText="Facilities">
                                </asp:BoundColumn>
                                <asp:ButtonColumn CommandName="u" Text="Update"></asp:ButtonColumn>
                                <asp:ButtonColumn CommandName="d" Text="Delete"></asp:ButtonColumn>
                            </Columns>
                            <EditItemStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <ItemStyle BackColor="#EFF3FB" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        </asp:DataGrid>
                    </td>
                </tr>
            </table>
            <br />
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table align="center">
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        Contact Number</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="164px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Enter Valid Contact Number" 
                            ForeColor="Red" ValidationExpression="[0-9]{10,12}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        E-mail</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="237px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="Enter Valid Email" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Web Address</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" Width="238px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox9" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="TextBox9" ErrorMessage="Enter Valid Web Address" 
                            ForeColor="Red" ValidationExpression="[www.a-zA-Z ]"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Facilities</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Height="86px" 
                            Width="445px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            Text="CREATE" BackColor="#3399FF" Font-Bold="True" ForeColor="White" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
                        <table align="center">
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Contact Number</td>
                                <td>
                                    <asp:TextBox ID="TextBox10" runat="server" Width="164px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    E-mail</td>
                                <td>
                                    <asp:TextBox ID="TextBox11" runat="server" Width="237px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Web Address</td>
                                <td>
                                    <asp:TextBox ID="TextBox12" runat="server" Width="238px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Facilities</td>
                                <td>
                                    <asp:TextBox ID="TextBox13" runat="server" Height="86px" TextMode="MultiLine" 
                                        Width="445px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                </td>
                                <td>
                                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="UPDATE" 
                                        BackColor="#3399FF" Font-Bold="True" ForeColor="White" />
                                </td>
                            </tr>
                        </table>
                        </asp:View>
    </asp:MultiView>
    
</asp:Content>

