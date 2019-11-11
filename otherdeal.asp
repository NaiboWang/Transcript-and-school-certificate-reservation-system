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
Recordset1_cmd.CommandText = "SELECT * FROM 其他预约 WHERE ID =" & request.form("IDS") 
Recordset1_cmd.Prepared = true

Set Recordset1 = Recordset1_cmd.Execute
Recordset1_numRows = 0
%>
<!DOCTYPE HTML>
<html>
<head>
<title>三思·其他项目处理</title>
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
					<div class="atshowname" style="text-align:center;color:#009;font-size:23px;font-weight:bold;line-height:1.5em; font-family:'微软雅黑';margin-bottom:10px;height:auto!important">在校证明项目信息</div>
				<div align="center" style="font-family:'微软雅黑'; color:#000">
                 <form name="form1" method="post" action="otherdealup.asp" onSubmit="return check()">
                 <input type="hidden" name="IDS" id="IDS" value="<%=Recordset1.Fields.Item("ID").Value%>">
                 
                 <table id="table2"  style="position:relative" align="center"  border="0">
    <tr>
      <td align="right" style="height:40px;">学号：</td>
      <td><%=(Recordset1.Fields.Item("学号").Value)%></td>
       <td align="right" style="height:40px">姓名：</td>
      <td><%=(Recordset1.Fields.Item("姓名").Value)%></td>
      </tr>
    <tr>
    
      
       <tr id="tid" style="height:40px; ">
      <td  align="right">项目类型：</td>
      <td  colspan="3" bgcolor="#FFFFFF" id="nameChange" ><%=(Recordset1.Fields.Item("预约类型").Value)%></td>
   
      </tr>
      
    
      
     
      
     <tr>
       <td  align="right" style="height:40px; color:blue">预约数量：</td>
       <td colspan="3" style="color:blue"><%=(Recordset1.Fields.Item("数量").Value)%></td>
      </tr>
      <tr>
       <td  align="right" style="height:40px; min-width:130px">信息（备注）：</td>
       <td colspan="3"><%=(Recordset1.Fields.Item("备注").Value)%>
         </td>
      </tr>
   <tr>
   <td  align="right" style="height:40px; ">通过回复：</td>
  <td  ><input name="pass" type="text" id="pass"  placeholder="在此输入此项目通过的原因" value="通过"  ></td>
  
                    <td  align="right" style="height:40px; ">拒绝回复：</td>  
				      <td ><input name="nopass" type="text" id="nopass"  placeholder="在此输入此项目未通过的原因" value="内容不符合预约要求"  ></td>
               </tr>       
  
  
  <tr>
   <td  colspan="2" align="center" style="height:40px; "><input type="submit" name="get" id="get" value="通过" style="font-size: 16px;
  font-weight: 300 !important;
  position:relative;
  color: #fff;
  cursor: pointer;
  outline: none;
  padding: 10px 15px;
  width: 60%;
  border: none;
  background: #00BBFF ;
  border-radius: 2px;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  -o-border-radius: 2px;
  margin-top:10px;
  text-transform: uppercase; margin-left:10%" onmouseover="this.style.background='#9900FF'" onmouseout="this.style.background='#00BBFF '" /></td>
  <td   colspan="2" align="center" ><input type="submit" name="get" id="get" value="拒绝" style="font-size: 16px;
  font-weight: 300 !important;
  position:relative;
  color: #fff;
  cursor: pointer;
  outline: none;
  padding: 10px 15px;
  width: 60%;
  border: none;
  background: #3b5999;
  border-radius: 2px;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  -o-border-radius: 2px;
  margin-top:10px;
  text-transform: uppercase; margin-left:10%" onmouseover="this.style.background='#9900FF'" onmouseout="this.style.background='#3b5999 '" /></td>
  
               
  
               </tr>  
               
  </table>
  
                </form>
                <p style="height:20px" ></p>
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
</div>
	
<script>
function check(){
 if(confirm("您确认要执行操作吗？"))
 return true;
 else
 return false;
}
</script>
 <hr style="height:1px;border:none;border-top:1px solid #555555;" />
<div  align="center"class="copy_layout login" style="margin-bottom:2%"> <p>Copyright 2016 <a href="http://www.three-thinking.com" target="_blank" title="三思" style="color:#000000">三思</a> 版权所有||<a href="about.asp" target="_blank" title="三思" style="color:#000000">关于三思</a>||@<a href="http://www.xidian.edu.cn/" style="color:#000000" target="_blank">西安电子科技大学 </a>threethinking版权所有|陕ICP备16002727号|<a href="http://www.miitbeian.gov.cn/" style="color:#000000" target="_blank" title="三思">工信部主页</a> </p>
</div>
<hr style="height:1px;border:none;border-top:1px solid #555555;" />
   
</body>
</html>
<%
Recordset1.Close()
Set Recordset1 = Nothing
%>
