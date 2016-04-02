<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="dao.CommDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="util.Info"%>
<%@page import="util.PageManager"%>
<%@page import="java.util.ArrayList"%>
  <%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
String userid = user.get("id").toString();
 %>
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

 
  <form  action="bmessagecx.jsp"  name="f1" method="post">
  
  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" >
   <tr> 
          <td colspan=6 height="26" align="left" bgcolor="#FFFFFF" class="">&nbsp;&nbsp;&nbsp;
<% 
String pauthor = request.getParameter("author")==null?"":request.getParameter("author"); 
String startauthor = request.getParameter("startauthor")==null?"":request.getParameter("startauthor"); 
String endauthor = request.getParameter("endauthor")==null?"":request.getParameter("endauthor"); 
String pcontent = request.getParameter("content")==null?"":request.getParameter("content"); 
String startcontent = request.getParameter("startcontent")==null?"":request.getParameter("startcontent"); 
String endcontent = request.getParameter("endcontent")==null?"":request.getParameter("endcontent"); 
String psavetime = request.getParameter("savetime")==null?"":request.getParameter("savetime"); 
String startsavetime = request.getParameter("startsavetime")==null?"":request.getParameter("startsavetime"); 
String endsavetime = request.getParameter("endsavetime")==null?"":request.getParameter("endsavetime"); 
   %>

<%
 HashMap mmm = new HashMap();%> 

&nbsp;&nbsp;
Author 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='author' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;
Content
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='content' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;
Time&nbsp;:&nbsp;
 
<input type=text class=''  size=10 name='startsavetime' onclick='WdatePicker();' />
&nbsp;&nbsp;to&nbsp;&nbsp;

<input type=text class=''  size=10 name='endsavetime' onclick='WdatePicker();' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input type=submit class='' value='check' /> </td>
    </tr>
  
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
            <td width="" height="22" background="/frolstore/admin/images/tab_14.gif" class="STYLE1">Author</td>
<td width="" height="22" background="/frolstore/admin/images/tab_14.gif" class="STYLE1">Content</td>
<td width="" height="22" background="/frolstore/admin/images/tab_14.gif" class="STYLE1">Reply</td>
<td width="" height="22" background="/frolstore/admin/images/tab_14.gif" class="STYLE1">Time</td>
<td width="" height="22" background="/frolstore/admin/images/tab_14.gif" class="STYLE1">Operation</td>
            </tr>

          
          <% 
new CommDAO().delete(request,"bmessage"); 
if(request.getParameter("authorid1")!=null){ 
 new CommDAO().commOper("update bmessage set author ='' where id="+request.getParameter("authorid1"));  
} 
if(request.getParameter("authorid2")!=null){ 
 new CommDAO().commOper("update bmessage set author ='' where id="+request.getParameter("authorid2"));  
} 
String sql = "select * from bmessage where 1=1 " ;
 if(!pauthor.equals("")){ 
 sql+= " and author like'%"+pauthor+"%' " ;
 }  
 if(!startauthor.equals("")){  
 mmm.put("startauthor",startauthor) ;
 sql+= " and author >'"+startauthor+"' " ;
 }  
 if(!endauthor.equals("")){  
 mmm.put("endauthor",endauthor) ;
 sql+= " and author <'"+Info.getDay(endauthor,1)+"' " ;
 }  
 if(!pcontent.equals("")){ 
 sql+= " and content like'%"+pcontent+"%' " ;
 }  
 if(!startcontent.equals("")){  
 mmm.put("startcontent",startcontent) ;
 sql+= " and content >'"+startcontent+"' " ;
 }  
 if(!endcontent.equals("")){  
 mmm.put("endcontent",endcontent) ;
 sql+= " and content <'"+Info.getDay(endcontent,1)+"' " ;
 }  
 if(!psavetime.equals("")){ 
 sql+= " and savetime like'%"+psavetime+"%' " ;
 }  
 if(!startsavetime.equals("")){  
 mmm.put("startsavetime",startsavetime) ;
 sql+= " and savetime >'"+startsavetime+"' " ;
 }  
 if(!endsavetime.equals("")){  
 mmm.put("endsavetime",endsavetime) ;
 sql+= " and savetime <'"+Info.getDay(endsavetime,1)+"' " ;
 }  
  sql +=" order by id desc ";
String url = "bmessagecx.jsp?1=1&author="+pauthor+"&content="+pcontent+"&savetime="+psavetime+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr>
 
          <td height="26" align="center" bgcolor="#FFFFFF" class=""><%=map.get("author")%></td> 
          <td height="26" align="center" bgcolor="#FFFFFF" class=""><%=map.get("content")%></td> 
          <td height="26" align="center" bgcolor="#FFFFFF" class=""><%=map.get("reback")%></td> 
          <td height="26" align="center" bgcolor="#FFFFFF" class=""><%=map.get("savetime")%></td> 
          <td height="26" align="center" bgcolor="#FFFFFF" class="">
<a href="javascript:update('<%=map.get("id")%>')">reply</a>
&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a onclick="return confirm('Sure to delete this one?')"  href="bmessagecx.jsp?scid=<%=map.get("id")%>">Delete</a>
</td>
</tr>
<%}%>
 
                  
        </table>
        </td></table></tr>
        
        <tr>
    <td height="29">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
      
        <td width="15" height="29"><img src="/frolstore/admin/images/tab_20.gif" width="15" height="29" /></td>
        <td background="/frolstore/admin/images/tab_21.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan=6 height="29" align="center" nowrap="nowrap">${page.info}</td>
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
 
<script language=javascript src='/frolstore/js/ajax.js'></script>
<% 
mmm.put("author",pauthor); 
mmm.put("content",pcontent); 
mmm.put("savetime",psavetime); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/frolstore/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/frolstore/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('bmessagexg.jsp?id='+no,'change info',550,'100%') 
}
</script> 
<script language=javascript> 
function add(){ 
pop('bmessagetj.jsp','add info',550,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
