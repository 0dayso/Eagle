<%@page language = "java" contentType="text/html; charset=GBK" %>

<html>
<style type="text/css">
table {  font-family: "����"; font-size: 18px; line-height: 20px}
a:hover {  color: #FF6600; text-decoration: underline}
a:link {  color: #000000; text-decoration: none}
a:active {  text-decoration: none}
a {  text-decoration: none; color: #000000}
a {text-decoration:none}
a:hover {color: red;text-decoration:none}
</style>
<style type="text/css">
.a1{
position:relative;
font-family:Verdana;
font-size:20px;
color:#ff0000;
}
</style>

<title>��ֵ</title>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<script language="javaScript">
function formCheck()
{

  return true;
}

/*
    Description:judge integer such as "01";
    �ж��Ƿ�Ϊ��������������Ϊ�ա�
*/
function isPosInteger(inputVal)
{
    if(inputVal == null || inputVal == "")
    {
        return false;
    }
    inputStr=inputVal.toString();
    for (var i = 0;i < inputStr.length;i++ )
    {
        var oneChar = inputStr.charAt(i);
        if (oneChar < "0" || oneChar > "9" )
        {
            return false;
        }
    }
    return true;
}

function submitButton(){
	if(!isPosInteger(document.checkedForm.nChargeAmount.value)){
		alert("�û���ֵ������Ϊ����������");
	    document.checkedForm.nChargeAmount.focus();
		return false;
	}
    return true;
}

</script>




<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="778" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td bgcolor="C3C2C1"></td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
	<td width="476" valign="top">
	      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>
            <table width="99%" border="0" cellspacing="0" cellpadding="0" align="right">
             <tr><td height="20"></td></tr>
			 <tr><td><font color="blue">����"��ֵ"�ӿ��ܷ���ȷ����0</font></td></tr>
			 <tr><td height="15"></td></tr>
             <tr><td><font color="red">����ԭ�Σ�</font></td></tr>
             <tr><td><font color="red">String UserCharge(String strUserID, int nSPNumber, String strSPPassword int nChargeAmount, String strChargeType, String strTransaction�� String ChargeDataTime, String strStartDate)</font></td></tr>
			 <tr><td><font color="red">1������strUserIDΪȫ����ID��</font></td></tr>
             <tr><td><font color="red">2������nSPNumberΪ�û����ڵ�(�Ż���ֻ���Ż����Գ�ֵ)</font></td></tr>
        	 <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0�����Σ�  </font></td></tr>
        	 <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1�����ģ� </font></td></tr>
        	 <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2��21CN��</font></td></tr>
	         <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;254���Ż���966066����</font></td></tr>
        	 <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;255��IM���ͻ��ˣ���</font></td></tr>
             <tr><td><font color="red">3������strSPPasswordΪnSPNumber��Ӧ�����룻</font></td></tr>
             <tr><td><font color="red">4������nChargeAmountΪԤ�����û���ֵ�Ľ�����ʱ����λ���������·�����</font></td></tr>
             <tr><td><font color="red">5������strChargeTypeΪ��ֵ���ͣ�0��ʾ��Ǯ��1��ʾ��Ǯ��2���为ʱ����3������ʱ����                   4���为�·ݣ�5�������·�</font></td></tr>
			 <tr><td><font color="red">6������strTransactionΪ�����ţ�Ψһ��ʶһ�γ�ֵ�������Ժ�Ķ��ʣ�</font></td></tr>
			 <tr><td><font color="red">7������ChargeDataTimeΪ��ֵ���ڣ�������ʱ���� ���ṩ����ʱ���á�����</font></td></tr>
             <tr><td><font color="red">8������strStartDate: Ԥ���Ѱ����û�������ʼʱ�� �������գ�8λ������YYYYMMDD���������Ԥ���Ѱ����û���ֵ���ò�����null������"" (���ַ���)��</font></td></tr>
             <tr><td><font color="red">9����ȫ�û���WebService��ȫ��֤�û���</font></td></tr>
             <tr><td><font color="red">10����ȫ���룺WebService��ȫ��֤���롣</font></td></tr>
        	 <tr><td><font color="red">11�����ִ�гɹ��򷵻�0�����򷵻ز��ɹ�ԭ��</font></td></tr>
             <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-1 ϵͳ����</font></td></tr>
			 <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-00004 �﷨�����������Ƿ���</font></td></tr>
			 <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-10003:	ȫ���ĺ��벻���ڣ�</font></td></tr>
			 <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-10004: ȫ���ĺ���δ���أ�</font></td></tr>
			 <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-10005:	ȫ���ĺ�������ʹ�ã�</font></td></tr>
			 <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-10022: SP�������Ϻ�������</font></td></tr>
			 <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-10023: ��ֵʱ��������Ϸ� ��</font></td></tr>
			 <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-21300: ��ֵ����Ϊ0;</font></td></tr>
			 <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-20306: ���㣻</font></td></tr>
			 <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-21301���û���ֵ���ʹ����û��ĸ������Ͳ������������ֵ����</font></td></tr>
			 <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-21306: ��ֵ������</font></td></tr>
            <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-22801: �������ظ���</font></td></tr>
            <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-21500: SP�����Ȩ��ͨ����</font></td></tr>
            <tr><td><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-22103:Ԥ���Ѱ����û�������Ч���ڣ��������µĳ�ֵ��ʼ���ڡ�</font></td></tr>
            <tr><td><font color="red">��������˵����</font></td></tr>
            <tr><td><font color="red">����ǳ���ֵ����ΪWebService�����û���ֵ�����븶�������Ƿ�ƥ�䣬�����ƥ��ͱ�������ǳ为ֵ��������û���ֵ�����븶�������Ƿ�һ�¡�
                ���󸶷��û�����ͨ���ýӿڿ۳���ǰԤ���������Ľ���</font></td></tr>
            <tr><td><font color="red">Ԥ���Ѱ����û���ֵ���£�</font></td></tr>
            <tr><td><font color="red">1��������ݿ��г�ֵ��ʼʱ��Ϊ�գ������ǵ�һ�γ�ֵ����д���ֵ�·�����Ԥ���Ѱ�����ʼʱ��2������</font></td></tr>
            <tr><td><font color="red">2��������ݿ����г�ֵ��ʼʱ�䣬����û����������Ԥ���Ѱ�����ʼʱ�� ��Ϊ�գ����ж�Ԥ���Ѱ����û��Ƿ��Ѿ����ڣ�
                ���û�г��ڣ����޸�Ԥ���Ѱ�����ʼʱ���ֶΣ�ֻ���·���������</font></td></tr>
            <tr><td><font color="red">����Ѿ����ڣ��Ͱ� ��ֵ��ʼʱ�� �޸�Ϊ �´���� ��ֵ��ʼʱ�䣬�·����޸�Ϊ�µ��·���</font></td></tr>
            <tr><td><font color="red">3��������ݿ����г�ֵ��ʼʱ�䣬����û������������ֵ��ʼʱ�� Ϊ�գ����ж�Ԥ���Ѱ����û��Ƿ��Ѿ����ڣ����û�г��ڣ�ֻ���·��������ӡ�
			����Ѿ����ڣ����߳�ֵ��ʼʱ��Ϊ�գ��ͱ�����Ԥ���Ѱ����û�������Ч���ڣ��������µĳ�ֵ��ʼ���ڡ���</font></td></tr>
</table>
          </td>
        </tr>
      </table>
    </td>
<form name="checkedForm" method="post" action="/callme2/client/goUserCharge.jsp" onSubmit="return submitButton()">
	<td width="302" valign="top">
 	 <table width="302" border="0" cellspacing="0" cellpadding="0" >
  <tr><td height="70"></td></tr>
  <tr>
    <th  height="35" align="right">
      ȫ����ID:
    </th>
    <td width="55%" align="left">
      <input  type="text" name="strUserID" size="16">
    </td>
  </tr>

  <tr>
    <th  width="55%" height="35" align="right">
      �û����ڵ�:
    </th>
    <td align="left">
      <select name="nSPNumber">
	     <option selected value="0">����</option>
		 <option value="1">����</option>
		 <option value="2">21CN</option>
		 <option value="254">�Ż���966066��</option>
		 <option value="255">IM���ͻ��ˣ�</option>
	  </select>
    </td>
  </tr>

 <tr>
    <th  width="55%" nowrap="nowrap" height="35" align="right">
      �û���ǰ���ڵ�����:
    </th>
    <td align="left">
      <input  type="password" name="strSPPassword " size="16">
	</td>
  </tr>

  <tr>
    <th  width="55%" height="35" align="right">
      �û���ֵ���:
    </th>
    <td align="left">
      <input  type="text" name="nChargeAmount" size="16">
    </td>
  </tr>

  <tr>
    <th  width="55%" height="35" align="right">
      ��ֵ����:
    </th>
    <td align="left">
	  <select name="strChargeType">
	    <option selected value="0">��Ǯ</option>
		<option value="1">��Ǯ</option>
        <option value="2">�为ʱ��</option>
		<option value="3">����ʱ��</option>
		<option value="4">�为�·�</option>
        <option value="5">�����·�</option>
      </select>
    </td>
  </tr>

  <tr>
    <th  width="55%" height="35" align="right">
      ������:
    </th>
    <td align="left">
      <input  type="text" name="strTransaction" value="">
    </td>
  </tr>

  <tr>
    <th  width="55%" height="35" align="right">
     ��ֵ����:
    </th>
    <td align="left">
      <input  type="text" name="ChargeDataTime" value="20041216115001">
    </td>
  </tr>

   <tr>
    <th  width="55%" height="35" align="right">
     ������ʼʱ��:
    </th>
    <td align="left">
      <input  type="text" name="strStartDate">
    </td>
  </tr>


  <tr>
    <th  height="35" align="right">
      ��ȫ�û�:
    </th>
    <td align="left">
      <input  type="text" name="wsName" value="<%=session.getAttribute("UserName")%>" size="16" maxlength="18">
    </td>
  </tr>
  <tr>
    <th  height="35" align="right">
      ��ȫ����:
    </th>
    <td align="left">
      <input  type="password" name="wsPassword" value="<%=session.getAttribute("Password")%>" size="16" maxlength="18">
    </td>
  </tr>

  <tr>
    <td rowspan="2" align="right">&nbsp;
    </td>
    <td align="left">

    </td>
  </tr>
  <tr>
    <td align="left"><INPUT name="ȷ��" TYPE="submit" value="ȷ��">
      <INPUT name="����" TYPE="reset" value="����"></td>
  </tr>

</table>
<table>
  <tr><td height="20"></td></tr>
  <tr>
    <td width="543"></td><td width="12" align="right" valign="top"><a
        style="CURSOR: hand"
        onClick="javascript:void history.back();"><img src="/callme2/images/back.gif" width="67" height="23" border="0" align="middle"></a></td>
    <td width="67">&nbsp;</td>
  </tr>
</table>
</form>
</table>
</body>
</html>

