<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="Default2" %>
<%@ Register src="logo.ascx" tagname="logo" tagprefix="uc1" %>

<%@ Register src="menu2.ascx" tagname="menu" tagprefix="uc2" %>

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
    <div id="menu">
    <uc2:menu ID="menu1" runat="server" />
    </div>
    <div>
    <uc1:logo ID="logo1" runat="server" />
        <div id="content">
            <div class="post">
                <h2 class="title">
                    <a href="#">Registration</a></h2>
                <div class="entry">
                <a href="adminhome.aspx" >Back</a>
                    <table width="100%">
                    <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                    </td>
              
                    </tr>
                     <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Lname" runat="server"></asp:TextBox>
                    </td>
              
                    </tr>
                        <tr>
                            <td>
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
                            <td>
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
                            <td>
                                Confirm Password</td>
                            <td>
                                <asp:TextBox ID="txtconfirm" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="txtconfirm" ControlToValidate="txtpass" 
                                    ErrorMessage="Enter correct Retype Password"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Account NO</td>
                            <td>
                                <asp:TextBox ID="accno" runat="server"></asp:TextBox>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                Account type</td>
                            <td>
                                <asp:TextBox ID="acctype" runat="server" ></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Branch Name</td>
                            <td>
                                <asp:TextBox ID="Branchname" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                            </td>
                            <td>
                                <input id="Reset1" type="reset" value="Cancel" /></td>
                            <td>
                            </td>
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
