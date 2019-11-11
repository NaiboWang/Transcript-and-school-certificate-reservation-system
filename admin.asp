<%@LANGUAGE="VBSCRIPT"  CODEPAGE="65001" %>
<%
' *** Logout the current user.
MM_Logout = CStr(Request.ServerVariables("URL")) & "?MM_Logoutnow=1"
If (CStr(Request("MM_Logoutnow")) = "1") Then
  Session.Contents.Remove("MM_Username")
  Session.Contents.Remove("MM_UserAuthorization")
  MM_logoutRedirectPage = "index.asp"
  ' redirect with URL parameters (remove the "MM_Logoutnow" query param).
  if (MM_logoutRedirectPage = "") Then MM_logoutRedirectPage = CStr(Request.ServerVariables("URL"))
  If (InStr(1, UC_redirectPage, "?", vbTextCompare) = 0 And Request.QueryString <> "") Then
    MM_newQS = "?"
    For Each Item In Request.QueryString
      If (Item <> "MM_Logoutnow") Then
        If (Len(MM_newQS) > 1) Then MM_newQS = MM_newQS & "&"
        MM_newQS = MM_newQS & Item & "=" & Server.URLencode(Request.QueryString(Item))
      End If
    Next
    if (Len(MM_newQS) > 1) Then MM_logoutRedirectPage = MM_logoutRedirectPage & MM_newQS
  End If
  Response.Redirect(MM_logoutRedirectPage)
End If
%>
<!--#include file="Connections/data.asp" -->
<%
Dim Recordset1
Dim Recordset1_cmd
Dim Recordset1_numRows

Set Recordset1_cmd = Server.CreateObject ("ADODB.Command")
Recordset1_cmd.ActiveConnection = MM_data_STRING
Recordset1_cmd.CommandText = "SELECT count(*) as num FROM 成绩预约" 
Recordset1_cmd.Prepared = true

Set Recordset1 = Recordset1_cmd.Execute
Recordset1_numRows = 0
%>
<%
Dim Recordset2
Dim Recordset2_cmd
Dim Recordset2_numRows

Set Recordset2_cmd = Server.CreateObject ("ADODB.Command")
Recordset2_cmd.ActiveConnection = MM_data_STRING
Recordset2_cmd.CommandText = "SELECT count(*) as num FROM 在校证明预约" 
Recordset2_cmd.Prepared = true

Set Recordset2 = Recordset2_cmd.Execute
Recordset2_numRows = 0
%>
<%
Dim Recordset3
Dim Recordset3_cmd
Dim Recordset3_numRows

Set Recordset3_cmd = Server.CreateObject ("ADODB.Command")
Recordset3_cmd.ActiveConnection = MM_data_STRING
Recordset3_cmd.CommandText = "SELECT count(*) as num FROM 其他预约" 
Recordset3_cmd.Prepared = true

Set Recordset3 = Recordset3_cmd.Execute
Recordset3_numRows = 0
%>
<%
Dim Recordset4
Dim Recordset4_cmd
Dim Recordset4_numRows

Set Recordset4_cmd = Server.CreateObject ("ADODB.Command")
Recordset4_cmd.ActiveConnection = MM_data_STRING
Recordset4_cmd.CommandText = "SELECT count(*) as num FROM 成绩预约 WHERE 状态='未处理'" 
Recordset4_cmd.Prepared = true

Set Recordset4 = Recordset4_cmd.Execute
Recordset4_numRows = 0
%>
<%
Dim Recordset5
Dim Recordset5_cmd
Dim Recordset5_numRows

Set Recordset5_cmd = Server.CreateObject ("ADODB.Command")
Recordset5_cmd.ActiveConnection = MM_data_STRING
Recordset5_cmd.CommandText = "SELECT count(*) as num FROM 在校证明预约 WHERE 状态='未处理'" 
Recordset5_cmd.Prepared = true

Set Recordset5 = Recordset5_cmd.Execute
Recordset5_numRows = 0
%>
<%
Dim Recordset6
Dim Recordset6_cmd
Dim Recordset6_numRows

