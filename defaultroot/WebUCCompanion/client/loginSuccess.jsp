<%@page language = "java" contentType="text/html; charset=GBK" %>
<%
String UserName = request.getParameter("UserName");
String Password = request.getParameter("Password");
session.setAttribute("UserName",UserName);
session.setAttribute("Password",Password);
%>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>UCV2.2D300 WebService �ͻ��˲���</title>
</head>
<body>

 <p><b>UCV2.2D300 WebService �ͻ��˲���:</b></p>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <!--DWLayoutTable-->
  <tr>
    <td height=20></td>
  </tr>

  <tr align="center">
    <td width = "25%"></td><td width = "30%" align="left" ><a href="/testWS/client/getrandom.jsp"> ��ȡ�����</a></td>
    <td width = "30%" align=left><a href="/testWS/client/getCallBackAddr.jsp">ע��ص���ַ</a></td>

  </tr>
  
  <tr>
    <td height=10></td>
  </tr>
  <tr align="center">
    <td width = "25%"></td><td width = "30%" align="left"><a href="/testWS/client/dialCall.jsp">����CTD���� </a></td>
    <td align=left><a href="/testWS/client/stopCTD.jsp">��ֹCTD����</a></td>

  </tr>
  <tr>
    <td height=10></td>
  </tr>
  <tr>
	<td width = "25%"></td><td width = "30%" align=left><a href="/testWS/client/getCallStatus.jsp"> ��ѯCTD����״̬</a></td>
    <td width = "30%" align=left><a href="/testWS/client/getConfAnnID.jsp">��ѯ�᳡����ID</a></td>


  </tr>
  <tr>
    <td height=10></td>
  </tr>

  <tr>
    <td width = "25%"></td><td width = "30%" align=left><a href="/testWS/client/createConf.jsp">����CTC����</a></td>
    <td align=left><a href="/testWS/client/stopCTC.jsp">��ֹCTC����</a></td>


  </tr>
  <tr>
    <td height=10></td>
  </tr>
   <tr>
	<td width = "25%"></td><td width="30%" align=left><a href="/testWS/client/getConfInfo.jsp">��ѯ�᳡��Ϣ</a></td>
    <td align=left><a href="/testWS/client/getConfMember.jsp">��ѯ��������Ա</a></td>


  </tr>
  <tr>
    <td height=10></td>
  </tr>
  <tr>
	<td width = "25%"></td><td width="30%" align=left><a href="/testWS/client/getConfList.jsp">��ѯCTC�����б�</a></td>
    <td width="30%" align=left><a href="/testWS/client/addIntoConf.jsp">��������</a></td>


  </tr>
  <tr>
    <td height=10></td>
  </tr>
  <tr>
	<td width = "25%"></td><td align=left><a href="/testWS/client/kickOutFromConf.jsp">�߳������</a></td>
    <td align=left><a href="/testWS/client/playBackgroundVoice.jsp">���Ż᳡������</a></td>


  </tr>
  <tr>
    <td height=10></td>
  </tr>
   <tr>
	<td width = "25%"></td><td align=left><a href="/testWS/client/stopBackgroundVoice.jsp">ֹͣ�᳡������</a></td>
    <td align=left><a href="/testWS/client/startRecording.jsp">�����᳡¼��</a></td>


  </tr>
  <tr>
    <td height=10></td>
  </tr>
  <tr>
	<td width = "25%"></td><td align=left><a href="/testWS/client/stopRecording.jsp">ֹͣ�᳡¼��</a></td>
    <td align=left><a href="/testWS/client/setCalleeRight.jsp">�޸�����߷���Ȩ</a></td>


  </tr>
  <tr>
    <td height=10></td>
  </tr>
  <tr>
	<td width = "25%"></td><td align=left><a href="/testWS/client/getConfRecordVoice.jsp">��û᳡¼��</a></td>
     <td align=left><a href="/testWS/client/deleteConfRecordVoice.jsp">ɾ���᳡¼��</a></td>


 
  <tr>
    <td height=30></td>
  </tr>
   <tr align="center">
       <td></td>
    <td width="30%"></td><td width="30%" align="center" valign="top"><a
        style="CURSOR: hand"
        onClick="javascript:void history.back();"><img src="/testWS/images/back.gif" width="67" height="23" border="0" align="middle"></a></td>
  </tr>
  <tr>
    <td align=left height="20"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

</table>
</body>
</html>
