<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:directive.page import="util.Info"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<HTML xmlns=""><HEAD><TITLE>Online drink shop</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">


<LINK 
href="shop/globle.css" type=text/css rel=stylesheet><LINK 
href="shop/head.css" type=text/css rel=stylesheet><LINK 
href="shop/copyright.css" type=text/css rel=stylesheet>
<SCRIPT src="shop/engine.js" type=text/javascript></SCRIPT>
<SCRIPT src="shop/util.js" type=text/javascript> </SCRIPT>
<SCRIPT src="shop/pro.js" type=text/javascript> </SCRIPT>
<SCRIPT src="shop/ejproselect.js" type=text/javascript></SCRIPT>
<SCRIPT src="shop/bwuhan.js" type=text/javascript> </SCRIPT>
<script type='text/javascript' src='/frolstore/dwr/engine.js'></script>
<script type='text/javascript' src='/frolstore/dwr/util.js'> </script>
<script type='text/javascript' src='/frolstore/dwr/interface/Sysuser.js'> </script>

<LINK href=/frolstore/yyfiles/ys1.css type=text/css rel=stylesheet>

<STYLE type=text/css>
.STYLE4 {font-size: 18px}
</STYLE>

<META content="MSHTML 6.00.2900.3059" name=GENERATOR>
</HEAD>
<BODY background="/frolstore/admin/images/bj.gif"><LINK href="shop/head.css" 
type=text/css rel=stylesheet>
<SCRIPT src="shop/head.js" type=text/javascript></SCRIPT>



<%

if(request.getAttribute("suc")!=null)
{
 %>
 <script language=javascript>
 alert("Register successful");
 parent.location.replace("/frolstore/index.jsp");
 </script>
 <%
 }
  %>
  <jsp:include page="top.jsp"></jsp:include>
<form action="/frolstore/servlet/Regeditmember" method="post" name="f1" >

<TABLE cellSpacing=0 cellPadding=0 width=779 align=center border=0 >
  <TBODY>
  <TR>
   
  </TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=779 align=center border=0>
  <TBODY>
  <TR>
   
    <TD vAlign=top width=6></TD>
    <TD vAlign=top>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD height=1></TD>
        </TR>
        <TR>
          <TD><LINK href="shop/globle.css" type=text/css 
            rel=stylesheet><LINK href="shop/head.css" type=text/css 
            rel=stylesheet><LINK href="shop/copyright.css" 
            type=text/css rel=stylesheet>
            <SCRIPT src="shop/engine.js" type=text/javascript></SCRIPT>

            <SCRIPT src="shop/util.js" type=text/javascript> </SCRIPT>

            <SCRIPT src="shop/pro.js" type=text/javascript> </SCRIPT>

            <SCRIPT src="shop/ejproselect.js" 
            type=text/javascript></SCRIPT>

            <SCRIPT src="shop/bwuhan.js" 
type=text/javascript> </SCRIPT>
          <script type="text/javascript">
          
          </script>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" 
            onc border=0>
              <TBODY>
                <TR>
              <TD colspan="2" align="center" height="30"><strong>Register</strong></TD>
              </TR>
              
              
              <TR style="display: none">
              <TD width="26%" align="center" height="26">User type</TD>
              <TD width="74%">&nbsp;
              
              <label><input type="radio" name="utype"  value="1" checked="checked" >   Buyer       </label>&nbsp;&nbsp;
         
          



    </TD>
              </TR>
              
              
              
              <TR>
              <TD width="26%" align="center" height="26">User name</TD>
              <TD width="74%">&nbsp;
<input type="text" name="uname" id="textfield" ><span id=cuname ></span>              </TD>
              </TR>
              <TR>
                <TD align="center" height="26">Password</TD>
                <TD width="74%">&nbsp;
  <input type="password" name="upass" id="textfield"><span id=cupass ></span>           </TD>
              </TR>
              <TR>
                <TD align="center" height="26">Repeat password</TD>
                <TD>&nbsp;
<input type="password" name="upass2" id="textfield3"><span id=cupass2 ></span></TD>
              </TR>
              <TR>
                <TD align="center" height="26">Name</TD>
                <TD>&nbsp;
