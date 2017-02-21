<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Accountno.aspx.cs" Inherits="Accountno" %>
<%@ Register src="logo.ascx" tagname="logo" tagprefix="uc1" %>

<%@ Register src="menu2.ascx" tagname="menu" tagprefix="uc2" %>

<%@ Register src="search.ascx" tagname="search" tagprefix="uc3" %>

<%@ Register src="links.ascx" tagname="links" tagprefix="uc4" %>

<%@ Register src="footer.ascx" tagname="footer" tagprefix="uc5" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="menu">
	
    <uc2:menu ID="menu1" runat="server" />
	
</div>
    <div>
    <uc1:logo ID="logo1" runat="server" />

    </div><center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource1">
        <RowStyle ForeColor="#000066" />
        <Columns>
            <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
            <asp:BoundField DataField="accno" HeaderText="Account Number" SortExpression="accno" />
            <asp:BoundField DataField="acctype" HeaderText="Account Type" 
                SortExpression="acctype" />
            <asp:BoundField DataField="branch_name" HeaderText="Branch Name" 
                SortExpression="branch_name" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [fname], [lname], [accno], [acctype], [branch_name] FROM [register]">
    </asp:SqlDataSource></center>
    </form>
</body>
</html>
