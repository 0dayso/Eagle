<%@page language = "java" contentType="text/html; charset=GBK" %>


<jsp:useBean id="serviceCTD" scope="session" class="com.jiangh.webuc.webclient.CTDWebClient"/>
<jsp:useBean id="util" scope="session" class="com.jiangh.webuc.util.Utility"/>
<%
  
  String uc = request.getParameter("uc");
  String pw = request.getParameter("pw");
  String rand = service.getRandom();
  pw = service.getMM(rand + pw + pw);
  String port = Integer.toString(request.getServerPort());
  service.setHttpPort(port);
  String webRootDir = util.getWebRootDir();

  String[] returnStr = service.getCallStatus(uc, pw,rand);
System.out.println("size = " + returnStr.length);
%>

<SCRIPT LANGUAGE="JavaScript">
function openfile()
{
	window.open("/<%=webRootDir%>/client/help.jsp");
}
</SCRIPT>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>Web���ְ��¿ͻ��ˣ���ѯ������Ϣ</title>
</head>



<TABLE height=740 cellSpacing=0 cellPadding=0 width=750 align=center border=0 valign="top">
  <TR> 
    <td  height="42" colspan="8" align=center vAlign=middle>&nbsp;</td>
  </TR>
  <TR> 
    <td  height="42" colspan="8" align=center vAlign=middle><div align="left"><font color="#FF0000">Web���ְ��¿ͻ���</font></div></td>
  </TR>
  <TR> 
    <%
      if(returnStr[0].compareTo("0")<0){     %>
    <td  height="42" colspan="8" align=center vAlign=middle>������Ϣ��ѯʧ�ܣ�<%=returnStr[0]%></td>
  </TR>
  <%}else{%>
  <td  height="42" colspan="2" align=center vAlign=middle>������Ϣ��ѯ�ɹ���������Ϣ��</td>
  </TR>
  <TR> 
    <TD height="36" align=center vAlign=middle>&nbsp; 
    <TD width="90" height="36" colspan="-2" align=center vAlign=middle>���б�ʶ 
    <TD width="114" colspan="-2" align=center vAlign=middle>��ʼʱ�� 
    <TD width="116" colspan="-2" align=center vAlign=middle>����ʱ��(��) 
    <TD width="95" colspan="-2" align=center vAlign=middle>���� 
    <TD width="87" colspan="-2" align=center vAlign=middle>���� 
    <TD width="87" colspan="-2" align=center vAlign=middle>����״̬ 
    <TD width="88" colspan="-2" align=center vAlign=middle>&nbsp; 
    <TD align=middle vAlign=top bgColor=#FFFFFF></TD>
  </TR>
  <%
	        int callNum = Integer.parseInt(returnStr[1]);
			
		  if(callNum > 0){
	       for(int i=0;i<callNum;i++){
                      String str =   returnStr[2 + i].replace('|','-');
					  String[] call = str.split("-");
					  String callState = null;
					  switch(Integer.parInt(call[5])){
					  case 1:
					        callState = "���ڽ�ͨ����";
						break;
					  case 2:
					        callState = "�ɹ���ͨ���У����ڽ�ͨ����"; 	   
						break;
					  case 3:
					        callState = "���н���������ͨ��";	 
						break;
					  case 4:
					        callState = "���н���"; 
						break;
					  }
		%>
  <TR> 
    <TD height="36" align=center vAlign=middle>&nbsp; 
    <TD width="90" height="36" colspan="-2" align=center vAlign=middle><%=call[0]%> 
    <TD width="114" colspan="-2" align=center vAlign=middle><%=call[1]%> 
    <TD width="116" colspan="-2" align=center vAlign=middle><%=call[2]%> 
    <TD width="95" colspan="-2" align=center vAlign=middle><%=call[3]%> 
    <TD width="87" colspan="-2" align=center vAlign=middle><%=call[4]%> 
    <TD width="87" colspan="-2" align=center vAlign=middle><%=callState%> 
    <TD width="88" colspan="-2" align=center vAlign=middle>&nbsp; 
    <TD align=middle vAlign=top bgColor=#FFFFFF></TD>
  </TR>
  <%					  
          }
		 }
	  }	  
%>
  <TR> 
    <TD height="12" colspan="8" align=center vAlign=middle> <br> <table>
        <!--DWLayoutTable-->
        <tr> 
          <td width="12" align="center" valign="top"><a
                  style="CURSOR: hand"
                  onClick="javascript:void history.back();"><img src="/<%=webRootDir%>/images/back.gif" width="67" height="23" border="0" align="middle"></a></td>
          <td width="67"><a
                  style="CURSOR: hand"
                  onClick="openfile();"><FONT SIZE="" COLOR="blue">����</FONT></a></td>
        </tr>
      </table>
    <TD width="20" align=middle vAlign=top bgColor=#FFFFFF></TD>
  </TR>
  <tr> 
    <TD height="350" colspan="8" align=center vAlign=middle> </tr>
</table>
</html>
