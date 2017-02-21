<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="Default2" %>
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
<div><uc1:logo ID="logo1" runat="server" /></div>
<div>
</div>

<div id="footer">
	
    <uc5:footer ID="footer1" runat="server" />
	
</div>
    </form>
</body>
</html>