<input name="tname" type="text" id="textfield4" size="10">
<span id=ctname ></span></TD>
              </TR>
              <TR>
                <TD align="center" height="26">Gender</TD>
                <TD>&nbsp;
                  <label>
                  <input type="radio" name="sex" checked="checked" id="radio" value="Male">
                  Male
                  <input type="radio" name="sex" id="radio2" value="Female">
                  Female
                  </label>
                  <div id=d4 ></div></TD>
              </TR>
               <TR>
                <TD align="center" height="26">Age</TD>
                <TD>&nbsp;
                  <input name="age" type="text" id="textfield2" size="10">
                  <span id=cage ></span></TD>
              </TR>
               <TR>
                <TD align="center" height="26">Phone</TD>
                <TD>&nbsp;
                  <input name="tel" type="text" id="textfield5" size="25"><span id=ctel ></span>
                 </TD>
              </TR>
               <TR>
                <TD align="center" height="26">Address</TD>
                <TD>&nbsp;
                  <input name="addr" type="text" id="textfield6" size="45"><span id=caddr ></span>
                 </TD>
              </TR>
               <TR>
                <TD align="center" height="26">email</TD>
                <TD>&nbsp;
                  <input name="email" type="text" id="textfield7" size="25"><span id=cemail ></span>
                  </TD>
              </TR>
               <TR>
                <TD align="center" height="26">PID</TD>
                <TD>&nbsp;
                  <input name="PID" type="text" id="textfield8" size="25"><span id=cPID ></span>
                  </TD>
              </TR>
              <TR>
                <TD height="47" colspan="2" align="center"><label>
                  <input type="button" name="button" onClick="check();" id="button" value="submit">&nbsp;&nbsp;&nbsp;
                  
                  <script type="text/javascript">
                  function check()
                  {
                  if(f1.uname.value=="")
                  {
                  document.getElementById("cuname").innerHTML="<font color=red>&nbsp;Input user name</font>";
                  return;
                  }
                  
            var ajax = new AJAX();
            ajax.post("/frolstore/servlet/CheckUname?uname="+f1.uname.value);
            var msg = ajax.getValue();
            if(msg == 'y'){
                document.getElementById("cuname").innerHTML="<font color=red>&nbsp;User name existed, try another one.</font>";
                return;
            }else{
            document.getElementById("cuname").innerHTML="";
            }
                                if(f1.upass.value=="")
                                 {
                                  document.getElementById("cupass").innerHTML="<font color=red>&nbsp;Input password</font>";
                                 return;
                                 }else{
                                  document.getElementById("cupass").innerHTML="";
                                 }
                                 
                                 if(f1.upass2.value=="")
                                 {
                                 document.getElementById("cupass2").innerHTML="<font color=red>&nbsp;Repeat password</font>";
                                 return;
                                 }else{
                                 document.getElementById("cupass2").innerHTML="";
                                 }
                                 
                                 if(f1.upass.value!=f1.upass2.value)
                                 {
                                  document.getElementById("cupass2").innerHTML="<font color=red>&nbsp;The passwords should be the same</font>";
                                  return;
                                 }else{
                                 document.getElementById("cupass2").innerHTML="";
                                 }
                                 
                                 if(f1.tname.value=="")
                                 {
                                  document.getElementById("ctname").innerHTML="<font color=red>&nbsp;Input name</font>";
                                  return;
                                 }else{
                                  document.getElementById("ctname").innerHTML="";
                                 }
                                 
                                  if(f1.age.value=="")
                                 {
                                  document.getElementById("cage").innerHTML="<font color=red>&nbsp;Age</font>";
                                  return;
                                 }else{
                                  document.getElementById("cage").innerHTML="";
                                 }
                                 
                                   if(isNaN(f1.age.value))
                                 {
                                  document.getElementById("cage").innerHTML="<font color=red>&nbsp;Age should be in number</font>";
                                  return;
                                 }else{
                                  document.getElementById("cage").innerHTML="";
                                 }
                              
                              
                               if(f1.tel.value=="")
                                 {
                                  document.getElementById("ctel").innerHTML="<font color=red>&nbsp;Input phone number</font>";
                                  return;
                                 }else{
                                  document.getElementById("ctel").innerHTML="";
                                 }
                                 
                                 if(isNaN(f1.tel.value))
                                 {
                                  document.getElementById("ctel").innerHTML="<font color=red>&nbsp;Phone number should be in number</font>";
                                  return;
                                 }else{
                                  document.getElementById("ctel").innerHTML="";
                                 }
                                 
                                 
                                 var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
                                 
                                 if(!reg.test(f1.email.value))
                                 {
                                  document.getElementById("cemail").innerHTML="<font color=red>&nbsp;email incorrect</font>";
                                  return;
                                 }else{
                                  document.getElementById("cemail").innerHTML="";
                                 }
                                 
                                 
                                 if(f1.PID.value!=""){
                                  if(isNaN(f1.PID.value))
                                 {
                                  document.getElementById("ctel").innerHTML="<font color=red>&nbsp;PID should be in number</font>";
                                  return;
                                 }else{
                                  document.getElementById("ctel").innerHTML="";
                                 }
                                 }
                                 
                
                             f1.submit();
                                 
                  }
                  </script>
                  
                  <input type="reset" name="button2"  value="reset">
                  <script language="javascript" src="/frolstore/shop/popup.js"></script>
                  <script language="javascript" src="/frolstore/yyfiles/ajax.js"></script>
                </label></TD>
                </TR>
              </TBODY></TABLE></TD></TR>
        <TR>
          <TD height=1></TD>
      </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      
      </form>
      <LINK 
href="shop/head.css" type=text/css rel=stylesheet>

<jsp:include page="foot.jsp"></jsp:include>


</BODY></HTML>



