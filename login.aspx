<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Donor Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 570px;
            height: 242px;
        }
        .style15
        {
            color: #3366FF;
            font-size: x-large;
            text-decoration: underline;
            font-weight: bold;
        }
        .style16
        {
            width: 145px;
            }
        .style17
        {
            width: 138px;
            }
        .style18
        {
            height: 21px;
        }
        .style20
        {
            height: 187px;
            width: 212px;
        }
        .style23
        {
            height: 22px;
        }
        .style26
        {
            width: 145px;
            height: 39px;
        }
        .style28
        {
            width: 138px;
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p class="style15">
        DONOR LOGIN</p>
    <table align="center" class="style14">
        <tr>
            <td class="style18" colspan="3">
                &nbsp;</td>
            
        </tr>
        <tr>
            <td align="left" class="style20" rowspan="3" valign="top">
                <asp:Image ID="Image2" runat="server" Height="167px" 
                    ImageUrl="~/imagesfolder/login.jpg" Width="212px" />
            </td>
            <td class="style26">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                User Name :</td>
            <td class="style28">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style26">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Password :</td>
            <td class="style28">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style16">
                </td>
            <td class="style17">
                <asp:Button ID="Button1" runat="server" Height="29px" Text="Log In" 
                    Width="64px" onclick="Button1_Click" />
                <br />
                <br />
                Not Registred ?<asp:HyperLink ID="HyperLink5" runat="server">Register</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style23" colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

