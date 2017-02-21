<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="_Default" %>
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
    <style type="text/css">

        .style1
        {
            font-size: large;
            font-family: Calibri;
            color: #999999;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div id="menu">
	
    <uc2:menu ID="menu1" runat="server" />
	
</div>
    <div>
    <uc1:logo ID="logo1" runat="server" />
        <div id="content">
            <div id="content0">
                <div class="post">
                    <h2 class="title">
                    </h2>
                    <div class="entry">
                        <p class="style1">
                            &nbsp;Mailing Address : <a href="mailto:mahesh.katre47@gmail.com">
                            mahesh.katre47@gmail.com</a>&nbsp;&nbsp;&nbsp; </p>
                        <p class="style1">
                                                        &nbsp;&nbsp;&nbsp;Contact Number : 9404368350/9970965035&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                            </div>
                            <p class="meta">
                                BY WHITe HAT GROUP</p>
                        </div>
                    </div>
	<!-- end #content -->
	                <div id="sidebar">
                    </div>
    </div>
    </form>
</body>
</html>
