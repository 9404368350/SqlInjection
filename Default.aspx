<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="logo.ascx" tagname="logo" tagprefix="uc1" %>
<%@ Register src="menu.ascx" tagname="menu" tagprefix="uc2" %>
<%@ Register src="search.ascx" tagname="search" tagprefix="uc3" %>

<%@ Register src="links.ascx" tagname="links" tagprefix="uc4" %>

<%@ Register src="footer.ascx" tagname="footer" tagprefix="uc5" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="style.css" rel="stylesheet" type="text/css" media="screen" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="menu">
	
    <uc2:menu ID="menu2" runat="server" />
	
</div>
    
    </div>
    </form>
</body>
</html>
