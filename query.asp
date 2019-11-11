<!DOCTYPE html>
<html>
<head>
<title>三思-预约查询</title>
 

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
  <h3>预约查询</h3>
		<p class="para" style="font-size:15px">查询说明：请输入学号和姓名，两者同时匹配时可查询到相关信息。</p>
  <p class="para" style="font-size:15px">&nbsp;</p>
		<p class="para" style="font-size:15px">&nbsp;</p>
    
  <p><img src="hr-geo-sukarno-1s960x639.png"  style="  position:relative; left:3%;background-size:cover; background-position:center; width:90%;height:90%" alt=""/></p>
  <div  align="center" class="para" style="font-size:19px; font-family:'微软雅黑'; padding-top:20px">
 
 


 
    <form action="queryinfor.asp" method="post" name="form1" id="form1" onSubmit="return check()">
  <table id="table2"  style=" left:3%; position:relative" align="center" width="400" border="0">
    
      <tr>
      <td align="right">学号：</td>
      <td bgcolor="#FFFFFF" id="nameChange" ><input name="sno" type="text" id="sno"  placeholder="8或11位数字" value=""  ></td>
      </tr>
    <tr>
      <td align="right" style="height:40px">姓名：</td>
      <td><input   name="sname" type="text" id="sname"  placeholder="不得为空" value=""  ></td>
      </tr>
  
  </table>
      </p>
      <p style="min-height:70px" >
        <input type="submit" name="12" id="12" value="查询" style="font-size: 16px;
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
  text-transform: uppercase" onmouseover="this.style.background='#9900FF'" onmouseout="this.style.background='#00BBFF '" />
          </p>
          </form>
          
 
 
 </div>
 
 <script>
function check() //注册提交检测
{
    ss = document.getElementById('sno').value;
    re = /^[1-1]\d{10}$/
	re2 = /^[0-0]\d{7}$/
    if (re.test(ss)) {} else {
		if (re2.test(ss)) {} else {
        alert("请输入正确的学号");
        return false;}
    }

    if (document.getElementById('sname').value == "") {
        alert("请输入姓名")
		 return false;
    }	
	return true;			
}

 </script>
        
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
