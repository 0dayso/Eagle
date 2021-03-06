﻿<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/WEB-INF/struts-html-el.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>

<html>
	<head>
		<title>main</title>
		<link href="../_css/reset.css" rel="stylesheet" type="text/css" />
		<link href="../_css/global.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div id="mainContainer">
			<div id="container">
				<table width="100%" cellpadding="0" cellspacing="0" border="0">
					<tr>
						<td width="10" height="10" class="tblt"></td>
						<td height="10" class="tbtt"></td>
						<td width="10" height="10" class="tbrt"></td>
					</tr>
					<tr>
						<td width="10" class="tbll"></td>
						<td valign="top" class="body">
							<div class="crumb">
								<c:import url="../_jsp/mainTitle.jsp?title1=主题管理&title2=查看主题"
									charEncoding="UTF-8" />
							</div>
							<hr>
							<table width="100%" cellpadding="0" cellspacing="0" border="0"
								class="dataList">
								<!--
								<tr>
									<td class="lef">
										<div>
											ID
									</td>
									<td style="text-align: left">
										<c:out value="${topic.id}" />
									</td>
								</tr>
								 -->
								<tr>
									<td class="lef">
										论坛---版块
									</td>
									<td style="text-align: left">
										<c:out value="${topic.section.forum.name}" />
										<c:out value="${topic.section.name}" />
									</td>
								</tr>
								<tr>
									<td class="lef">
										<div>
											主题名称
										</div>
									</td>
									<td style="text-align: left">
										<c:out value="${topic.name}" />
									</td>
								</tr>
								<tr>
									<td class="lef">
										<div>
											主题名称
										</div>
									</td>
									<td style="text-align: left">
										<c:out value="${topic.value}" />
									</td>
								</tr>
								<tr>
									<td class="lef">
										状态
									</td>
									<td style="text-align: left">
										<c:out value="${topic.statusInfo}" />
									</td>
								</tr>
							</table>
							<table width="100%" style="margin-top: 5px;">
								<tr>
									<td>
										<input name="label" type="button" class="button1" value="返 回"
											onclick="window.history.back();">
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>
