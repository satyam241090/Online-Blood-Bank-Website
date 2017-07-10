<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bloodrequests.aspx.cs" Inherits="bloodrequests" Title="Blood Request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            font-weight: bold;
            text-decoration: underline;
            font-size: large;
            color: #990033;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <span class="style14">Blood Requests</span></p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None" Height="268px" Width="760px">
            <RowStyle BackColor="#E3EAEB" />
            <Columns>
                <asp:BoundField DataField="pname" HeaderText="Patient Name" 
                    SortExpression="pname" />
                <asp:BoundField DataField="bg" HeaderText="Blood Group" SortExpression="bg" />
                <asp:BoundField DataField="addr" HeaderText="Hospital Name &amp; Address" 
                    SortExpression="addr" />
                <asp:BoundField DataField="docname" HeaderText="Doctor's Name " 
                    SortExpression="docname" />
                <asp:BoundField DataField="datereq" HeaderText="When Needed" 
                    SortExpression="datereq" />
                <asp:BoundField DataField="cname" HeaderText="Contact Name" 
                    SortExpression="cname" />
                <asp:BoundField DataField="cnum" HeaderText="Contact No." 
                    SortExpression="cnum" />
                <asp:BoundField DataField="cemail" HeaderText="Email" SortExpression="cemail" />
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
        <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" 
            ImageUrl="~/imagesfolder/goback.jpg" PostBackUrl="~/afterlog.aspx" 
            Width="95px" />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:satymConnectionString6 %>" 
            
            SelectCommand="SELECT [pname], [bg], [addr], [docname], [datereq], [cnum], [cemail], [cname] FROM [Table_3]">
        </asp:SqlDataSource>
    </p>
</asp:Content>

