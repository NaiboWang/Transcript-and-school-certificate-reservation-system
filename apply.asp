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
		<p class="para" style="font-size:15px">预约说明：请在下方选择框选择自己要预约的项目，并输入自己的学号、姓名以及预约数量以便查询。</p>
		<p class="para" style="font-size:15px">同时，若需要预约除成绩单和在校证明之外的其他内容，请在下方选择“其他项目”。</p>
  <p class="para" style="font-size:15px">&nbsp;</p>
		<p class="para" style="font-size:15px">&nbsp;</p>
    
  <p><img src="hr-geo-sukarno-1s960x639.png"  style="  position:relative; left:3%;background-size:cover; background-position:center; width:90%;height:90%" alt=""/></p>
  <div  align="center" class="para" style="font-size:19px; font-family:'微软雅黑'; padding-top:20px">
 
 


 
    <form action="apply-success.asp" method="post" name="form1" id="form1" onSubmit="return check()">
  <table id="table2"  style=" left:3%; position:relative" align="center" width="400" border="0">
    <tr style="height:40px">
      <td align="right">预约项目：</td>
      <td>
        <select style="width:74%" name="ptype" id="ptype" onChange="F_Select(this);">
          <option value="1" selected="selected">成绩单</option>
          <option value="2">在校证明</option>
          <option value="3">其他项目</option>
        </select></td>
      </tr>
      <tr id="np" style="height:30px; display:none">
      <td align="right">项目名称：</td>
      <td bgcolor="#FFFFFF" id="nameChange" ><input name="pname" type="text" id="pname"  placeholder="不得为空" value=""  ></td>
      </tr>
    <tr>
      <td align="right" style="height:40px">学号：</td>
      <td><input   name="sno" type="text" id="sno"  placeholder="8或11位数字" value=""  ></td>
      </tr>
    <tr>
     <tr>
      <td align="right" style="height:40px">姓名：</td>
      <td><input  name="sname" type="text" id="sname"  placeholder="不得为空" value=""  ></td>
      
      </tr>
      
       <tr id="tid" style="height:40px; display:none">
      <td  align="right">身份证号：</td>
      <td bgcolor="#FFFFFF" id="nameChange" ><input name="sid" type="text" id="sid"  placeholder="18位数字或字母" value=""  ></td>
      </tr>
      
       <tr id="tsex" style="height:40px; display:none">
      <td align="right">性别：</td>
      <td bgcolor="#FFFFFF" id="nameChange" ><input name="ssex" type="radio" value="男" checked>
      男 <input name="ssex" type="radio" value="女">
      女 </td>
      </tr>
      
       <tr id="tdate" style="height:40px; display:none">
      <td align="right">入学年份：</td>
      <td bgcolor="#FFFFFF" id="nameChange" ><input name="sdate" type="text" id="sdate"  placeholder="2010之后，四位数字" value=""  ></td>
      </tr>
       <tr id="ttel" style="height:40px; display:none">
      <td align="right">电话/手机号码：</td>
      <td bgcolor="#FFFFFF" id="nameChange" ><input name="stel" type="text" id="stel"  placeholder="11位数字，电话则加区号" value=""  ></td>
      </tr>
      
      <tr id="tmajor" style="height:40px; display:none">
      <td align="right">专业：</td>
      <td bgcolor="#FFFFFF" id="nameChange" ><select name="smajor" size="1">
        <option value="电子科学与技术" selected="selected">电子科学与技术</option>
        <option value="电子信息科学与技术">电子信息科学与技术</option>
        <option value="光信息科学与工程">光信息科学与工程</option>
        <option value="应用物理学">应用物理学</option>
        <option value="电波传播与天线">电波传播与天线</option>
      </select></td>
      </tr>
      
       <tr id="tclass" style="height:40px; display:none">
      <td align="right">班级：</td>
      <td bgcolor="#FFFFFF" id="nameChange" ><input name="sclass" type="text" id="sclass"  placeholder="7位数字" value=""  ></td>
      </tr>
      
     <tr>
       <td  align="right" style="height:40px">预约数量：</td>
       <td><input name="snum" type="text" id="snum" placeholder="个位数" value="1" ></td>
      </tr>
      <tr>
       <td  align="right" style="height:40px">理由（备注）：</td>
       <td>
         <textarea style="font-size:14px;min-height:80px; min-width:200px"  placeholder="在此处说明预约此项目的原因以及你需要告诉老师的一些必要信息。" name="stext" id="stext"></textarea></td>
      </tr>
      
      
  
      
      
  </table>
    <label for="sno"></label>
      </p>
      <p >
        <input type="submit" name="12" id="12" value="提交" style="font-size: 16px;
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
  text-transform: uppercase;margin-left:50px" onmouseover="this.style.background='#9900FF'" onmouseout="this.style.background='#00BBFF '" />
          </p>
          </form>
          
 
 
 </div>
 
 <script>
 function F_Select(select) 
{ 

   for(iIndex=0;iIndex < select.length;iIndex++) 
        { 
                  if(select.options[iIndex].selected) 
                  { 
                             if(select.options[iIndex].value=="3") 
                              { 
          document.getElementById('np').style.display="";
		   document.getElementById('tid').style.display="none";
		      document.getElementById('tsex').style.display="none";
			     document.getElementById('tdate').style.display="none";
				    document.getElementById('ttel').style.display="none";
					   document.getElementById('tmajor').style.display="none";
					      document.getElementById('tclass').style.display="none";
                              } 
							   else if(select.options[iIndex].value=="1") 
                              { 
          document.getElementById('np').style.display="none";
		    document.getElementById('tid').style.display="none";
		      document.getElementById('tsex').style.display="none";
			     document.getElementById('tdate').style.display="none";
				    document.getElementById('ttel').style.display="none";
					   document.getElementById('tmajor').style.display="none";
					      document.getElementById('tclass').style.display="none";
						  
                              } 
							  else if(select.options[iIndex].value=="2")
  							  {
								  document.getElementById('np').style.display="none";
		    document.getElementById('tid').style.display="";
		      document.getElementById('tsex').style.display="";
			     document.getElementById('tdate').style.display="";
				    document.getElementById('ttel').style.display="";
					   document.getElementById('tmajor').style.display="";
					      document.getElementById('tclass').style.display="";
								  
								  }
                  }                   
        } 
} 


