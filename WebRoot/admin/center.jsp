<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
}
-->
</style></head>

<body>
<%
String a = request.getParameter("a");if(a==null)a="";
String url = "ckdd.jsp";

if(a.equals("a"))
{
 HashMap o =	(HashMap)session.getAttribute("admin");
url = "upmember.jsp?id=1";
}
 %>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed">
  <tr>
    <td background="images/main_40.gif" style="width:3px;">&nbsp;</td>
    <td width="177"  style="border-right:solid 1px #9ad452;"><iframe name="I2" height="100%" width="197" border="0" frameborder="0" src="left.jsp">
		The browser does not support.</iframe></td>
    <td valign="top"><iframe name="I1"  src="<%=url %>" width="100%" border="0" frameborder="0">
		The browser does not support.</iframe></td>
    <td background="images/main_42.gif" style="width:3px;">&nbsp;</td>
  </tr>
</table>
</body>

  
  <body>
    This is my JSP page. <br>
  </body>
</html>