Set Recordset6_cmd = Server.CreateObject ("ADODB.Command")
Recordset6_cmd.ActiveConnection = MM_data_STRING
Recordset6_cmd.CommandText = "SELECT count(*) as num FROM 其他预约 WHERE 状态='未处理'" 
Recordset6_cmd.Prepared = true

Set Recordset6 = Recordset6_cmd.Execute
Recordset6_numRows = 0
%>
<%
Dim Recordset7
Dim Recordset7_cmd
Dim Recordset7_numRows

Set Recordset7_cmd = Server.CreateObject ("ADODB.Command")
Recordset7_cmd.ActiveConnection = MM_data_STRING
Recordset7_cmd.CommandText = "SELECT * FROM 成绩预约 WHERE 状态='未处理' order by 学号 asc,时间 desc,数量 asc" 
Recordset7_cmd.Prepared = true

Set Recordset7 = Recordset7_cmd.Execute
Recordset7_numRows = 0
%>

<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = -1
Repeat1__index = 0
Recordset7_numRows = Recordset7_numRows + Repeat1__numRows
%>

<!DOCTYPE HTML>
<html>
<head>
<title>三思·欢迎使用</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Wed Day Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style4.css" rel='stylesheet' type='text/css' />	
<link href="css/notice.css" rel='stylesheet' type='text/css' />	
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>


<style>
p {
 font-size:17px;
}
a{color: #0162f4;}
a:hover{text-decoration:underline;color:#60F;}

.atable.hovertable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
}
.atable.hovertable th {
	background-color:#c3dde0;
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}
.atable.hovertable tr {
	background-color:#d4e3e5;
}
.atable.hovertable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}


</style>
<!--webfonts-->
    

 <link href='http://fonts.useso.com/css?family=Lora:400,400italic|Niconne' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body style="color:#000">
<!--start-home-->
<!-- header --><!-- //header -->
<!-- banner -->
<div class="banner two">
		<div class="container" >
			<div class="banner-navigation" style="padding:1% 1% 1% 1%">

					
				    <a href="http://www.three-thinking.com" target="_blank"> 
					<img src="images\logo1.png" style="background-position:center;position:relative;background-size:cover; min-height:50px; min-width:200px; width:15%;height:15%" alt=""/></a>
	  <a href="http://www.xidian.edu.cn" target="_blank"><img class="xd" src="images/scorelogowhite.png" style="position:relative; left:60%; background-position:left;background-size:cover; width:20%;height:20%"  alt=""/></a>

					 
					<!--script-for-menu-->
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
<!--typography-->
<div class="typrography">
	 <div class="container">
     <p  align="center" class = "tzxx" style="display:none; font-size:30px ">科研项目信息</p>
		<img class="tzxx" src="images/textadmin.png" style="background-position:center;left:30%;position:relative;background-size:cover; min-height:50px; min-width:200px; width:40%;height:30%"  longdesc="news.asp">
	   <div class="clearfix"> </div>
	</div>
	<div class="container" style="width:1200px">
			 <div class="grid_3 grid_5" >
				 
                 <div id="wz" ><b>尊敬的管理员，欢迎您！</b><a href="<%= MM_Logout %>">注销</a>
				<%
if Session("MM_Username") = false or  Session("MM_Username") = "" then
%>


<script>

alert("Please log in before use this function.");
</script>

<%
Response.end()
end if
%>