function check() //注册提交检测
{
	if( document.getElementById('np').style.display==""){
	 if (document.getElementById('pname').value == "") {
        alert("请输入预约项目名称")
		 return false;
    }}
	
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
	
	if( document.getElementById('tid').style.display==""){
	 ss = document.getElementById('sid').value;
		re = /^[0-9]\d{16}[0-9xX]$/
		if (re.test(ss)) {} else {
			alert("请输入正确的身份证号");
			return false;
		}
	
	}
	
	if( document.getElementById('tdate').style.display==""){
	 ss = document.getElementById('sdate').value;
		re = /^[2-2][0-0][1-3][0-9]$/
		if (re.test(ss)) {} else {
			alert("请输入正确的入学年份");
			return false;
		}
	
	}
	if( document.getElementById('ttel').style.display==""){
		 ss = document.getElementById('stel').value;
		re = /^[0-1]\d{10}$/
		if (re.test(ss)) {} else {
			alert("请输入正确的联系电话");
			return false;
		}
	}
	
	if( document.getElementById('tclass').style.display==""){
		 ss = document.getElementById('sclass').value;
		re = /^\d{7}$/
		if (re.test(ss)) {} else {
			alert("请输入正确的班级");
			return false;
		}
	}
	
	
	 ss = document.getElementById('snum').value;
    re = /^[1-9]$/
	  if (re.test(ss)) {} else {
		
         alert("预约数量格式错误");
        return false;
    }

var NowNum = document.getElementById('stext').value.length;
				if(NowNum<1)
				{
					alert("请说明理由（备注）");
				return false;
					
					}
					
if(confirm("是否确认提交预约信息？"))
{
	return true;
	
	}
	else
	{
		return false;
		}
}

 </script>
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
