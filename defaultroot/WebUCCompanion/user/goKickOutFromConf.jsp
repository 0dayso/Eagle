<%@page language = "java" contentType="text/html; charset=GBK" %>

<jsp:useBean id="serviceCTC" scope="session" class="com.jiangh.webuc.webclient.CTCWebClient"/>
<jsp:useBean id="util" scope="session" class="com.jiangh.webuc.util.Utility"/>

<%
  
  String uc = (String)session.getAttribute("uc");
  String pw = (String)session.getAttribute("pw");
  String confID = (String)session.getAttribute("confID");
  String webRootDir = util.getWebRootDir();
  
  String callee = request.getParameter("callee");
  String returnStr = serviceCTC.delFromConf(uc,pw,callee,confID);
%>

<SCRIPT LANGUAGE="JavaScript">
function openfile()
{
	window.open("/<%=webRootDir%>/client/help.jsp");
}

function closeWindow()
{
     window.close();
}
</SCRIPT>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>Web���ְ��¿ͻ��ˣ��߳������</title>
 </head>



<TABLE height=407 cellSpacing=0 cellPadding=0 width=750 align=center border=0 valign="top">
          <TR>
		         <td  height="42" colspan="5" align=center vAlign=middle>�߳�����߽����<%=returnStr%></td>
		  </TR>
		  <TR>
              <TD height="12" colspan="5" align=center vAlign=middle> <br> <table>
                  <!--DWLayoutTable-->
                  <tr>
                    <td width="12" align="center" valign="top"><a
                  style="CURSOR: hand"
                  onClick="closeWindow();"><img src="/<%=webRootDir%>/images/submit.gif" width="67" height="23" border="0" align="middle"></a></td>
                    <td width="67">&nbsp;</td>
					<td width="67"><a
                  style="CURSOR: hand"
                  onClick="openfile();"><FONT SIZE="" COLOR="blue">����</FONT></a></td>
                  </tr>
                </table>
              <TD align=middle vAlign=top bgColor=#6699cc></TD>
            </TR>
			<tr>
			  <TD height="350" colspan="5" align=center vAlign=middle>
			</tr>
</table>
</html>
