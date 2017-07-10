<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admindonorview.aspx.cs" Inherits="admindonorview" Title="Admin Donor View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        VIEW ALL DONORS</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None">
            <RowStyle BackColor="#E3EAEB" />
            <Columns>
                <asp:BoundField DataField="fullname" HeaderText="FULLNAME" 
                    SortExpression="fullname" />
                <asp:BoundField DataField="age" HeaderText="AGE" SortExpression="age" />
                <asp:BoundField DataField="sex" HeaderText="SEX" SortExpression="sex" />
                <asp:BoundField DataField="bloodgroup" HeaderText="BLOOD GROUP" 
                    SortExpression="bloodgroup" />
                <asp:BoundField DataField="occupation" HeaderText="OCCUPATION" 
                    SortExpression="occupation" />
                <asp:BoundField DataField="address" HeaderText="ADDRESS" 
                    SortExpression="address" />
                <asp:BoundField DataField="telephone" HeaderText="CONTACT NO." 
                    SortExpression="telephone" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="lastdonated" HeaderText="LAST DONATED" 
                    SortExpression="lastdonated" />
            </Columns>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    </p>
    <p>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="31px" 
            ImageUrl="~/imagesfolder/goback.jpg" PostBackUrl="~/afteradmin.aspx" 
            Width="85px" />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=SATYAM-PC\SQLEXPRESS;Initial Catalog=satym;Integrated Security=True" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT [fullname], [age], [sex], [bloodgroup], [occupation], [address], [telephone], [email], [lastdonated] FROM [Table_2]">
        </asp:SqlDataSource>
    </p>
</asp:Content>

