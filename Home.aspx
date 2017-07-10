<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Title="Home Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 100%;
            height: 390px;
        }
        .style6
        {
            color: #FFFFFF;
        }
        .style7
        {
            color: #333300;
            text-align: center;
        }
        .style8
        {
            height: 152px;
        }
        .style9
        {
            color: #780100;
            font-family: "Bauhaus 93";
        }
    .style10
    {
        height: 152px;
        width: 181px;
    }
        .style14
        {
            color: #FFFFFF;
            font-family: "Times New Roman", Times, serif;
        }
        .style15
        {
            text-align: center;
        }
        .style16
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style5">
        <tr>
            <td>
                <h1 class="style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
                                        <h1 class="style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <span class="style14">&nbsp;&nbsp;&nbsp;&nbsp;
                    Welcome to Blood Bank India</span></h1>
                <p>
                    &nbsp;</p>
                <dl>
                    <dd>
                        <p class="style7">
                            <span class="style6">Blood is universally recognized as the most precious 
                    element that sustains life. It saves innumerable lives across the world in a 
                    variety of conditions. The need for blood is great - on any given day, 
                    approximately 39,000 units of Red Blood Cells are needed. More than 29 million 
                    units of blood components are transfused every year.</span>
                        </p>
                    </dd>
                </dl>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td align="left" class="style10" valign="top">
                            <img align="left" alt="Donate Blood" src="imagesfolder/home2.jpg" 
                                style="width: 177px; height: 170px" /></td>
                        
                        <td class="style8" valign="top">
                            <p class="style6" style="MARGIN-TOP: 0px; PADDING-TOP: 0px; width: 611px;">
                                &nbsp;
                                Despite the increase in the number of donors, blood remains in short supply 
                                during emergencies,&nbsp;&nbsp;&nbsp;&nbsp; mainly attributed to the lack of information and 
                                accessibility.</p>
                            <dl>
                                <dt class="style15" style="width: 609px; margin-top: 0px; padding-top: 0px">&nbsp;&nbsp;
                                    <span class="style16">We positively believe this tool can overcome most of these challenges by 
                                effectively connecting the blood donors with the blood recipients.</span></dt>
                            </dl>
                            <p class="style6" style="MARGIN-TOP: 0px; PADDING-TOP: 0px; width: 488px;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                    ImageUrl="~/imagesfolder/register donor.gif" 
                                    NavigateUrl="~/Registration.aspx">HyperLink</asp:HyperLink>
                                &nbsp;</p>
                        </td>
                    </tr>
                </table>
                <p>
                    &nbsp;</p>
            </td>
        </tr>
    </table>
</asp:Content>

