<%@ page language="java" import="java.util.*,java.text.* " contentType="text/html;charset=gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0034)http://www.huachu.com.cn/index.asp -->
<HTML><HEAD><TITLE>Online drink shop</TITLE>
<LINK href=/frolstore/yyfiles/ys1.css type=text/css rel=stylesheet>
<SCRIPT src="/frolstore/admin/images/popup.js" type=text/javascript> </SCRIPT>
<STYLE type=text/css>
.STYLE5 {color: #333333}
</STYLE>

<META content="MSHTML 6.00.2900.3059" name=GENERATOR></HEAD>

<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>
<STYLE type=text/css>.style1 {
	COLOR: #ffff00
}
</STYLE>
	<style type="text/css">
		<!--
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
			overflow:hidden;
		}
		.STYLE3 {color: #528311; font-size: 12px; }
		.STYLE4 {
			color: #42870a;
			font-size: 12px;
		}
		-->
		</style>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0 style="overflow: scroll;">

<TABLE width=779 height="85" border=0 align=center cellPadding=0 cellSpacing=0>
  <TBODY>
  <TR>
    <TD width=295 height="101" rowspan="3" ><a href="/frolstore/">
     <img src="/frolstore/yyfiles/yy.bmp" width="200" height="72" border="0"></a></TD>
    <TD width=484 height="42" align="right" valign="top" >&nbsp;&nbsp;&nbsp;      </TD>
  </TR>
  <TR>
    <TD height="30" align="right" valign="bottom" ><span class="STYLE5"><font size="3" face="»ªÎÄÐÐ¿¬" style="font-weight: normal;">Welcome to the online drink shop.&nbsp;&nbsp;<br />We have the best drink and price.&nbsp;</font> </span></TD>
  </TR>
  <TR>
    <TD height="13" >&nbsp;</TD>
  </TR>
  </TBODY></TABLE>




<TABLE cellSpacing=0 cellPadding=0 width=779 align=center border=0>
  <TBODY>
  <TR>
    <TD bgColor=#efefef height=35 ckass="k">
      <DIV align=center>
      
      
      
      <%
      HashMap h = (HashMap)session.getAttribute("user");
      if(h==null)
      {
       %>
          <FORM id=login onSubmit="return chkdata();" style="display: inline" name="loginform"  action=/frolstore/servlet/Login?utype=1 method=post>
      <TABLE cellSpacing=0 cellPadding=0 width=515 align=center border=0>
  <TBODY>
  <TR><input type=hidden name=method value=user>
    <TD width=113><IMG height=29 src="/frolstore/yyfiles/hc_index_13.gif" 
      width=110></TD>
    <TD width=25>
      <DIV align=center>User name</DIV></TD>
    <TD width=101><INPUT onmouseover=this.focus() 
      style="BORDER-RIGHT: #999999 1px solid; BORDER-TOP: #999999 1px solid; FONT-SIZE: 9pt; BORDER-LEFT: #999999 1px solid; BORDER-BOTTOM: #999999 1px solid; BACKGROUND-COLOR: #f9fcff" 
      onfocus=this.select() size=14 id=bjxpassinfono name=uname></TD>
    <TD width=29>
      <DIV align=center>PS</DIV></TD>
    <TD width=97><INPUT onmouseover=this.focus() 
      style="BORDER-RIGHT: #999999 1px solid; BORDER-TOP: #999999 1px solid; FONT-SIZE: 9pt; BORDER-LEFT: #999999 1px solid; BORDER-BOTTOM: #999999 1px solid; BACKGROUND-COLOR: #f9fcff" 
      onfocus=this.select() type=password size=14 id=bjxpassinfopwd name=upass></TD>
    <TD width=31>
      <DIV align=center><INPUT type=image 
      src="/frolstore/yyfiles/hc_index_14.gif" name=submit></DIV>
      
       <SCRIPT type=text/javascript>

function chkdata(){
		    	var a = document.getElementById("bjxpassinfono").value;
			 var p = document.getElementById("bjxpassinfopwd").value;
			 if(a=="")
			 {
			 alert("Input user name");
			 return false; 
			 }
			 if(p=="")
			 {
			 alert("Input password");
			 return false; 
    		}
    }
</SCRIPT>      </TD>
    <TD width=63><font color=orange><a 
      href="/frolstore/regedit.jsp" 
      target=_blank>Register</a></font> </TD>
    <TD width=56>
      <DIV align=center><FONT color=#680c0c><br></FONT></DIV></TD></TR></TBODY></TABLE>
      </FORM>
      <%
      }else{
       %>
      
      
      
      
           <TABLE cellSpacing=0 cellPadding=0 width=515 align=center border=0>
  <TBODY>
  <TR>
    <TD align=center>Welcome back, <%=h.get("uname") %> </TD>
    <TD align=center><a href="fcdd.jsp" target="_parent">My order</a></TD>
    <TD align=center><a href="car.jsp" target="_parent">My cart</a> </TD> 
    <TD align=center><a href="message.jsp" target="_parent">Message</a> </TD>
    <TD align=center><a href="upxx.jsp" target="_parent">My info</a> </TD>
    <TD align=center><a href=/frolstore/LoginOut.jsp>Logout</a></TD>
  </TR></TBODY></TABLE>
      
      <%} %>
      
      
      
      
      
      </DIV></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=779 align=center border=0>
  <TBODY>
  <TR>
    <TD bgColor=#dfe1e7 height=1></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=779 align=center border=0>
  <TBODY>
  <TR>
    <TD height=3></TD></TR></TBODY></TABLE>

<TABLE cellSpacing=0 cellPadding=0 width=779 align=center bgColor=#ffffff 
border=0>
  <TBODY>
  <TR>
    <TD height=124>
      <TABLE cellSpacing=0 cellPadding=0 width=580 border=0>
        <TBODY>
        
        <TR>
          <TD>
            <TABLE height=107 cellSpacing=0 cellPadding=0 border=0>
              <TBODY>
              <TR>
                <TD height="107"><a href="/frolstore/"><img src="/frolstore/yyfiles/yy1.bmp" width="580" height="95" border="0"></a><A href="javascript:jump2url()"></A></TD>
              </TR>
              
      </TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
    <TD vAlign=top width=190>
      <TABLE cellSpacing=0 cellPadding=0 width=190 border=0>
        <TBODY>
        <TR>
          <TD colSpan=3 height=2></TD></TR>
        <TR>
          <TD colSpan=3><IMG height=40 
            src=/frolstore/yyfiles/hc_index_15.gif 
            width=190></TD></TR>
        <TR>
          <TD width=1 bgColor=#dedfde></TD>
          <TD width=188>
          
          
          
           
            <TABLE cellSpacing=0 cellPadding=0 width=180 align=center 
              border=0>
             
              <TBODY>
              <TR>
                <TD height=10></TD></TR>
              <TR>
                <TD>
                  <DIV align=center>
                    <input type="text" id="key"
                  style="BORDER-RIGHT: #999999 1px solid; BORDER-TOP: #999999 1px solid; FONT-SIZE: 9pt; BORDER-LEFT: #999999 1px solid; BORDER-BOTTOM: #999999 1px solid; BACKGROUND-COLOR: #f9fcff" 
                   name=key><br><br>
                   Input key words&nbsp;
                    
                    
                    <img src=/frolstore/yyfiles/hc_index_16.gif value=¼ìË÷ onClick="sub();" />
                    <script type="text/javascript">
                    function sub()
                    {
                    var key = document.getElementById("key").value;
                    window.location.replace("/frolstore/index.jsp?f=f&key="+key);
                    }
                    </script>
                    
				   </DIV></TD></TR>
            
              <TR>
                <TD height=7></TD></TR>
                </TABLE>
             
                
                
                
                
                
                
                
                
                
                
                
                </TD>
          <TD width=1 bgColor=#dedfde></TD></TR>
      
      
        
          
          
        </TABLE></TD></TR>
        
           <TR bgColor=#cecfce> <TD colSpan=4 height=1> </TD></TR>
        
        </TBODY></TABLE>
          
          
          
          
          
          
          </BODY></HTML>
