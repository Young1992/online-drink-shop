<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
  <%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
String userid = user.get("id").toString();
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<% 
HashMap ext = new HashMap(); 
String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
ext.put("tglparentid",tglparentid); 
ext.put("status","Submitted"); 
new CommDAO().insert(request,response,"pros",ext,true,false); 
%>
<body>
<form  action="fbsp.jsp?f=f&tglparentid=<%=tglparentid%>"  name="f1" method="post"  onsubmit="return checkform()" >
<table width="95%" border="0" align="center"  cellpadding="0" cellspacing="0" >
  <tr>
    <td height="28" colspan="2" align="center"><strong>Add products</strong></td>
  </tr>
  <tr>
    <td width="221" height="34" align="center">Product name</td>
    <td width="1024" height="28" align="left"><input type=text  onblur='checkform()' class='' id='proname' name='proname' size=35 /><label id='clabelproname' /></td>
  </tr>
<tr>
    <td width="221" height="34" align="center">Expiration</td>
    <td width="1024" height="28" align="left"><input type=text  onblur='checkform()' class='' id='cpcj' name='cpcj' size=35 /><label id='clabelcpcj' /></td>
  </tr>
<tr>
    <td width="221" height="34" align="center">Origin</td>
    <td width="1024" height="28" align="left"><input type=text  onblur='checkform()' class='' id='cand' name='cand' size=35 /><label id='clabelcand' /></td>
  </tr>
<tr>
    <td width="221" height="34" align="center">Category </td>
    <td width="1024" height="28" align="left"><%=Info.getselect("protype","protype","typename~none"," 1=1 ")%> 
<label id='clabelprotype' />
</td>
  </tr>
<tr>
    <td width="221" height="34" align="center">Price</td>
    <td width="1024" height="28" align="left"><input type=text  onblur='checkform()'  size='8' class=''  id='mprice'  name='mprice'  onkeyup='clearNoNum(this);' onblur='clearNoNum(this);' onmouseup='clearNoNum(this);'    /><label id='clabelmprice' /></td>
  </tr>
<tr>
    <td width="221" height="34" align="center">Rest amount</td>
    <td width="1024" height="28" align="left"><input type=text  onblur='checkform()'  size='8' class=''  id='tgrs'  name='tgrs'  onkeyup='clearNoNum(this);' onblur='clearNoNum(this);' onmouseup='clearNoNum(this);'    /><label id='clabeltgrs' /></td>
  </tr>
<tr>
    <td width="221" height="34" align="center">Discount</td>
    <td width="1024" height="28" align="left"><select name='discount'  onblur='checkform()' >
<option value='no discount'>no discount</option> 
<option value='90'>90</option> 
<option value='80'>80</option> 
<option value='70'>70</option> 
<option value='60'>60</option> 
<option value='50'>50</option> 
<option value='40'>40</option> 
<option value='30'>30</option> 
<option value='20'>20</option> 
<option value='10'>10</option> 
</select>
<label id='clabeldiscount' />
</td>
  </tr>
<tr>
    <td width="221" height="34" align="center">Description </td>
    <td width="1024" height="28" align="left"><textarea  cols='35'  style='margin-top: 1px;margin-bottom: 1px'  class=''  name='pcontent'  ></textarea></td>
  </tr>
<tr>
    <td width="221" height="34" align="center">Picture </td>
    <td width="1024" height="28" align="left"><%=Info.getImgUpInfo(65)%></td>
  </tr>

  <tr>
    <td height="38" colspan="2" align="center"><label>
      <input type="submit" name="button" id="button" value="submit" />&nbsp;&nbsp;&nbsp;
      <input type=button value='return' onclick='window.location.replace("spgl.jsp")' />
    </label></td>
  </tr>
</table>
</form>
</body>
</html>
<script language=javascript src='/frolstore/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/frolstore/js/popup.js'></script>
<script language=javascript src='/frolstore/js/ajax.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
 function checkform(){  
var pronameobj = document.getElementById("proname");  
if(pronameobj.value==""){  
document.getElementById("clabelproname").innerHTML="&nbsp;&nbsp;<font color=red>Input product name</font>";  
return false;  
}else{
document.getElementById("clabelproname").innerHTML="  ";  
}  
  
var cpcjobj = document.getElementById("cpcj");  
if(cpcjobj.value==""){  
document.getElementById("clabelcpcj").innerHTML="&nbsp;&nbsp;<font color=red>Input expiration</font>";  
return false;  
}else{
document.getElementById("clabelcpcj").innerHTML="  ";  
}  
  
var candobj = document.getElementById("cand");  
if(candobj.value==""){  
document.getElementById("clabelcand").innerHTML="&nbsp;&nbsp;<font color=red>Input origin</font>";  
return false;  
}else{
document.getElementById("clabelcand").innerHTML="  ";  
}  
  
var protypeobj = document.getElementById("protype");  
if(protypeobj.value==""){  
document.getElementById("clabelprotype").innerHTML="&nbsp;&nbsp;<font color=red>Input category</font>";  
return false;  
}else{
document.getElementById("clabelprotype").innerHTML="  ";  
}  
  
var mpriceobj = document.getElementById("mprice");  
if(mpriceobj.value==""){  
document.getElementById("clabelmprice").innerHTML="&nbsp;&nbsp;<font color=red>Input price</font>";  
return false;  
}else{
document.getElementById("clabelmprice").innerHTML="  ";  
}  
  
var tgrsobj = document.getElementById("tgrs");  
if(tgrsobj.value==""){  
document.getElementById("clabeltgrs").innerHTML="&nbsp;&nbsp;<font color=red>Input rest amount</font>";  
return false;  
}else{
document.getElementById("clabeltgrs").innerHTML="  ";  
}  
  
return true;   
}   
</script>  
