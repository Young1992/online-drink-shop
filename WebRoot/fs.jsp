<%@ page language="java" import="java.util.*,java.text.* " contentType="text/html;charset=utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0034)http://www.huachu.com.cn/index.asp -->
<HTML><HEAD><TITLE>Online drink shop</TITLE>
<LINK href=/frolstore/yyfiles/ys1.css type=text/css rel=stylesheet>
<SCRIPT src="/frolstore/admin/images/popup.js" type=text/javascript> </SCRIPT>
<STYLE type=text/css>
.STYLE4 {font-size: 18px}
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
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>

<%
String tgj = request.getParameter("tgj");
String zhj = request.getParameter("zhj");
String fs = request.getParameter("fs");
String shdz = request.getParameter("shdz") ;
String zffs = request.getParameter("zffs");

String shfs = request.getParameter("shfs");
String lxdh = request.getParameter("lxdh");
CommDAO dao = new CommDAO();

HashMap user = (HashMap)session.getAttribute("user");
String sql = "select a.*,c.booknum,c.bookid,c.uname from pros a,bookcar c where  a.id=c.bookid and c.uname='"+user.get("id")+"'";

List<HashMap> list = dao.select(sql);


if(fs!=null)
{
String totalnum = "";
 
totalnum = tgj;
 

for(HashMap h:list)
{
dao.commOper("insert into bookorder(uid,bid,num,savetime,state,shdz,zffs,shfs,lxdh,totalnum) values('"+h.get("uname")+"','"+h.get("bookid")+"','"+h.get("booknum")+"','"+Info.getDateStr()+"','0','"+shdz+"','"+zffs+"','"+shfs+"','"+lxdh+"','"+totalnum+"')");
}
dao.commOper("delete from bookcar where uname='"+user.get("id")+"'");

%>

<script type="text/javascript">
alert("Order has been submitted");
parent.window.location.replace("/frolstore/");
</script>

<%
}

 %>

           <form method="post" name="f33" action="fs.jsp?fs=fs&tgj=<%=tgj%>&zhj=<%=zhj %>" >
            <TABLE cellSpacing=0 cellPadding=0 width=100% align=center 
              border=0>
             <%
String suc = request.getParameter("suc");

%>
              <TBODY>
              <TR>
                <TD height=10></TD></TR>
              <TR>
                <TD>
                  <DIV align=left>
                  
               &nbsp;&nbsp;&nbsp;Payment method: 
<input  name="zffs" type="radio" id="key" value="cash" checked="checked"> cash
<input  name="zffs" type="radio" id="key"   value="card" > card

<br><br>  
                  
                  &nbsp;&nbsp;&nbsp;Address: 
                    <input 
                   name="shdz" type="text" id="key"
                  style="BORDER-RIGHT: #999999 1px solid; BORDER-TOP: #999999 1px solid; FONT-SIZE: 9pt; BORDER-LEFT: #999999 1px solid; BORDER-BOTTOM: #999999 1px solid; BACKGROUND-COLOR: #f9fcff" size="40">
                    <br><br>

&nbsp;&nbsp;&nbsp;Delivery: 
<input 
                   name="shfs" type="text" id="key"
                  style="BORDER-RIGHT: #999999 1px solid; BORDER-TOP: #999999 1px solid; FONT-SIZE: 9pt; BORDER-LEFT: #999999 1px solid; BORDER-BOTTOM: #999999 1px solid; BACKGROUND-COLOR: #f9fcff" size="40">
<br><br>
&nbsp;&nbsp;&nbsp;Phone: 
<input 
                   name="lxdh" type="text" id="key"
                  style="BORDER-RIGHT: #999999 1px solid; BORDER-TOP: #999999 1px solid; FONT-SIZE: 9pt; BORDER-LEFT: #999999 1px solid; BORDER-BOTTOM: #999999 1px solid; BACKGROUND-COLOR: #f9fcff" size="40">
<br><br>

<center>
                    <span onClick="f33.submit()" style="cursor: hand" > <input type=button value="submit"/> </span>
                    </center>
                    
                    
                    <script type="text/javascript">
                  
                    </script>
                    
			      </DIV></TD></TR>
            
              <TR>
                <TD height=7></TD></TR>
                </TABLE>
             
                
                
                
                
                
                
</form>
                
          
          
          </BODY></HTML>
