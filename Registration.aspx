<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" Title="Registration Page" %>

<%@ Register assembly="MSCaptcha" namespace="MSCaptcha" tagprefix="cc1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 801px;
            height: 405px;
        }
        .style15
        {
            font-size: xx-large;
            font-weight: bold;
            height: 98px;
        }
        .style17
        {
            width: 247px;
            height: 98px;
        }
        .style21
        {
        }
        .style24
        {
            width: 247px;
            height: 20px;
        }
        .style27
        {
            width: 247px;
        }
        .style30
        {
            height: 20px;
            width: 201px;
        }
        .style31
        {
            height: 20px;
            width: 359px;
        }
        .style33
        {
            width: 359px;
            height: 103px;
        }
        .style34
        {
            width: 201px;
            height: 103px;
        }
        .style35
        {
            width: 247px;
            height: 44px;
        }
        #Reset1
        {
            height: 24px;
            width: 55px;
            color: #3366FF;
        }
        .style38
        {
            width: 247px;
            height: 45px;
        }
        .style39
        {
            height: 45px;
            width: 201px;
        }
        .style40
        {
            height: 45px;
            width: 359px;
        }
        .style41
        {
            width: 247px;
            height: 103px;
        }
        .style42
        {
        height: 44px;
        width: 201px;
    }
        .style43
        {
            height: 44px;
            width: 359px;
        }
        .style44
        {
            font-size: xx-small;
        }
        .style45
        {
            width: 247px;
            height: 46px;
        }
        .style46
        {
            height: 46px;
            width: 201px;
        }
        .style47
        {
            height: 46px;
            width: 359px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="right" class="style14">
        <tr>
            <td align="left" class="style17" valign="top">
                <asp:Image ID="Image2" runat="server" Height="141px" 
                    ImageUrl="~/imagesfolder/blood.jpg" Width="247px" />
            </td>
            <td align="left" class="style15" colspan="2" 
                style="background-image: url('imagesfolder/red.jpg')" valign="middle">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration Page</td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style30">
            </td>
            <td class="style31">
            </td>
        </tr>
        <tr>
            <td align="right" class="style35">
                Full Name :</td>
            <td class="style42">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style43">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Full Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style38">
                User Name :</td>
            <td class="style39">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="style40">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Please Enter Your Usern Name"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td align="right" class="style35">
                Password :</td>
            <td class="style42">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                <cc2:PasswordStrength ID="TextBox3_PasswordStrength" runat="server" 
                    Enabled="True" TargetControlID="TextBox3">
                </cc2:PasswordStrength>
            </td>
            <td class="style43">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="You Have Not Entered Password"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td align="right" class="style35">
                Confirm Password :</td>
            <td class="style42">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style43">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" 
                    ErrorMessage="Enter Password For Confirmation"></asp:RequiredFieldValidator>
                &nbsp;
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
                    ErrorMessage="Password Doesn't Match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style45">
                Age :</td>
            <td class="style46">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td class="style47">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Please Enter Age"></asp:RequiredFieldValidator>
                &nbsp;<br />
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="You Are Not Eligible (18-60)" MaximumValue="60" 
                    MinimumValue="18"></asp:RangeValidator>
                </td>
        </tr>
        <tr>
            <td align="right" class="style35">
                Sex :</td>
            <td class="style42">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="80px">
                    <asp:ListItem Text="Select" Value=""></asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style43">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Please Select"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td align="right" class="style35">
                Blood Group :</td>
            <td class="style42">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="21px" Width="80px">
                    <asp:ListItem Text="Select" Value=""></asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style43">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="DropDownList2" ErrorMessage="Please Select"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td align="right" class="style35">
                Occupation :</td>
            <td class="style42">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td class="style43">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Please Enter Your Occupation"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td align="right" class="style35">
                Address :</td>
            <td class="style42">
                <asp:TextBox ID="TextBox7" runat="server" Height="46px" TextMode="MultiLine" 
                    Width="129px"></asp:TextBox>
            </td>
            <td class="style43">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="Please Enter Your Address"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td align="right" class="style35">
                Telepone No. :</td>
            <td class="style42">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td class="style43">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Enter Your Contact No."></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td align="right" class="style35">
                E-mail :</td>
            <td class="style42">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td class="style43">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="Please Enter our Email ID"></asp:RequiredFieldValidator>
                &nbsp;
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="Not a Valid Email Address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td align="right" class="style35">
                Last Donated :</td>
            <td class="style42">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                <cc2:CalendarExtender ID="TextBox10_CalendarExtender" 
                    TargetControlID="TextBox10" Format="dd/MM/yyyy" PopupButtonID="ImageButton2" 
                    runat="server" PopupPosition="Right" >
                </cc2:CalendarExtender>
&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" AlternateText="Show Calendar" 
                    Height="16px" ImageUrl="~/imagesfolder/calendr.jpg" Width="18px" />
                <span class="style44">
                <br />
                (If Donated)</span></td>
            <td class="style43">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style41">
                Verification :</td>
            <td class="style34">
                <cc1:CaptchaControl ID="CaptchaControl1" runat="server" Height="50px" 
                    Width="181px" />
                <br />
                <asp:TextBox ID="TextBox11" runat="server" Height="22px" Width="129px"></asp:TextBox>
&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="22px" 
                    ImageUrl="~/imagesfolder/refresh.jpg" onclick="ImageButton3_Click" 
                    Width="35px" CausesValidation="False" />
            </td>
            <td class="style33">
                <br />
                <br />
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="TextBox11" 
                    ErrorMessage="Enter the Code Shown in Above Image"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td align="right" class="style27">
                &nbsp;</td>
            <td align="left" class="style21" colspan="2" valign="middle">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Submit" ForeColor="#3366FF" 
                    onclick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="Reset1" type="reset" value="Reset" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

