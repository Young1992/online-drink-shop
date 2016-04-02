<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:directive.page import="dao.CommDAO"/>
<jsp:directive.page import="util.Info"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<HTML xmlns=""><HEAD><TITLE>Online drink shop</TITLE>




<META content="MSHTML 6.00.6000.16981" name=GENERATOR>
<style type="text/css">
<!--
.STYLE3 {font-size: 14px}
-->
</style>
</HEAD>
<BODY >


<jsp:include flush="true" page="top.jsp"></jsp:include>

<%
CommDAO dao = new CommDAO();
HashMap user = (HashMap)session.getAttribute("user");
String clear = request.getParameter("clear");
String fs = request.getParameter("fs");
if(clear!=null)
{
dao.commOper("delete from bookcar where uname='"+user.get("id")+"'");
}



String did = request.getParameter("did");
if(did!=null)
{
dao.commOper("delete from bookcar where uname='"+user.get("id")+"' and bookid='"+did+"'");
}

String sql = "select a.*,c.booknum,c.bookid,c.uname from pros a,bookcar c where  a.id=c.bookid and c.uname='"+user.get("id")+"'";

List<HashMap> list = dao.select(sql);











if(fs!=null)
{

for(HashMap h:list)
{
dao.commOper("insert into bookorder(uid,bid,num,savetime,state) values('"+h.get("uname")+"','"+h.get("bookid")+"','"+h.get("booknum")+"','"+Info.getDateStr()+"','0')");
}
dao.commOper("delete from bookcar where uname='"+user.get("id")+"'");

%>

<script type="text/javascript">
alert("Your order has been submitted.");
window.location.replace("/frolstore/");
</script>

<%
}

 %>

<TABLE cellSpacing=0 cellPadding=0 width=950 align=center border=0>
  <TBODY>
  <TR>
   
  </TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=779 align=center border=0>
  <TBODY>
  <TR>
  
  
    <TD vAlign=top width=6></TD>
    <TD vAlign=top>
      

           

            <TABLE cellSpacing=0 cellPadding=0 width="100%" 
            background=shop/02side(1).gif border=0>
              <TBODY>
             
              <TR>
                <TD>
                  <TABLE cellSpacing=5 cellPadding=3 width="98%" align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD align=left width="33%">
                        <TABLE cellSpacing=0 cellPadding=0 width="100%" 
border=0>
                          <TBODY>
                          <TR>
                            <TD class=menutitle1>
                              <TABLE cellSpacing=5 cellPadding=3 width="98%" 
                              align=center border=0>
                                <TBODY>
                                <TR>
                                
                                
                                
                                <%
                                int i=0;
                                double ztotal = 0;
                                double ztotalz = 0;
                                for(HashMap h:list)
                                {
                                i++;
                                int dj = Integer.parseInt((String)h.get("mprice")) ;
                                int booknum =  Integer.parseInt((String)h.get("booknum")) ;
                                int dtotal = 0;
                                if(!h.get("discount").equals("no discount"))
                                 {dtotal = ((1-((Integer.parseInt(h.get("discount").toString())/100)))*dj*booknum);
                                ztotal+=dtotal;}
                                else 
                                 {int dtotalz =  dj*booknum ;
                                ztotal+=dtotalz;}
                                 %>
                                <TD align=left width="33%">
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width="38%" rowspan="4" class=menutitle1><img src="/frolstore/upfile/<%=h.get("filename") %>" width="70" height="67" /></TD>
                                <TD width="62%" height="19" class=menutitle1><a class=orange 
                                href="/frolstore/xiang.jsp?id=<%=h.get("id") %>" >
                                <%=h.get("proname") %>(<%=h.get("booknum") %>)</a></TD>
                                </TR>
                                <TR>
                                <TD class=menutitle2 height="19" >Price: <%=h.get("mprice") %>
                               
                                  
                                </TD>
                                </TR>
                                
                                 <TR>
                                <TD class=menutitle2 height="19" >
                               
                               Discount:<%=!h.get("discount").equals("no discount")?h.get("discount")+" %off":"no discount" %>
                                
                                </TD>
                                </TR>
                                
                                <TR>
                                  <TD class=menutitle2 height="19" ><a href="car.jsp?did=<%=h.get("id") %>">remove from cart</a></TD>
                                </TR>
                                </TBODY></TABLE></TD>
                                <%
                                if(i%3==0)
                                {%>
                                </tr><tr>
                                <%
                                }
                                }
                                 %>
                                
                                
                                
                                </TR>
                                
                                
                                
                                
                                
                                
                                
                                 <TR>
                                <td align="center" colspan="3" height="30">
                                 
                                  <span class="STYLE3">You should pay:
                                  <%
                                   if(500>=ztotal)
                                  {
                                  out.print(ztotal);
                                  }
                                 
                                  %> 
                                  
                                  
                                  </span>&nbsp;&nbsp;&nbsp;
                                
                                <a href="car.jsp?clear=clear"><span class="STYLE3" style="cursor: hand">clean the cart</span></a>
                                
                                  &nbsp;&nbsp;&nbsp;
                                
                                <a href="javascript:fsdd();"><span class="STYLE3" style="cursor: hand">confirm to order</span></a>
                                
                                <script type="text/javascript">
                                function fsdd()
                                {
                                  var pop=new Popup({ contentType:1,isReloadOnClose:false,width:390,height:190});
                                  pop.setContent("contentUrl","/frolstore/fs.jsp?tgj=<%=ztotal%>&zhj=<%=ztotalz%>");
				                  pop.setContent("title","send order");
				                  pop.build();
				                  pop.show();
                                }
                                </script>
                                
                                
                                 </td>
                                </TR>
                                
                                
                                
                                
                                
                                
                                
                                </TBODY>
                                
                                
                                
                                
                                
                                
                                </TABLE>
                              <A 
                              class=titleblue14 
                              href=""></A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
       
          


<form action="/sxy/school.action?methods=sendorder" target="mainn" method="post" name="f22">
<input type="hidden" name="pid" />
<input type="hidden" name="shopid" />
</form>
<script type="text/javascript">
function send(no,sid)
{
f22.pid.value=no;
f22.shopid.value=sid;
alert('Order has been sent');
f22.submit();
}
</script>
<iframe frameborder="0" name=mainn width="0" height="0"></iframe>


<jsp:include flush="true" page="foot.jsp"></jsp:include>



</BODY></HTML>



