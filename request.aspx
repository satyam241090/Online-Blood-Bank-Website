<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="request.aspx.cs" Inherits="request" Title="Request For Blood" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 100%;
        }
        .style16
        {
            color: #000066;
            font-weight: bold;
            background-color: #FFFFFF;
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
        }
        .style17
        {
        }
        .style21
        {
            height: 39px;
        }
        #Reset1
        {
            height: 27px;
            width: 68px;
        }
        .style24
        {
            width: 36%;
        }
        .style27
        {
            width: 197px;
        }
        .style28
        {
            width: 46%;
        }
        .style29
        {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
            font-weight: bold;
            text-decoration: underline;
            color: #CC0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style29">Request Blood</span>&nbsp;
        <asp:Image ID="Image2" runat="server" Height="64px" 
            ImageUrl="~/imagesfolder/donor4.GIF" Width="140px" />
    </p>
    <table align="right" class="style15">
        <tr>
            <td align="center" class="style24" valign="middle">
                <span class="style16">Patient Details</span>&nbsp;
                <asp:Image ID="Image3" runat="server" Height="40px" 
                    ImageUrl="~/imagesfolder/patient.jpg" Width="40px" />
                <br />
            </td>
            <td class="style27">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style24" valign="middle">
                Patient&#39;s Name :</td>
            <td class="style27">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter Your Name "></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style24" valign="middle">
                Required Blood Group :</td>
            <td class="style27">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="bg" DataValueField="bg">
                    <asp:ListItem Selected="True">Select</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:satymConnectionString10 %>" 
                    SelectCommand="SELECT DISTINCT [bg] FROM [Table_3] WHERE ([bg] = @bg)">
                    <SelectParameters>
                        <asp:Parameter Name="bg" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Select Blood Group Requirement"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style24" valign="middle">
                Hospital Name and Address :</td>
            <td class="style27">
                <asp:TextBox ID="TextBox3" runat="server" Height="67px" TextMode="MultiLine" 
                    Width="130px"></asp:TextBox>
            </td>
            <td class="style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter Your Hospital Details"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style24" valign="middle">
                Doctor&#39;s Name :</td>
            <td class="style27">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td class="style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter Your Doctor's Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style24" valign="middle">
                When Required :</td>
            <td class="style27">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <cc1:CalendarExtender ID="TextBox5_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="TextBox5">
                </cc1:CalendarExtender>
            </td>
            <td class="style28">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                    runat="server" ControlToValidate="TextBox5" 
                    ErrorMessage="Enter When you Reuire Blood "></asp:RequiredFieldValidator>
                                    </td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style24" valign="top">
                <span class="style16">Contact Details</span>&nbsp <asp:Image ID="Image4" 
                    runat="server" Height="40px" ImageUrl="~/imagesfolder/contact.jpg" 
                    Width="40px" />
            </td>
            <td class="style27">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style24" valign="middle">
                Contact Name :</td>
            <td class="style27">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td class="style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Enter Your Full Name "></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style24" valign="middle">
                Contact Email ID :</td>
            <td class="style27">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td class="style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="Enter Your Email-Id"></asp:RequiredFieldValidator>
&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="Enter Valid Email Address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style24" valign="middle">
                Contact No. :</td>
            <td class="style27">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td class="style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Enter Your Personal No."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" class="style21" colspan="3" valign="middle">
                <br />
                <asp:RadioButton ID="RadioButton1" runat="server" 
                    Text="I agree to have my contact details broadcasted to the registered donors of BloodBankIndia.net" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" class="style17" colspan="3" valign="middle">
                <br />
                <input id="Reset1" type="reset" value="Reset" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Request &gt;&gt;" 
                    Font-Bold="True" Font-Size="Small" ForeColor="#CC0000" 
                    onclick="Button1_Click" />
&nbsp;&nbsp;
            </td>
        </tr>
        </table>
</asp:Content>

