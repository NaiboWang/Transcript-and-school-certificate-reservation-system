<%@LANGUAGE="VBSCRIPT"  CODEPAGE="65001" %>
<!--#include file="Connections/data.asp" -->
<%

Set Command1 = Server.CreateObject ("ADODB.Command")
Command1.ActiveConnection = MM_data_STRING

Command1.CommandType = 1
Command1.CommandTimeout = 0
Command1.Prepared = true


%>



<!DOCTYPE html>
<html>
<head>
<title>三思-事务预约</title>
 

<style>  
.GoStyle
    {
         color:#00F;          
         background-color: #FFFFFF;
         border: 0px none;
         cursor:pointer;
         font-size: 16px;
		 font-family:'微软雅黑'; 
		 text-decoration:underline;
    }
</style>  

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Titillium+Web:400,200,200italic,300,300italic,400italic,600,600italic,700,700italic,900' rel='stylesheet' type='text/css'>
<!-- js -->
<script src="js/jquery.min.js"></script>
<!-- //js -->
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Bizz Wow Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->

<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="css/menu.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/mootools.js"></script>
<script type="text/javascript" src="js/fusion.js"></script>
 


</head>
<%
if request.Form("ptype") = "1" then
Command1.CommandText = "INSERT INTO 成绩预约 (学号, 姓名, 数量, 备注, 时间)  VALUES ('"&request.Form("sno")&"','"&request.Form("sname")&"','"&request.Form("snum")&"','"&request.Form("stext")&"','"&year(Now) & "-" & Month(Now) & "-" & day(Now) & " " & Hour(Now) & ":" & Minute(Now) & ":" & Second(Now) &"') "
elseif request.Form("ptype") = "2" then
Command1.CommandText = "INSERT INTO 在校证明预约 (学号, 姓名, 性别,身份证号,入学年份,电话号码,班级,专业,数量, 备注, 时间)  VALUES ('"&request.Form("sno")&"','"&request.Form("sname")&"','"&request.Form("ssex")&"','"&request.Form("sid")&"','"& request.Form("sdate")&"','"& request.Form("stel")&"','"& request.Form("sclass")&"','"& request.Form("smajor") &"','"&request.Form("snum")&"','"&request.Form("stext")&"','"&year(Now) & "-" & Month(Now) & "-" & day(Now) & " " & Hour(Now) & ":" & Minute(Now) & ":" & Second(Now) &"') "
else
Command1.CommandText = "INSERT INTO 其他预约 (学号, 姓名, 数量, 备注, 时间,预约类型)  VALUES ('"&request.Form("sno")&"','"&request.Form("sname")&"','"&request.Form("snum")&"','"&request.Form("stext")&"','"&year(Now) & "-" & Month(Now) & "-" & day(Now) & " " & Hour(Now) & ":" & Minute(Now) & ":" & Second(Now) &"','"& request.Form("pname") &"') "
end if
Command1.Execute()
%>
	
<body>
	<div class="psd">
<div class="container" style="min-height:200px">
<!-- header -->
		<div class="header" style="font-size:150%;font-weight:600;">
        <div style="background-image:url(images/t10.jpg);background-repeat: no-repeat; background-positon: 120%, 120%">
            <img src="images/logo.png" style=" margin-right:50%;position:relative; left:2%; background-position:left;background-size:cover; width:20%;height:20%"  alt=""/>
            <img src="images/scorelogo.png"  style="position:relative; left:0%;background-position:right;background-size:cover; width:25%;height:25%" alt=""/>
            </div>	  
			<div class="clearfix"> </div>
           
		</div>
        
 
<div style="clear:both"></div>	





<!-- //header -->
<div class="port"  style="font:'楷体'; min-height:100px">
  <h3>事务预约</h3>
		<p class="para" style="font-size:15px"><img src="9885883_231954847000_1.jpg" alt="" width="98" height="84" align="absmiddle" />预约成功，你可以点击下方按钮查询预约结果或者继续预约其他项目。</p>
  <p class="para" style="font-size:15px">
    <a href="query.asp"> <input type="button" name="12" id="12" value="预约查询" style="font-size: 16px;
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
  text-transform: uppercase;margin-left:50px" onmouseover="this.style.background='#9900FF'" onmouseout="this.style.background='#00BBFF '" /></a>
    <span class="para" style="font-size:15px">
    <a href="apply.asp"> <input type="button" name="122" id="122" value="继续预约" style="font-size: 16px;
  font-weight: 300 !important;
  position:relative;
  color: #fff;
  cursor: pointer;
  outline: none;
  padding: 10px 15px;
  width: 20%;
  border: none;
  background: #3b5999 ;
  border-radius: 2px;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  -o-border-radius: 2px;
  text-transform: uppercase;margin-left:50px" onmouseover="this.style.background='#9900FF'" onmouseout="this.style.background='#3b5999 '" /></a>
  </span>  </p>
		<p class="para" style="font-size:15px">&nbsp;</p>
    
  <p>&nbsp;</p>

        <div  align="center"  class="portfolio-grids" style="font-size:18px; font-family:'微软雅黑'; min-height:50px">
		
         
		 
    
<p>
      
       
          
  </div>
       <div class="footer">
		<div class="footer-left">
		  <ul>
				<li><a href="about.asp" target="_blank"><img src="images/logo1.png"  width="150" height="45" alt=" " /></a><span> |</span></li>
				<li> <p>Copyright 2016 <a href="http://www.three-thinking.com" target="_blank" title="三思" style="color:#FFFFFF">三思</a> 版权所有||<a href="about.asp" target="_blank" title="三思" style="color:#FFFFFF">关于三思</a>||@<a href="http://www.xidian.edu.cn/" style="color:#FFFFFF" target="_blank">西安电子科技大学 </a>threethinking版权所有|陕ICP备16002727号|<a href="http://www.miitbeian.gov.cn/" style="color:#FFFFFF" target="_blank" title="三思">工信部主页</a> </p></li>
             
?>

			</ul>
		</div>
		<div class="clearfix"> </div>
	</div>
</div>
<!-- here stars scrolling icon -->
	<script type="text/javascript">
								
						
	</script>

<!-- //here ends scrolling icon -->
</body>
</html>
