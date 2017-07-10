<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chart.aspx.cs" Inherits="chart" Title="Compatibility Chart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 645px;
            height: 314px;
        }
        .style15
        {
            height: 51px;
        }
        .style18
        {
            color: #A92E2E;
            font-size: large;
        }
        .style19
        {
            width: 92px;
        }
        .style20
        {
            width: 11px;
        }
        .style21
        {
            height: 51px;
            }
        .style22
        {
            color: #99CCFF;
            font-family: "Lucida Sans";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style14">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style18" colspan="6" valign="middle">
                <span class="style22">BLOOD COMPATIBILITY CHART</span><br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style15" colspan="2">
            </td>
            <td class="style15">
                <asp:Image ID="Image2" runat="server" Height="295px" 
                    ImageUrl="~/imagesfolder/bloodchart.gif" Width="437px" />
            </td>
            <td class="style21" colspan="3">
            </td>
        </tr>
        <tr>
            <td colspan="6" align="center" valign="middle">
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" 
                    ImageUrl="~/imagesfolder/goback.jpg" Width="99px" 
                    PostBackUrl="~/Search.aspx" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

