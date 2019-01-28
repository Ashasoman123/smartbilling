<%@ Page Title="" Language="C#" MasterPageFile="~/Store.master" AutoEventWireup="true" CodeFile="StoreCreateOffer.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 280px;
        }
        .style3
        {
            width: 280px;
            height: 23px;
        }
        .style4
        {
            height: 23px;
        }
        .style5
        {
            width: 280px;
            height: 20px;
        }
        .style6
        {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table align="center">
                <tr>
                    <td align="center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                            Text="Create Offer" Width="126px" BackColor="#3399FF" Font-Bold="True" 
                            ForeColor="White" Height="33px" />
                    </td>
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
                            HorizontalAlign="Center" Width="687px" 
                            onitemcommand="DataGrid1_ItemCommand">
                            <AlternatingItemStyle BackColor="White" />
                            <Columns>
                                <asp:BoundColumn DataField="offer_id" HeaderText="Offer-Id" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="offer_content" HeaderText="Offer Details"></asp:BoundColumn>
                                <asp:BoundColumn DataField="date" HeaderText="Uploaded Date">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="off_from" HeaderText="Offer Valid From">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="off_to" HeaderText="Offer Valid Till">
                                </asp:BoundColumn>
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
                        Offer Details</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="92px" TextMode="MultiLine" 
                            Width="362px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Offer Valid&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; From</td>
                    <td class="style6">
                        <asp:TextBox ID="TextBox4" runat="server" type="Date"></asp:TextBox>
                        &nbsp;&nbsp; To&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox5" runat="server" type="Date"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            style="height: 26px" Text="CREATE" Width="74px" BackColor="#3399FF" 
                            Font-Bold="True" ForeColor="White" />
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
    <p>
    </p>
</asp:Content>

