<%@page language="java" contentType="text/html; charset=GBK"%>

<jsp:useBean id="service" scope="session"
	class="com.jiangh.webuc.webclient.RegisterWebClient" />
<jsp:useBean id="util" scope="session"
	class="com.jiangh.webuc.util.Utility" />

<%
	/*
	����strUserIDΪȫ�����û����롣
	����nSPNumberΪ��ֵ�û����ڵر�š�
	����strStartTimeΪ��ѯ��ֵ��Ϣ��ʼʱ�䣬������ʱ���룬14λ�ַ�����YYYYMMDDhhmmss����
	����strStopTimeΪ��ѯ��ֵ��Ϣ����ʱ�䣬������ʱ���룬14λ�ַ�����YYYYMMDDhhmmss����
	���ض�ά�ַ�������String[][]
	public String[][] GetCallRecordsDuration(String strUserID , int nSPNumber ,
	                                        String strStartTime, String strStopTime)
	 */
	String uc = request.getParameter("uc");
	String pw = request.getParameter("pw");

	System.out.println(uc);
	System.out.println(pw);

	String returnStr = service.registerToService(uc, pw);
	System.out.println(returnStr);
%>

<SCRIPT LANGUAGE="JavaScript">
function openfile(){
	window.open("./WebUCCompanion/client/help.jsp");
}
</SCRIPT>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GBK">
		<title>���Ӳ�ע�����ͨ��ҵ��</title>
	</head>
	<TABLE cellSpacing=0 cellPadding=0 width="100%" border=1 align=center>


		<tr>
			<td colspan="12" align=center>
				WebService������ɣ����ؽ��Ϊ��
			</td>
		</tr>
		<tr>
			<td colspan="12" align=center><%=returnStr%></td>
		</tr>
		<tr>
			<td colspan=12>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td align="center" width="50%" colspan=12>
				<a style="CURSOR: hand" onClick="javascript:void history.back();">
					<img src="../images/back.gif" width="67" height="23" border="0"
						align="middle"> </a>&nbsp;&nbsp;
				<a style="CURSOR: hand" onClick="openfile();"><FONT SIZE=""
					COLOR="blue">����</FONT> </a>
			</td>

		</tr>
	</table>
</html>
