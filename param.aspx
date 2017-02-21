<%@ Page Language="C#" AutoEventWireup="true" CodeFile="param.aspx.cs" Inherits="param" %>

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
    <style type="text/css">
        .style1
        {
            width: 128px;
        }
    </style>
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
                    <a href="#">User Login</a> SQLIA Prevention using Parameterized Query</h2>
                <div class="entry">
                    <table width="100%">
                        <tr>
                            <td class="style1">
                                <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                User Name</td>
                            <td>
                                <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtuser" ErrorMessage="Enter User name"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                Password</td>
                            <td>
                                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtpass" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style1">
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                            </td>
                            <td>
                                <input id="Reset1" type="reset" value="Cancel" /></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style1">
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="lbl_msg" runat="server" ForeColor="#FF3300"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    
    </div>
    <div id="sidebar">
				
			    <uc4:links ID="links1" runat="server" />
				
	</div>
    <div id="footer">
	
    <uc5:footer ID="footer1" runat="server" />
	
</div>
    </form>
</body>
</html>
