<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="Connections/data.asp" -->

<!DOCTYPE HTML>
<html>
<head>
<title>三思·预约系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style2.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script> 
</head>
<body id="login">
  <div class="login-logo">
    <a href="about.asp" target="_blank"><img src="logo.png" style="background-size:cover; min-height:50px; min-width:200px; width:25%;height:25%" alt=""/></a>
    <h1 style="padding:20px"></h1>
    <p></p>
    <img src="title.png"  style="background-repeat:no-repeat;background-size:cover; min-height:12.5px; min-width:180px;width:30%; height:30%" alt=""/>
  </div>
<div class="app-cam" style=" margin-top:1%">
    <form action = "<%=MM_LoginAction%>" id="form2" name="form2" method="POST" >
     
    <div class="button"  style="margin-top:10px">  

     <a href="apply.asp"> <input type="button"  value="事务预约" onmouseover="this.style.background='#9900FF'" onmouseout="this.style.background='#06F'" ></a>
	  </div>
        <div class="button"  style="margin-top:10px">
         <a href="query.asp">
        <input type="button" style=" background:#30C" onmouseover="this.style.background='#9900FF'" onmouseout="this.style.background='#30C'"  value="预约查询"></a></div>
      <div class="button"  style="margin-top:10px"> <a href="login.asp" ><input style=" background:#3b5999" type="button" value="管理员登录" onmouseover="this.style.background='#9900FF'" onmouseout="this.style.background='#3b5999'" ></a>  </div>
      <ul class="new" style="font-family:'微软雅黑'; font-size:large">
		  
		 <p>注：<a href="help.pdf" target="_blank"><strong>点击这里</strong></a>查看系统使用手册。</p>
		 <p>注：手机端显示可能有点排版问题，但不影响系统的正常使用。</p>
		 <p>注：该网站现处于测试阶段，有问题请及时与网站管理员（老师）反馈。</p>
		</ul>
	</form>
  </div>
   <div class="copy_layout login" style="padding:-50%; margin-top:5%"> <p>Copyright 2016 <a href="http://www.three-thinking.com" target="_blank" title="三思" style="color:#000000">三思</a> 版权所有||<a href="about.asp" target="_blank" title="三思" style="color:#000000">关于三思</a>||@<a href="http://www.xidian.edu.cn/" style="color:#000000" target="_blank">西安电子科技大学 </a>threethinking版权所有|陕ICP备16002727号|<a href="http://www.miitbeian.gov.cn/" style="color:#000000" target="_blank" title="三思">工信部主页</a> </p></div>
   
</body>
</html>