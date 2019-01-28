<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminManageCategory.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {            width: 342px;
        }
        .style3
        {
            width: 420px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
        }
        .style5
        {
            width: 354px;
            height: 23px;
        }
        .style6
        {
            height: 23px;
        }
        .style7
        {
            width: 342px;
            height: 26px;
        }
        .style8
        {
            width: 342px;
            height: 23px;
        }
        .style9
        {
            width: 354px;
            height: 26px;
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
                            Text="Add New Category" BackColor="#3399FF" Font-Bold="True" 
                            ForeColor="White" Height="36px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="4" ForeColor="#333333" GridLines="None" 
                            onitemcommand="DataGrid1_ItemCommand" Width="448px">
                            <AlternatingItemStyle BackColor="White" />
                            <Columns>
                                <asp:BoundColumn DataField="cat_Id" HeaderText="Category Id" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="cat_name" HeaderText="Category Name"></asp:BoundColumn>
                                <asp:ButtonColumn CommandName="d" Text="Delete"></asp:ButtonColumn>
                                <asp:ButtonColumn CommandName="u" Text="Update"></asp:ButtonColumn>
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
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table align="center">
                <tr>
                    <td class="style7">
                        </td>
                    <td class="style4">
                        </td>
                </tr>
                <tr>
                    <td class="style7">
                        Category Name</td>
                    <td class="style4">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="Enter Category" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        </td>
                    <td class="style6">
                        </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="INSERT" 
                            Width="86px" BackColor="#3399FF" Font-Bold="True" ForeColor="White" />
                    </td>
                </tr>
            </table>
    </asp:View>
    <asp:View ID="View3" runat="server">
        <table align="center">
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    Category Name</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter Category" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                </td>
                <td class="style6">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="UPDATE" 
                        BackColor="#3399FF" Font-Bold="True" ForeColor="White" />
                </td>
            </tr>
        </table>
    </asp:View>
    </asp:MultiView>
    
    
    
</asp:Content>

