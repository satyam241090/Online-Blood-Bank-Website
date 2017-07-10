<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="afterrequest.aspx.cs" Inherits="afterrequest" Title="Request Succeeded" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 479px;
            height: 299px;
        }
        .style16
        {
            height: 99px;
            width: 110px;
        }
        .style18
        {
        }
        .style19
        {
            height: 99px;
            color: #9A1411;
        }
        .style20
        {
            height: 117px;
        }
        .style21
        {
            width: 264px;
        }
        .style22
        {
            width: 91px;
        }
        .style23
        {
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table align="center" class="style14">
            <tr>
                <td align="justify" class="style16" valign="top">
                    <asp:Image ID="Image2" runat="server" Height="103px" 
                        ImageUrl="~/imagesfolder/mail red.jpg" Width="110px" />
                </td>
                <td class="style19" colspan="2">
                    <span class="style23">Your Request for Required Blood Group is Succeeded !</span></td>
            </tr>
            <tr>
                <td class="style20" colspan="3">
                    <br />
                    <br />
                    Request is Forwarded to Our Renowned Donors,<br />
                    you will be contacted soon...<br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style21">
                    &nbsp;</td>
                <td class="style22">
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

