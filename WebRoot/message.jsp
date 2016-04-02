<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:directive.page import="dao.CommDAO"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<HTML xmlns=""><HEAD><TITLE>Online drink shop</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<script type="text/javascript">
<!--
var timerID = null
var timerRunning = false
function MakeArray(size) {
    this.length = size;
    for(var i = 1; i <= size; i++)
      {
        this[i] = "";
      }
  return this;
}
function stopclock (){
    if(timerRunning)
    clearTimeout(timerID);
    timerRunning = false
}
function showtime (){
  var now = new Date();
  var year = now.getYear();
  var month = now.getMonth() + 1;
  var date = now.getDate();
  var hours = now.getHours();
  var minutes = now.getMinutes();
  var seconds = now.getSeconds();
  var day = now.getDay();
  Day = new MakeArray(7);
  Day[0]="Sunday";
  Day[1]="Monday";
  Day[2]="Tuesday";
  Day[3]="Wednesday";
  Day[4]="Thursday";
  Day[5]="Friday";
  Day[6]="Saturday";
  var timeValue = " ";
 timeValue += year + "Year";
  timeValue += ((month < 10) ? "0" : "") + month + "Month";
  timeValue += date + "Date ";
  timeValue += (Day[day]) + " ";
 // timeValue += (hours < 12) ? "上午 " : "下午 ";
  timeValue +=hours;
  timeValue += ((minutes < 10) ? ":0" : ":") + minutes;
  timeValue += ((seconds < 10) ? ":0" : ":") + seconds;
  var clock = document.getElementById("clock");
  clock.innerText = timeValue;
  timerID = setTimeout("showtime()",1000);
  timerRunning = true
}
function startclock () {
  stopclock();
  showtime()
}
//-->
    
    function myOpen(winurl,winname) {
           objWin__ = window.open( winurl,winname, "scrollbars=no,status=yes,resizable=no,top=0,left=0,width="+(screen.availWidth-10)+",height="+(screen.availHeight-30));
 objWin__ .focus();
 
 return true;
}
 

</script>

<LINK 
href="shop/globle.css" type=text/css rel=stylesheet><LINK 
href="shop/head.css" type=text/css rel=stylesheet><LINK 
href="shop/copyright.css" type=text/css rel=stylesheet>

<META content="MSHTML 6.00.6000.16981" name=GENERATOR>
</HEAD>
<BODY style="overflow: scroll"><LINK href="shop/head.css" 
type=text/css rel=stylesheet>
<SCRIPT src="shop/head.js" type=text/javascript></SCRIPT>


<jsp:include flush="true" page="top.jsp"></jsp:include>

<%
CommDAO dao = new CommDAO();

 %>

<TABLE cellSpacing=0 cellPadding=0 width=950 align=center border=0>
  <TBODY>
  <TR>
   
  </TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=762 align=center border=0>
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
          <TD><LINK href="/frolstore/shop/globle.css" type=text/css 
            rel=stylesheet><LINK href="/frolstore/shop/head.css" type=text/css 
            rel=stylesheet><LINK href="/frolstore/shop/copyright.css" 
            type=text/css rel=stylesheet>
            <SCRIPT src="/frolstore/shop/engine.js" type=text/javascript></SCRIPT>

            <SCRIPT src="/frolstore/shop/util.js" type=text/javascript> </SCRIPT>

            <SCRIPT src="/frolstore/shop/pro.js" type=text/javascript> </SCRIPT>

            <SCRIPT src="/frolstore/shop/ejproselect.js" 
            type=text/javascript></SCRIPT>

            <SCRIPT src="/frolstore/shop/bwuhan.js" 
type=text/javascript> </SCRIPT>

            <TABLE cellSpacing=0 cellPadding=0 width="100%" 
            background=/frolstore/shop/02side(1).gif border=0>
              <TBODY>
              <TR>
                <TD height=27 colspan="2" background=/frolstore/shop/02top(1).gif>
                  <TABLE cellSpacing=0 cellPadding=0 width=730 align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=titleorange14 align=left width=80>Messages<br></TD>
                      <TD class=orangelight align=right>&nbsp;</TD>
                    </TR></TBODY></TABLE></TD></TR>
             
             
              <%
             
String dpagee = request.getParameter("dpagee")==null?"1":request.getParameter("dpagee");

int dpage = Integer.parseInt(dpagee); 

String sql = "select * from bmessage order by id desc";

