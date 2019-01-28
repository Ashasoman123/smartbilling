<%@ Page Title="" Language="C#" MasterPageFile="~/Store.master" AutoEventWireup="true" CodeFile="StoreViewOrders.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: x-large;
        }
    .style3
    {
        height: 23px;
    }
        .style4
        {
            font-size: x-large;
            height: 19px;
        }
        .style5
        {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <table align="center">
                    <tr>
                        <td class="style5">
                            </td>
                    </tr>
                    <tr>
                        <td align="center" class="style4">
                            VIEW ORDERS</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" ForeColor="#333333" GridLines="None" Width="762px" 
                                onitemcommand="DataGrid1_ItemCommand">
                                <AlternatingItemStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundColumn DataField="ormas_id" HeaderText="Order-Id"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="date" HeaderText="Date"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="f_name" HeaderText="Name of Customer">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="total_amount" HeaderText="Total Amount">
                                    </asp:BoundColumn>
                                    <asp:ButtonColumn CommandName="v" Text="VIEW PRODUCTS"></asp:ButtonColumn>
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
                    <tr>
                        <td>
                            
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                            <table align="center">
                                <tr>
                                    <td class="style5">
                                        </td>
                                </tr>
                                <tr>
                                    <td align="center" class="style2">
                                        PRODUCT DETAILS</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" 
                                            CellPadding="4" ForeColor="#333333" GridLines="None" Width="762px">
                                            <AlternatingItemStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundColumn DataField="odd_id" Visible="False"></asp:BoundColumn>
                                                <asp:BoundColumn DataField="product_id" HeaderText="Product Id">
                                                </asp:BoundColumn>
                                                <asp:BoundColumn DataField="description" HeaderText="Name of Product">
                                                </asp:BoundColumn>
                                                <asp:BoundColumn DataField="quantity" HeaderText="Quantity"></asp:BoundColumn>
                                                <asp:BoundColumn DataField="price" HeaderText="Price"></asp:BoundColumn>
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
                                <tr>
                                    <td align="center">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                            Text="VERIFIED" BackColor="#3399FF" Font-Bold="True" ForeColor="White" />
                                    </td>
                                </tr>
                            </table>
                            </asp:View>
        </asp:MultiView>
    </p>
</asp:Content>

