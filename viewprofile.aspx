<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewprofile.aspx.cs" Inherits="viewprofile" Title="Profile View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            font-weight: bold;
            text-decoration: underline;
            font-size: large;
            color: #990033;
        }
        .style15
        {
            width: 400px;
            height: 106px;
        }
        .style16
        {
            width: 258px;
            height: 248px;
        }
        .style19
        {
            width: 91px;
        }
        .style20
        {
            width: 106px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <span class="style14">Your Account Details</span></p>
    <table align="center" class="style15">
        <tr>
            <td align="center" valign="top">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="29px" 
                    ImageUrl="~/imagesfolder/goback.jpg" PostBackUrl="~/afterlog.aspx" 
                    Width="76px" />
                        &nbsp;&nbsp;&nbsp;
                <br />
                <asp:DataList ID="DataList1" runat="server" BackColor="White" 
                    BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
                    CellSpacing="1" DataSourceID="SqlDataSource1">
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <ItemTemplate>
                        <table align="center" class="style16" style="border: thick double #800000">
                            <tr>
                                <td class="style19">
                                    Blood Group :</td>
                                <td class="style20">
                                    <asp:Label ID="bloodgroupLabel" runat="server" 
                                        Text='<%# Eval("bloodgroup") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    Address :</td>
                                <td class="style20">
                                    <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    Occupation :</td>
                                <td class="style20">
                                    <asp:Label ID="occupationLabel" runat="server" 
                                        Text='<%# Eval("occupation") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    Telephone No. :</td>
                                <td class="style20">
                                    <asp:Label ID="telephoneLabel" runat="server" Text='<%# Eval("telephone") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    Email Id:</td>
                                <td class="style20">
                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    Last Donated :</td>
                                <td class="style20">
                                    <asp:Label ID="lastdonatedLabel" runat="server" 
                                        Text='<%# Eval("lastdonated") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    Full Name :</td>
                                <td class="style20">
                                    <asp:Label ID="fullnameLabel" runat="server" Text='<%# Eval("fullname") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    User Name :</td>
                                <td class="style20">
                                    <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    Password :</td>
                                <td class="style20">
                                    <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    Age :</td>
                                <td class="style20">
                                    <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    Sex :</td>
                                <td class="style20">
                                    <asp:Label ID="sexLabel" runat="server" Text='<%# Eval("sex") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                    <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:satymConnectionString9 %>" 
                    SelectCommand="SELECT [bloodgroup], [address], [occupation], [telephone], [email], [lastdonated], [fullname], [username], [password], [age], [sex] FROM [Table_2] WHERE ([username] = @username)">
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="login" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        </table>
</asp:Content>

