<%@page language = "java" contentType="text/html; charset=GB2312" %>

<jsp:useBean id="service" scope="session" class="com.huawei.unica.svc.sip.callme.webservice.testclient.TestClient"/>
<SCRIPT LANGUAGE="JavaScript">
function openfile()
{
	window.open("/testWS/client/help.jsp");
}
</SCRIPT>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>Transfer Amount</title>
</head>
<%
    /* 12:
     ���ܣ� ת��
     ������ Transfer STRSOUTID=, SPINNUMBER=, NSPNUMBER=, STRSINID=, NAMOUNT
     ����strOutID��ת���û�ȫ����ID
     ����strOutPassword��ת���û�ȫ��������
     ����nSPNumber���û���ǰ���ڵ�(���Ρ����Ļ���ȫ���ĵ�SP�ı���)
     ����strInID��ת���û�ȫ����ID
     ����nChargeAmount��ת�ʽ��
     ���ת�ʳɹ��򷵻�true ,���򷵻�false.
     */
  String strOutID = request.getParameter("strOutID");
  String strOutPassword =  request.getParameter("strOutPassword");

  int nSPNumber = java.lang.Integer.parseInt(request.getParameter("nSPNumber").toString());
  String strSPPassword =request.getParameter("strSPPassword");
  String strInID = request.getParameter("strInID");
  int nChargeAmount =  java.lang.Integer.parseInt(request.getParameter("nChargeAmount"));
  int nChargeUnit = java.lang.Integer.parseInt(request.getParameter("nChargeUnit").toString());
  String wsName = request.getParameter("wsName");
  String wsPassword = request.getParameter("wsPassword");
  String port = Integer.toString(request.getServerPort());
  service.SetHttpPort(port);

  String strRtn = service.TransferClient("Transfer", strOutID, strOutPassword, nSPNumber,strSPPassword,strInID, nChargeAmount,nChargeUnit, wsName, wsPassword);

%>

<TABLE height=407 cellSpacing=0 cellPadding=0 width=750 align=center border=0
valign="top">
          <TR>
		    <% if (strRtn.equals("(401)Unauthorized")) {%>
			<td  height="42" colspan="5" align=center vAlign=middle>�û��������������WebService���񱻽�ֹʹ�ã�</td>
			<%}else{%>
			         <td  height="42" colspan="5" align=center vAlign=middle>WebService������ɣ����ؽ��Ϊ��<%=strRtn%></td>
			<%}%>
		  </TR>
		  <TR>
              <TD height="12" colspan="5" align=center vAlign=middle> <br> <table>
                  <!--DWLayoutTable-->
                  <tr>
                    <td width="12" align="center" valign="top"><a
                  style="CURSOR: hand"
                  onClick="javascript:void history.back();"><img src="/callme2/images/back.gif" width="67" height="23" border="0" align="middle"></a></td>
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
