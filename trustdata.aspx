<%@ Page Language="C#" AutoEventWireup="true" CodeFile="trustdata.aspx.cs" Inherits="trustdata" %>
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

    </div>
  
    <center>
    <div><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource1">
        <RowStyle ForeColor="#000066" />
        <Columns>
            <asp:BoundField DataField="username" HeaderText="Username" 
                SortExpression="username" />
            <asp:BoundField DataField="passwd" HeaderText="Password" 
                SortExpression="passwd" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
    </div></center>
    </form>
</body>
</html>
