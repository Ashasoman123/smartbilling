<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewOffer.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <table align="center">
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" class="style2">
                            VIEW OFFERS</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" Font-Bold="True" Font-Italic="False" Font-Names="Calibri" 
                                Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" 
                                Font-Underline="False" ForeColor="#333333" GridLines="None" 
                                HorizontalAlign="Center" Width="581px">
                                <AlternatingItemStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundColumn DataField="offer_id" HeaderText="Offer-Id" Visible="False"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="floor" HeaderText="Floor"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="store_name" HeaderText="Store Name">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="offer_content" HeaderText="Offer-Content">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="date" HeaderText="Date"></asp:BoundColumn>
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
        </asp:MultiView>
    </p>
</asp:Content>