</div>
                

			</div>
 
 <div id="list_wrap"><!--新闻内容-->
	<div id="list_main">
		<div class="maindiv">
				<div class="atshowa">
					<div class="atshowname" style="text-align:center;color:#009;font-size:23px;font-weight:bold;line-height:1.5em; font-family:'微软雅黑';margin-bottom:10px;height:auto!important">预约项目基本信息</div>
				<div align="center" style="font-family:'微软雅黑'; color:#000">
				  <p>截止到<%=year(Now) & "年" & Month(Now) & "月" & day(Now) & "日" & Hour(Now) & ":" & Minute(Now) & ":" & Second(Now) %>，系统中共预约了<%=CInt(Recordset1.Fields.Item("num").Value)+CInt(Recordset2.Fields.Item("num").Value)+CInt(Recordset3.Fields.Item("num").Value)%>个项目，其中成绩单项目<%=(Recordset1.Fields.Item("num").Value)%>个，在校证明项目<%=(Recordset2.Fields.Item("num").Value)%>个，其他项目<%=(Recordset3.Fields.Item("num").Value)%>个。</p>
                 
                  <p><a href="old.asp" target="_blank"><strong>点击这里</strong></a>查看曾经处理过的项目信息。				</p>
				</div>
               
                
				<div class="atshowb">
					<div class="atshowmessage" style="text-align:center;"></div>
				</div>
                <hr style="height:1px;border:none;border-top:1px solid #555555;" />
				<div id="change_content1">
					

					<div class="atshowd">
					  <div class="atshowcontent" style="padding-left:3%;padding-right:3%;font-size:14px;line-height:1.5em; width:97%; margin:0 auto  ">
				

			
              <h3 align="center" style=" font-family:'微软雅黑';font-weight:600; margin-bottom:10px">未处理项目信息</h3>
              <p align="center" style=" font-family:'微软雅黑';">请选择处理项目，点击链接进入处理页面。</p>
              <p align="center" style=" font-family:'微软雅黑';">————————————————————————————</p>
              <p align="center" style=" font-family:'微软雅黑';"><a href="score.asp" target="_blank"><strong>点击这里</strong></a>处理<strong>成绩单</strong>项目，共<%=Recordset4.Fields.Item("num").Value%>项尚未处理。</p>
              <p  align="center" style=" font-family:'微软雅黑';">————————————————————————————</p>
              <p align="center" style=" font-family:'微软雅黑';"><a href="prove.asp" target="_blank"><strong>点击这里</strong></a>处理<strong>在校证明</strong>项目，共<%=Recordset5.Fields.Item("num").Value%>项尚未处理。</p>
             <p  align="center" style=" font-family:'微软雅黑';">————————————————————————————</p>
              <p align="center" style=" font-family:'微软雅黑';"><a href="other.asp" target="_blank"><strong>点击这里</strong></a>处理<strong>其他预约</strong>项目，共<%=Recordset6.Fields.Item("num").Value%>项尚未处理。</p>
              <p  align="center" style=" font-family:'微软雅黑';">————————————————————————————					  </p>
					  </div>
					  <hr style="height:1px;border:none;border-top:1px solid #555555;" />
						

		  </div>

		</div>
	
 
	</div>
</div>
	</div>
</div>
<script>
function check(){
 if(confirm("您确认要执行操作吗？"))
 return true;
 else
 return false;
}
</script>
<div  align="center"class="copy_layout login" style="padding:-50%; margin-bottom:2%"> <p>Copyright 2016 <a href="http://www.three-thinking.com" target="_blank" title="三思" style="color:#000000">三思</a> 版权所有||<a href="about.asp" target="_blank" title="三思" style="color:#000000">关于三思</a>||@<a href="http://www.xidian.edu.cn/" style="color:#000000" target="_blank">西安电子科技大学 </a>threethinking版权所有|陕ICP备16002727号|<a href="http://www.miitbeian.gov.cn/" style="color:#000000" target="_blank" title="三思">工信部主页</a> </p></div>
<hr style="height:1px;border:none;border-top:1px solid #555555;" />
   
</body>
</html>
<%
Recordset1.Close()
Set Recordset1 = Nothing
%>
<%
Recordset2.Close()
Set Recordset2 = Nothing
%>
<%
Recordset3.Close()
Set Recordset3 = Nothing
%>
<%
Recordset4.Close()
Set Recordset4 = Nothing
%>
<%
Recordset5.Close()
Set Recordset5 = Nothing
%>
<%
Recordset6.Close()
Set Recordset6 = Nothing
%>
<%
Recordset7.Close()
Set Recordset7 = Nothing
%>
