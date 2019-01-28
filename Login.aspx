<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 262px;
        }
        .style4
        {
            height: 30px;
        }
        .style5
        {
            width: 262px;
            height: 20px;
        }
        .style6
        {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="h1_wrapper">
<div class="">
<div class="">
<div class="clearfix">
<div class="h1_inner">
<h1>Login Here</h1>
</div>
</div>
</div>
</div>
</div>

    <table align="center">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                User Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="147px" placeholder="Username" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Password</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="24px" 
                    Width="148px" placeholder="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td align="center" colspan="2" class="style4">
                <asp:Button ID="Button1" runat="server" Text="LOGIN" onclick="Button1_Click" 
                    Width="94px" Height="38px" BackColor="#3399FF" Font-Bold="True" 
                    ForeColor="White" />
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
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" 
                    Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

