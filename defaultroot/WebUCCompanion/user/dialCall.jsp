<%@page language="java" contentType="text/html; charset=GBK"%>

<jsp:useBean id="util" scope="session"
	class="com.jiangh.webuc.util.Utility" />
<%
String webRootDir = util.getWebRootDir();
%>

<html>
	<style type="text/css">
table {
	font-family: "����";
	font-size: 18px;
	line-height: 20px
}

a:hover {
	color: #FF6600;
	text-decoration: underline
}

a:link {
	color: #000000;
	text-decoration: none
}

a:active {
	text-decoration: none
}

a {
	text-decoration: none;
	color: #000000
}

a {
	text-decoration: none
}

a:hover {
	color: red;
	text-decoration: none
}
</style>
	<style type="text/css">
.a1 {
	position: relative;
	font-family: Verdana;
	font-size: 20px;
	color: #ff0000;
}
</style>

	<title>�������</title>
	<meta http-equiv="Content-Type" content="text/html; charset=GBK">
	<script language="javaScript">
function formCheck()
{
  return true;
}

function isNumber(strString)
{
  var theLen = strString.length;
  var goodName = true;
  for (var i = 0 ; i < theLen ; i ++)
  {
    var theChar = strString.substring(i, i + 1);

    if (theChar >="0" && theChar <= "9")
    {

      continue;
    }
    else
    {

      goodName = false;
      break;
    }
  }

  return goodName;
}

</script>




	<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0"
		marginwidth="0" marginheight="0">

		<table width="778" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td bgcolor="C3C2C1"></td>
			</tr>
		</table>
		<table width="778" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td width="301" valign="top">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<table width="99%" border="0" cellspacing="0" cellpadding="0"
									align="right">
									<tr>
										<td height="5"></td>
									</tr>
									<tr>
										<td>
											<font color="#FF0000">Web���ְ��¿ͻ���</font>
										</td>
									</tr>
									<tr>
										<td height="30"></td>
									</tr>
									<tr>
										<td>
											&nbsp;
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>

				<form name="checkedForm" method="post"
					action="/<%=webRootDir%>/user/goDialCall.jsp"
					onSubmit="return formCheck()">
				<td width="477" valign="top">
					<table width="302" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="70">
								<font color="#0000FF">��Ե����</font>
							</td>
						</tr>
						<tr>
							<th align="right" height="35">
								uc����:
							</th>
							<td width="55%" align="left">
								<input type="text" name="uc" value="">
							</td>
						</tr>
						<tr>
							<th width="55%" height="35" align="right">
								����:
							</th>
							<td align="left">
								<input type="password" name="pw" value="">
							</td>
						</tr>
						<tr>
							<th height="35" align="right">
								����:
							</th>
							<td align="left">
								<input type="text" name="callee" value="" size="16"
									maxlength="32">
							</td>
						</tr>
						<tr>
							<th height="35" align="right">
								����:
							</th>
							<td align="left">
								<input type="text" name="called" value="" size="16"
									maxlength="32">
							</td>
						</tr>
						<tr>
							<th height="35" align="right">
								������ʾ����:
							</th>
							<td align="left">
								<input type="text" name="cee" value="" size="16" maxlength="32">
							</td>
						</tr>
						<tr>
							<td rowspan="2" align="right">
								&nbsp;
							</td>
							<td align="left">
							</td>
						</tr>
						<tr>
							<td align="left">
								<input name="ȷ��" type="submit" value="ȷ��">
								<input name="����" type="reset" value="����">
							</td>
						</tr>
					</table>
					<table>
						<tr>
							<td height="32"></td>
						</tr>
						<tr>
							<td width="97"></td>
							<td width="114" align="right" valign="top">
								<a style="CURSOR: hand"
									onClick="javascript:void history.back();"><img
										src="../images/back.gif" width="67" height="23" border="0"
										align="middle">
								</a>
							</td>
							<td width="250">
								&nbsp;
							</td>
						</tr>
					</table>


					</form>
		</table>
	</body>
</html>

