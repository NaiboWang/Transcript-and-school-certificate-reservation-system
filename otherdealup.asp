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

Set Command1 = Server.CreateObject ("ADODB.Command")
Command1.ActiveConnection = MM_data_STRING
Command1.CommandType = 1
Command1.CommandTimeout = 0
Command1.Prepared = true

%>
<!DOCTYPE HTML>
<html>
<head>
<title>三思·项目处理</title>
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
				 
                 <div id="wz" ><b>尊敬的管理员，欢迎您！</b><a href="<%= MM_Logout %>">注销</a>		<%
if Session("MM_Username") = false or  Session("MM_Username") = "" then
%>


<script>

alert("Please log in before use this function.");
</script>

<%
Response.end()
end if
%></div>
                

			</div>
 
 <div id="list_wrap"><!--新闻内容-->
	<div id="list_main">
		<div class="maindiv">
<div class="atshowa">
					<div class="atshowname" style="text-align:center;color:#009;font-size:23px;font-weight:bold;line-height:1.5em; font-family:'微软雅黑';margin-bottom:10px;height:auto!important">处理成功</div>
				<div align="center" style="font-family:'微软雅黑'; color:#000">
				  <p><%
					 if request.Form("get") = "通过" then
					Command1.CommandText  = "update 其他预约 set 状态 = '已处理',回复 = '"& request.Form("pass") &"' where ID = "& request.Form("IDS") 
					elseif request.Form("get") = "拒绝" then
					Command1.CommandText  = "update 其他预约 set 状态 = '已拒绝',回复 = '"& request.Form("nopass") &"' where ID = "& request.Form("IDS")
					end if
					Command1.Execute()
				  response.Write(request.Form("get"))
				  
				  %>成功，点击下方按钮返回。</p>
				  <p >
				    <a href="other.asp"><input type="button" name="get" id="get" value="返回" style="font-size: 16px;
  font-weight: 300 !important;
  position:relative;
  color: #fff;
  cursor: pointer;
  outline: none;
  padding: 10px 15px;
  width: 20%;
  border: none;
  background: #00BBFF ;
  border-radius: 2px;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  -o-border-radius: 2px;
  margin-top:10px;
  text-transform: uppercase;margin-left:0%" onmouseover="this.style.background='#9900FF'" onmouseout="this.style.background='#00BBFF '" /></a>
				  </p>
                
				</div>
               
                
				<div class="atshowb">
					<div class="atshowmessage" style="text-align:center;"></div>
				</div>
                <hr style="height:1px;border:none;border-top:1px solid #555555;" />
</div>
	

<div  align="center"class="copy_layout login" style="margin-bottom:2%"> <p>Copyright 2016 <a href="http://www.three-thinking.com" target="_blank" title="三思" style="color:#000000">三思</a> 版权所有||<a href="about.asp" target="_blank" title="三思" style="color:#000000">关于三思</a>||@<a href="http://www.xidian.edu.cn/" style="color:#000000" target="_blank">西安电子科技大学 </a>threethinking版权所有|陕ICP备16002727号|<a href="http://www.miitbeian.gov.cn/" style="color:#000000" target="_blank" title="三思">工信部主页</a> </p></div>
<hr style="height:1px;border:none;border-top:1px solid #555555;" />
   
</body>
</html>