int records = dao.select(sql).size();
int pages = 0;
if(records%5==0)pages=records/5;
if(records%5!=0)pages=records/5+1;
if(dpage<1)dpage=1;
if(dpage>pages)dpage=pages;

sql+=" limit "+(dpage-1)*5+","+dpage*5+" ";







List<HashMap> list = dao.select(sql);
				      int i=1;
				      for(HashMap n:list)
				      {
					  
					  
              %>
                           
                           <TR>
                           <TD  >&nbsp;
                              
                         <%=i %>  &nbsp;.&nbsp;  <%=n.get("author")+" &nbsp;("+n.get("savetime")+")&nbsp; said:  <br /><br /> " %>
                         
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <%=n.get("content")   %></TD></TR>
                          
                           
                           
                           <TR>
                                <TD  height="25">
                                
                                
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <font color="orange">
                                <%=n.get("reback").equals("")?"":"Admin's reply: "+n.get("reback")   %>
                                </font>
                              </TD>
                           </TR>
                             
                           
                    <%
                           i++;
                           }
                            %>
                           
                           
                           <TR>
                           <TD>
                           
                         
                           <TABLE cellSpacing=0 cellPadding=7 width="100%"    border=0>
                           <TBODY>
                           <TR>
                           <TD height="27" align="center"  class=>


total <%=records %> records
                                
                                &nbsp;&nbsp;
                                
                                now <%=dpage %>/<%=pages %> page
                                
                                &nbsp;&nbsp;
                                
                                <a href="/frolstore/message.jsp">first</a>
                                
                                &nbsp;&nbsp;
                                
                                <a href="/frolstore/message.jsp?dpagee=<%=dpage-1 %>">last</a>
                                
                                &nbsp;&nbsp;
                                
                                <a href="/frolstore/message.jsp?dpagee=<%=dpage+1 %>">next</a>
                                
                                &nbsp;&nbsp;
                                
                                
                                <a href="/frolstore/message.jsp?dpagee=<%=pages %>">end</a>



</TD>
                           </TR>
                           </TBODY></TABLE>
                          
                           
                           </TD></TR>
                           
                           

 <TR>
                           <TD>
                           
                           <form method="post" action="/frolstore/servlet/Message" name=f1 >
                           <TABLE cellSpacing=0 cellPadding=7 width="100%"    border=0>
                           <TBODY>
                           <TR>
                           <TD align="center"  class=titleorange14_2> Say something</TD>
                           </TR>
                           <TR>
                           <TD>
                              <TABLE class=gray666 cellSpacing=0 cellPadding=0 
                              width="100%" border=0>
                                <TBODY>
                               
                                <TR>
                                <TD align="center"><label>
                                  <textarea name="content" id="textarea" cols="45" rows="5"></textarea>
                                </label></TD>
                           </TR>
                           
                           <TR>
                                <TD align="center"><label>
                                <input type="submit" name="button" id="button" value="submit">
                                </label></TD>
                           </TR>
                           </TBODY></TABLE></TD></TR></TBODY></TABLE>
                           </form>
                           
                           </TD></TR>








                     

             <%
            // }
              %>
             
             
             
             
             
             
             
              </TBODY></TABLE></TD></TR>
        <TR>
          <TD height=1></TD>
        </TR>
        <TR>
          <TD align="center"><LINK href="/frolstore/shop/globle.css" type=text/css 
            rel=stylesheet><LINK href="/frolstore/shop/head.css" type=text/css 
            rel=stylesheet><LINK href="/frolstore/shop/copyright.css" 
            type=text/css rel=stylesheet>
            <SCRIPT src="/frolstore/shop/engine.js" type=text/javascript></SCRIPT>

            <SCRIPT src="/frolstore/shop/util.js" type=text/javascript> </SCRIPT>

            <SCRIPT src="/frolstore/shop/pro.js" type=text/javascript> </SCRIPT>

            <SCRIPT src="/frolstore/shop/ejproselect.js" 
            type=text/javascript></SCRIPT>

            <SCRIPT src="/frolstore/shop/bwuhan.js" 
type=text/javascript> </SCRIPT>
            ${page.info}</TD>
        </TR></TBODY></TABLE></TD></TR></TBODY></TABLE><LINK 
href="/frolstore/shop/head.css" type=text/css rel=stylesheet>

<jsp:include flush="true" page="foot.jsp"></jsp:include>



</BODY></HTML>



