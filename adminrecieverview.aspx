<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminrecieverview.aspx.cs" Inherits="adminrecieverview" Title="Admin Recipients View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        VIEW ALL RECIPIENTS</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None">
            <RowStyle BackColor="#E3EAEB" />
            <Columns>
                <asp:BoundField DataField="pname" HeaderText="Patient's Name" 
                    SortExpression="pname" />
                <asp:BoundField DataField="bg" HeaderText="Blood Group" SortExpression="bg" />
                <asp:BoundField DataField="addr" HeaderText="Hospital Name and Address" 
                    SortExpression="addr" />
                <asp:BoundField DataField="docname" HeaderText="Doctor's Name" 
                    SortExpression="docname" />
                <asp:BoundField DataField="datereq" HeaderText="Date Required " 
                    SortExpression="datereq" />
                <asp:BoundField DataField="cname" HeaderText="Contact Name" 
                    SortExpression="cname" />
                <asp:BoundField DataField="cemail" HeaderText="Contact Email" 
                    SortExpression="cemail" />
                <asp:BoundField DataField="cnum" HeaderText="Contact No." 
                    SortExpression="cnum" />
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
            SelectCommand="SELECT [pname], [bg], [addr], [docname], [datereq], [cname], [cemail], [cnum] FROM [Table_3]">
        </asp:SqlDataSource>
    </p>
</asp:Content>

