<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<jsp:directive.page import="util.Info"/>
<%@page import="dao.CommDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin: 0px;
}
-->
</style>

<%
CommDAO dao = new CommDAO();
String id = Info.getUser(request).get("id").toString();
HashMap h = dao.select("select * from buser where id="+id).get(0);

 %>

<link href="/frolstore/admin/global.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="/frolstore/theme/calendar/WdatePicker.js"></script>
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
</head>

<body>
<%
String suc = (String)request.getAttribute("suc");
if(suc!=null)
{
 %>
 <script language=javascript>
 alert("success!");
 
 </script>
 <%
 }
  %>


  <form action="/frolstore/servlet/Upmemberinfo?utype=0" name="f1" method="post" >
  <input type="hidden" name="id" value="<%=id %>" />
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="main_table_frame"
    style="padding: 0px;border-right-width: 0px;border-bottom-width: 0px;">
      <tr>
        <td>
				<table width="100%" border="0" cellpadding="0" cellspacing="0"  class="main_desk_table">
                 
                  <tr>
                    <td><table width="100%" border="0" 
            cellspacing="0"frolstorestyle="WIDTH: 100%; BORDER-COLLAPSE: collapse">
            
             <tr 
              
              >
                          <td height="40" colspan="2" align="center" class="main_matter_td"><strong>Modify user info</strong>
                        <label></label></td>
                      </tr>
            
                        <tr 
              
              >
                          <td width="458" align="center" class="main_matter_td">User name</td>
                        <td width="949" align="left" class="main_matter_td"><label>
                        <%=h.get("uname") %>
                        </label></td>
                      </tr>
                        <tr 
              
              >
                          <td align="center" class="main_matter_td">Password</td>
                          <td align="left" class="main_matter_td"><input type="text" class="textBox" name="upass" value="<%=h.get("upass") %>" id="textfield2" /></td>
                        </tr>
                        <tr 
              
              >
                          <td align="center" class="main_matter_td">Name</td>
                          <td align="left" class="main_matter_td"><input class="textBox" value="<%=h.get("tname") %>"   name="tname" type="text" id="textfield3" size="10" /></td>
                        </tr>
                        <tr 
              
              >
                          <td align="center" class="main_matter_td">Gender</td>
                          <td align="left" class="main_matter_td"><input type="radio" name="sex" <%if(((String)h.get("sex")).equals("Male"))out.print("checked='checked'"); %> id="radio3" value="Male" />
Male
  <input type="radio" name="sex" id="radio4" <%if(((String)h.get("sex")).equals("Female"))out.print("checked='checked'"); %>  value="Female" />
Female </td>
                        </tr>
                        <tr 
              
              >
                          <td align="center" class="main_matter_td">Age</td>
                          <td align="left" class="main_matter_td"><label>
                            <input name="age" type="text" class="textBox"  value="<%=h.get("age") %>"  id="textfield4" size="10" />
                          </label></td>
                        </tr>
                        <tr 
              
              >
                          <td align="center" class="main_matter_td">Phone</td>
                          <td align="left" class="main_matter_td"><input class="textBox"  value="<%=h.get("tel") %>"  name="tel" type="text" id="textfield5" size="25" /></td>
                        </tr>
                        <tr 
              
              >
                          <td align="center" class="main_matter_td">Address</td>
                          <td align="left" class="main_matter_td"><input class="textBox"  value="<%=h.get("addr") %>"  name="addr" type="text" id="textfield6" size="45" /></td>
                        </tr>
                        <tr 
              
              >
                          <td align="center" class="main_matter_td">email</td>
                          <td align="left" class="main_matter_td"><input class="textBox"  value="<%=h.get("email") %>"  name="email" type="text" id="textfield7" size="25" /></td>
                        </tr>
                        <tr 
              
              >
                          <td align="center" class="main_matter_td">PID</td>
                          <td align="left" class="main_matter_td"><input class="textBox"  value="<%=h.get("PID") %>"  name="PID" type="text" id="textfield8" size="25" /></td>
                        </tr>
                        
                        <tr 
              
              >
                          <td colspan="3" align="center" class="main_matter_td">
                          
                          <input type="submit" name="button" id="button"  value="submit" />
                          &nbsp;&nbsp;&nbsp;
                          <input type="reset" name="button2" id="button2"  onclick="window.history.go(-1)" value="return" /></td>
                        
                        <script language=javascript>
                       function check()
                       {
                        
                       }
                        </script>
                        </tr>
                    </table></td>
                  </tr>
                </table>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                
                  
                    <td  align="center"  class="main_matter_td">
                 <!--   Now &nbsp;
                    
                    <font color="red"><div id="dpage" style="display: inline;">1</div></font>
                    
                    
                    &nbsp; page
                    &nbsp;&nbsp;
                   total &nbsp;&nbsp; page &nbsp;&nbsp;
                    <label style="cursor: hand"  onclick="sy()">first</label>
&nbsp;&nbsp;
                    <label style="cursor: hand"  onclick="syy()">last</label>
&nbsp;&nbsp;
                    <label style="cursor: hand"  onclick="xyy()">next</label>
&nbsp;&nbsp;
                    <label style="cursor: hand"  onclick="wy()">end</label>
                    -->
                    
                    
                    </td>
                  </tr>
        </table></td>
      </tr>
</table>
</form>
</body>
</html>

<script language="javascript" src="/frolstore/shop/popup.js"></script>
