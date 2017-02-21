<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Default3" %>
<%@ Register src="logo.ascx" tagname="logo" tagprefix="uc1" %>

<%@ Register src="menu.ascx" tagname="menu" tagprefix="uc2" %>

<%@ Register src="search.ascx" tagname="search" tagprefix="uc3" %>

<%@ Register src="links.ascx" tagname="links" tagprefix="uc4" %>

<%@ Register src="footer.ascx" tagname="footer" tagprefix="uc5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
    
    <form id="form1" runat="server">
    <div id="menu">
	
    <uc2:menu ID="menu1" runat="server" />
	
</div>
    <div>
    <uc1:logo ID="logo1" runat="server" />
        <div id="content">
            <div class="post">
                <h2 class="title">
                    <a href="Login.aspx">Welcome</a></h2>
                <div class="entry">
                    In current era,while doing business some times sensitive data must be handled 
                    over to trusted third parties. Our goal is to detect when the distributor’s 
                    sensitive data has been leaked by agents, and if possible to identify the agent 
                    that leaked the data.                     <br />
                    The Features are
                    <ul>
                        <li>To prevent useful data, from unauthorized access </li>
                        <li>To identify guilty agents </li>
                        <li>To secure sensitive data </li>
                        <li>To proper management of data </li>
                        <li>To find out Leaked Components </li>
                    </ul>
                    Thank you
                </div>
            </div>
        </div>
    
    </div>
    <!-- end #content -->
	<div id="sidebar">
				
			    <uc4:links ID="links1" runat="server" />
				
	</div>
	
 
<!-- end #page -->
<div id="footer">
	
    <uc5:footer ID="footer1" runat="server" />
	
</div>
    </form>
</body>
</html>