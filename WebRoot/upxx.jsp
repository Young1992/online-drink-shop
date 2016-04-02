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
HashMap hh = (HashMap)session.getAttribute("user");
HashMap h = dao.select("select * from buser where id="+hh.get("id")).get(0);

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
  <jsp:include page="top.jsp"></jsp:include>
  
 
  <form action="/frolstore/servlet/Upmemberinfo?utype=1" name="f1" method="post" >
  <input type="hidden" name="id" value="<%=hh.get("id") %>" />
    <table width="779" border="0" align="center"  >
      <tr>
        <td>
				<table width="100%" border="0" cellpadding="0" cellspacing="0"  >
                 
                  <tr>
                    <td><table width="100%" >
            
     <tr 
              
              >
                          <td height="40" colspan="2" align="center" class=""><strong>Modify user info</strong>
                        <label></label></td>
                      </tr>
            
                        <tr 
              
              >
                          <td width="212" height="26" align="center" class="">User name</td>
                        <td width="563" align="left" class=""><label>
                        <%=h.get("uname") %>
                        </label></td>
                      </tr>
                        <tr 
              
              >
                          <td height="26" align="center" class="">Password</td>
                          <td align="left" class=""><input type="text" class="textBox" name="upass" value="<%=h.get("upass") %>" id="textfield2" /></td>
                        </tr>
                        <tr 
              
              >
                          <td height="26" align="center" class="">Name</td>
                          <td align="left" class=""><input class="textBox" value="<%=h.get("tname") %>"   name="tname" type="text" id="textfield3" size="10" /></td>
                        </tr>
                        <tr 
              
              >
                          <td height="26" align="center" class="">Gender</td>
                          <td align="left" class=""><input type="radio" name="sex" <%if(((String)h.get("sex")).equals("Male"))out.print("checked='checked'"); %> id="radio3" value="Male" />
Male
  <input type="radio" name="sex" id="radio4" <%if(((String)h.get("sex")).equals("Female"))out.print("checked='checked'"); %>  value="Female" />
Female</td>
                        </tr>
                        <tr 
              
              >
                          <td height="26" align="center" class="">Age</td>
                        <td align="left" class=""><label>
                            <input name="age" type="text" class="textBox"  value="<%=h.get("age") %>"  id="textfield4" size="10" />
                          </label></td>
                        </tr>
                        <tr 
              
              >
                          <td height="26" align="center" class="">Phone</td>
                          <td align="left" class=""><input class="textBox"  value="<%=h.get("tel") %>"  name="tel" type="text" id="textfield5" size="25" /></td>
                        </tr>
                        <tr 
              
              >
                          <td height="26" align="center" class="">Address</td>
                          <td align="left" class=""><input class="textBox"  value="<%=h.get("addr") %>"  name="addr" type="text" id="textfield6" size="45" /></td>
                        </tr>
                        <tr 
              
              >
                          <td height="26" align="center" class="">email</td>
                          <td align="left" class=""><input class="textBox"  value="<%=h.get("email") %>"  name="email" type="text" id="textfield7" size="25" /></td>
                        </tr>
                        <tr 
              
              >
                          <td height="26" align="center" class="">PID</td>
                          <td align="left" class=""><input class="textBox"  value="<%=h.get("PID") %>"  name="PID" type="text" id="textfield8" size="25" /></td>
                        </tr>
                        
                        <tr 
              
              >
                          <td colspan="3" align="center" class="">
                          
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
                
                  
                    <td  align="center"  class="">
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
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>

<script language="javascript" src="/frolstore/shop/popup.js"></script>
