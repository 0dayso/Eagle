<%@page language = "java" contentType="text/html; charset=GBK" %>

<jsp:useBean id="serviceCTC" scope="session" class="com.jiangh.webuc.webclient.CTCWebClient"/>
<jsp:useBean id="util" scope="session" class="com.jiangh.webuc.util.Utility"/>

<%
  String uc = (String)session.getAttribute("uc");
  String pw = (String)session.getAttribute("pw");
  String confID = (String)request.getAttribute("confID");
  String webRootDir = util.getWebRootDir();
  
  String[] returnStr = (String [])serviceCTC.getConfInfo(uc, pw,confID);
  
%>


<SCRIPT LANGUAGE="JavaScript">
function openfile()
{
	window.open("/<%=webRootDir%>/client/help.jsp");
}

function closeWindow(){
     window.close();
}
</SCRIPT>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>Web���ְ��¿ͻ��ˣ���ѯ�᳡��Ϣ</title>
</head>



<TABLE height=488 cellSpacing=0 cellPadding=0 width=750 align=center border=0
valign="top">
  <TR>
    <td  height="42" colspan="5" align=center vAlign=middle><div align="left"></div></td>
    <td  height="42" colspan="5" align=center vAlign=middle>&nbsp;</td>
  </TR>
  <TR> 
    <td  height="42" colspan="5" align=center vAlign=middle><div align="left"><font color="#FF0000">Web���ְ��¿ͻ���</font></div></td>
    <td  height="42" colspan="5" align=center vAlign=middle>&nbsp;</td>
  </TR>
  <TR> 
    <% if (returnStr[0].compareTo("0")<0) {%>
    <td  height="42" colspan="5" align=center vAlign=middle>��ȡ������Ϣʧ�ܣ� <%=returnStr[0]%></td>
    <%}else{%>
    <td  height="42" colspan="5" align=center vAlign=middle>�ɹ���ȡ������Ϣ��</td>
  </TR>
  <TR>
        <td  height="42" colspan="5" align=center vAlign=right>���⣺</td>
		<td  height="42" colspan="5" align=center vAlign=left><%=returnStr[2]%></td>
  </TR>
  <TR>
        <td  height="42" colspan="5" align=center vAlign=right>��ʼʱ�䣺</td>
		<td  height="42" colspan="5" align=center vAlign=left><%=returnStr[3]%></td>
  </TR>
  <TR>
        <td  height="42" colspan="5" align=center vAlign=right>���룺</td>
		<td  height="42" colspan="5" align=center vAlign=left><%=returnStr[4]%></td>
  </TR>
  <TR>
        <td  height="42" colspan="5" align=center vAlign=right>�����ˣ�</td>
		<td  height="42" colspan="5" align=center vAlign=left><%=returnStr[5]%></td>
  </TR>
  <TR>
        <td  height="42" colspan="5" align=center vAlign=right>����֧�ֵ�������������</td>
		<td  height="42" colspan="5" align=center vAlign=left><%=returnStr[6]%></td>
  </TR>
   <TR>
<%
        String confType = null;
		if(returnStr[10].equals("0")){
		          confType = "��ͨ����";
		}
 %>
        <td  height="42" colspan="5" align=center vAlign=right>�������ͣ�</td>
		<td  height="42" colspan="5" align=center vAlign=left><%=confType%></td>
  </TR>
  <TR>
<%
        String confStatus = null;
		if(returnStr[11].equals("0")){
		          confStatus = "��ʼ����";
		}else if(returnStr[11].equals("0")){
		        confStatus = "��������ɹ�";
		}else if(returnStr[11].equals("2")){
		        confStatus = "������";
		}else if(returnStr[11].equals("3")){
		         confStatus = "��������";
		}
 %>
        <td  height="42" colspan="5" align=center vAlign=right>����״̬��</td>
		<td  height="42" colspan="5" align=center vAlign=left><%=confStatus%></td>
  </TR>
 <%
       int memNum = Integer.parseInt(returnStr[13]);
	   if(memNum > 0){
	          for(int i=0;i<memNum;i++){    
			         String str = returnStr[14+i].replace('|','-');
			         String[] member = str.split("-");
					 String memState = null;
					 if(member[1].equals("1")){
					       memState = "������";
					 }else if(member[1].equals("1")){
					       memState = "����߱��ֻ���";
					 }
					 String aut = null;
					 if(member[2].equals("1")){
					       aut = "��˵��Ȩ";
					 }    %>
					   <TR>
			               <td  height="42" colspan="5" align=center vAlign=right>�����<%=i+1%>��</td>
		                   <td  height="42" colspan="5" align=center vAlign=left><%=member[0]%>  |  <%=memState%>  |  <%=aut%>  |  <%=member[3]%></td>
					    </TR>
	<%    }
	   }
  }
 %>

  <TR> 
    <TD height="12" colspan="5" align=center vAlign=middle> <br> <table>
        <!--DWLayoutTable-->
        <tr> 
          <td width="12" align="center" valign="top"><a
                  style="CURSOR: hand"
                  onClick="closeWindow();"><img src="/<%=webRootDir%>/images/submit.gif" width="67" height="23" border="0" align="middle"></a></td>
          <td width="67"><a
                  style="CURSOR: hand"
                  onClick="openfile();"><FONT SIZE="" COLOR="blue">����</FONT></a></td>
        </tr>
      </table>
    <TD align=middle vAlign=top bgColor=#FFFFFF></TD>
  </TR>
  <tr> 
    <TD height="350" colspan="5" align=center vAlign=middle> </tr>
</table>
</html>

