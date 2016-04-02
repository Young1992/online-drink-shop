<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="dao.CommDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="util.Info"%>
<%@page import="util.PageManager"%>
<%@page import="java.util.ArrayList"%>

<html>
<head>
<title></title>
 <style type="text/css">
img{border:0px;}
.STYLE1 {font-weight: bold}
 .STYLE2 {font-weight: bold}
 </style>

</head>
<SCRIPT language=javascript>
<!--
function window.onload() { 

if(top.location != self.location){ 

var a = window.parent.document.getElementsByTagName('iframe'); 

for (var i=0; i<a.length; i++){ 

if (a[i].name == self.name) {a[i].height = document.body.scrollHeight+350; return;}}} 

}

//-->
</script>
<body >

<%
String error = (String)request.getAttribute("error");
if(error!=null)
{
 %>
 <script language=javascript>
 alert("User id existed, try another one.");
 </script>
 <%
 }
  %>
  <%
  CommDAO dao = new CommDAO();
  String did = request.getParameter("did");
  if(did!=null)
  {
  new CommDAO().commOper("delete from buser where id="+did);
  }
   %>
 
  <form action="/frolstore/servlet/AddType" name="f1" method="post">
  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" >
  	<tr>
  		<td height="30">
	  	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	      <tr>
	        <td width="15" height="30"><img src="/frolstore/admin/images/tab_03.gif" width="15" height="30" /></td>
	        <td width="1101" background="/frolstore/admin/images/tab_05.gif"><img src="/frolstore/admin/images/311.gif" width="16" height="16" />&nbsp;<span class="STYLE4"></span></td>
	        <td width="281" background="/frolstore/admin/images/tab_05.gif">&nbsp;</td>
	        <td width="14"><img src="/frolstore/admin/images/tab_07.gif" width="14" height="30" /></td>
            </tr>
    	</table>
    </td>
  	</tr>
  	<tr>
  	<td>
  	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  	  <td width="9" background="/frolstore/admin/images/tab_12.gif">&nbsp;</td>
      <td bgcolor="#f3ffe3"><table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#c0de98">
          <tr align="center"> 
            <td width="29%" height="18" background="/frolstore/admin/images/tab_14.gif" class="STYLE1">User name</td>
            <td width="25%" background="/frolstore/admin/images/tab_14.gif" class="STYLE1">Password</td>
            <td width="24%" background="/frolstore/admin/images/tab_14.gif" class="STYLE1">Name</td>
            <td width="7%" background="/frolstore/admin/images/tab_14.gif" class="STYLE1">Gender</td>
            <td width="6%" background="/frolstore/admin/images/tab_14.gif" class="STYLE1">Change</td>
            <td width="9%" background="/frolstore/admin/images/tab_14.gif" class="STYLE1">Delete</td>
          </tr>

         
         
          <%
String dpagee = request.getParameter("dpagee")==null?"1":request.getParameter("dpagee");

int dpage = Integer.parseInt(dpagee); 




String sql = "select * from buser where utype!='0'  ";




sql+="order by id desc ";

int records = dao.select(sql).size();
int pages = 0;
if(records%7==0)pages=records/7;
if(records%7!=0)pages=records/7+1;
if(dpage<1)dpage=1;
if(dpage>pages)dpage=pages;

PageManager pageManager = PageManager.getPage("/frolstore/hygl.jsp?1=1", 10, request);
										pageManager.doList(sql);

										PageManager bean = (PageManager) request.getAttribute("page");
										ArrayList<HashMap> list = (ArrayList) bean.getCollection();
for(HashMap h:list)
{
 %>
          <tr> 
          <td height="26" align="left" bgcolor="#FFFFFF" class="">    <%=h.get("uname") %>  </td>
          <td height="26" align="center" bgcolor="#FFFFFF" class="">       <%=h.get("upass") %>     </td>
          <td height="26" align="center" bgcolor="#FFFFFF" class=""> <%=h.get("tname") %></td>
          <td height="26" align="center" bgcolor="#FFFFFF" class=""> <%=h.get("sex") %></td>
          <td height="26" align="center" bgcolor="#FFFFFF" class=""><a href="upmember.jsp?id=<%=h.get("id") %>">Change</a>      </td>    
          <td height="26" align="center" bgcolor="#FFFFFF" class="">
          <a href="/frolstore/admin/hygl.jsp?did=<%=h.get("id") %>"> Delete</a>            </td>
          </tr>
 <%
 }
  %>          
           
                  
        </table>
        </td></table></tr>
        
        <tr>
    <td height="29">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
      
        <td width="15" height="29"><img src="/frolstore/admin/images/tab_20.gif" width="15" height="29" /></td>
        <td background="/frolstore/admin/images/tab_21.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="29" align="center" nowrap="nowrap">

total<%=records %> records
                                
                                &nbsp;&nbsp;
                                
                                now <%=dpage %>/<%=pages %> page
                                
                                &nbsp;&nbsp;
                                
                                <a href="/frolstore/admin/hygl.jsp?">first</a>
                                
                                &nbsp;&nbsp;
                                
                                <a href="/frolstore/admin/hygl.jsp?dpagee=<%=dpage-1 %>">last</a>
                                
                                &nbsp;&nbsp;
                                
                                <a href="/frolstore/admin/hygl.jsp?dpagee=<%=dpage+1 %>">next</a>
                                
                                &nbsp;&nbsp;
                                
                                
                                <a href="/frolstore/admin/hygl.jsp?dpagee=<%=pages %>">end</a>
                                

</td>
            </tr>
            
            
        </table></td>
        <td width="14"><img src="/frolstore/admin/images/tab_22.gif" width="14" height="29" /></td>
      </tr>
    </table>
    </td>
  </tr>
  </table>


  </form>
 
</body>
</html>
<script language=javascript>
<%
String suc = (String)request.getAttribute("suc");
if(suc!=null)
{
%>
alert("succuss!");
<%
}
%>
</script>
