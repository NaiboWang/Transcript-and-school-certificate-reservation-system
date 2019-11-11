<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="Connections/data.asp" -->
<%
Dim Recordset1
Dim Recordset1_cmd
Dim Recordset1_numRows

Set Recordset1_cmd = Server.CreateObject ("ADODB.Command")
Recordset1_cmd.ActiveConnection = MM_data_STRING
Recordset1_cmd.CommandText = "SELECT 备注, 回复, 时间, 数量, 状态 FROM 成绩预约 WHERE 学号='"&request.Form("sno")&"' and 姓名 = '"&request.Form("sname")&"' ORDER BY 时间 desc" 
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
Recordset2_cmd.CommandText = "SELECT 备注, 回复, 时间, 数量, 状态 FROM 在校证明预约 WHERE 学号='"&request.Form("sno")&"' and 姓名 = '"&request.Form("sname")&"' ORDER BY 时间 desc" 
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
Recordset3_cmd.CommandText = "SELECT 预约类型,备注, 回复, 时间, 数量, 状态 FROM 其他预约 WHERE 学号='"&request.Form("sno")&"' and 姓名 = '"&request.Form("sname")&"' ORDER BY 时间 desc" 
Recordset3_cmd.Prepared = true

Set Recordset3 = Recordset3_cmd.Execute
Recordset3_numRows = 0
%>
<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = -1
Repeat1__index = 0
Recordset1_numRows = Recordset1_numRows + Repeat1__numRows
%>
<%
Dim Repeat2__numRows
Dim Repeat2__index

Repeat2__numRows = -1
Repeat2__index = 0
Recordset2_numRows = Recordset2_numRows + Repeat2__numRows
%>
<%
Dim Repeat3__numRows
Dim Repeat3__index

Repeat3__numRows = -1
Repeat3__index = 0
Recordset3_numRows = Recordset3_numRows + Repeat3__numRows
%>
<!DOCTYPE html>
<html>
<head>
<title>三思-预约查询</title>
 

<style>  

	.datatable {width:800px; border:1px;border: 1px solid #000;margin-bottom: 20px;}
        .datatable th, .datatable td { padding: 5px;}
        .datatable thead th {  vertical-align:middle; text-align:center;background-color: #eee;margin: 0;font-weight: 500}
        .datatable tbody tr {background-color: #fff;border-bottom: 1px solid #000;table-layout:fixed;text-align:center;word-break:break-all;font-weight: 400}
		.datatable tbody tr:hover
		{
			background-color:#D6E6F8;
			}
		.datatable tbody td a:hover
		{
			color:#0200FF;
			}
        .datatable tfoot td {background-color: #fafafa;text-align: right;border-bottom: 1px solid #cfcfcf;}
            /*表格分页列表*/
        .datatable td.paging a {border: 1px solid #eee; color: #444; margin: 4px; padding: 2px 7px; text-decoration: none; text-align:center;}
            /*表格分页当前页*/
        .datatable td.paging a.current {background: #eee; border: 1px solid #CFCFCF; color: #444; font-weight: bold;}
        .datatable td.paging a.current{border: 0;cursor: auto;background:none
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
<style type="text/css">
body,td,th {
	font-family: "微软雅黑", sans-serif;
}
</style>
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
		<p class="para" style="font-size:15px">查询说明:下方表格即是学号为<%=request.Form("sno")%>，姓名为<%=request.Form("sname")%>的学生的所有预约信息。</p>
  <p class="para" style="font-size:15px">&nbsp;</p>
		<p class="para" style="font-size:15px">&nbsp;</p>
    
  <p><img src="hr-geo-sukarno-1s960x639.png"  style="  position:relative; left:3%;background-size:cover; background-position:center; width:90%;height:90%" alt=""/></p>
  <div  align="center" class="para" style="font-size:19px; font-family:'微软雅黑'; padding-top:20px">
<div align="center">
  <p>成绩单预约信息    </p>
      <table align="center"  style="width: 100%; border:1px;border: 1px solid #cfcfcf;margin-bottom: 20px;font-size:16px" class="datatable">
                  <thead>
                    <tr >
                      <th>ID</th>
                      <th>预约申请时间</th>
                      <th>数量</th>
                      <th>备注</th>
                      <th>状态</th>
                      <th>管理员回复</th>
                    </tr>
                  </thead>
                  <tbody id = "mainbody">
                                      <% 
While ((Repeat1__numRows <> 0) AND (NOT Recordset1.EOF)) 
%>
  <tr style="border-bottom: 1px solid #ddd;" id = "delCell">
    <td align="center"><%response.write(Repeat1__index+1)%></td>
    <td align="center"><%=(Recordset1.Fields.Item("时间").Value)%></td>
    <td align="center"><%=(Recordset1.Fields.Item("数量").Value)%></td> 
    <td align="center"><%=(Recordset1.Fields.Item("备注").Value)%></td> 
    <td align="center" style="
    <%
		if(Recordset1.Fields.Item("状态").Value = "未处理") then 
			response.Write("color:#333")
		elseif(Recordset1.Fields.Item("状态").Value = "已拒绝") then
			response.Write("color:red")
		else
			response.Write("color:blue")	
			end if
		%>
        "><%=(Recordset1.Fields.Item("状态").Value)%></td> 
    <td align="center"><%=(Recordset1.Fields.Item("回复").Value)%></td> 
    
    
    
  </tr>
  <% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  Recordset1.MoveNext()
Wend
%>
     
     
        </tbody>
      </table>

  <p>在校证明预约信息</p>
  <table align="center"  style="width: 100%; border:1px;border: 1px solid #cfcfcf;margin-bottom: 20px;font-size:16px" class="datatable">
                  <thead>
                    <tr >
                      <th>ID</th>
                      <th>预约申请时间</th>
                      <th>数量</th>
                      <th>备注</th>
                      <th>状态</th>
                      <th>管理员回复</th>
                    </tr>
                  </thead>
                  <tbody id = "mainbody">
                    <% 
While ((Repeat2__numRows <> 0) AND (NOT Recordset2.EOF)) 
%>
                      <tr style="border-bottom: 1px solid #ddd;" id = "delCell">
                        <td align="center"><%response.write(Repeat2__index+1)%></td>
                        <td align="center"><%=(Recordset2.Fields.Item("时间").Value)%></td>
                        <td align="center"><%=(Recordset2.Fields.Item("数量").Value)%></td>
                        <td align="center"><%=(Recordset2.Fields.Item("备注").Value)%></td>
                        <td align="center" style="
    <%
		if(Recordset2.Fields.Item("状态").Value = "未处理") then 
			response.Write("color:#333")
		elseif(Recordset2.Fields.Item("状态").Value = "已拒绝") then
			response.Write("color:red")
		else
			response.Write("color:blue")	
			end if
		%>
        "><%=(Recordset2.Fields.Item("状态").Value)%></td>
                        <td align="center"><%=(Recordset2.Fields.Item("回复").Value)%></td>
                      </tr>
                      <% 
  Repeat2__index=Repeat2__index+1
  Repeat2__numRows=Repeat2__numRows-1
  Recordset2.MoveNext()
Wend
%>
                  </tbody>
      </table>
      
  <p>其他项目预约信息 </p>
  
  <table align="center"  style="width: 100%; border:1px;border: 1px solid #cfcfcf;margin-bottom: 20px;font-size:16px" class="datatable">
                  <thead>
                    <tr >
                      <th>ID</th>
                      <th>预约类型</th>
                      <th>预约申请时间</th>
                      <th>数量</th>
                      <th>备注</th>
                      <th>状态</th>
                      <th>管理员回复</th>
                    </tr>
                  </thead>
                  <tbody id = "mainbody">
                    <% 
While ((Repeat3__numRows <> 0) AND (NOT Recordset3.EOF)) 
%>
                      <tr style="border-bottom: 1px solid #ddd;" id = "delCell">
                        <td align="center"><%response.write(Repeat3__index+1)%></td>
                        <td align="center"><%=(Recordset3.Fields.Item("预约类型").Value)%></td>
                        <td align="center"><%=(Recordset3.Fields.Item("时间").Value)%></td>
                        <td align="center"><%=(Recordset3.Fields.Item("数量").Value)%></td>
                        <td align="center"><%=(Recordset3.Fields.Item("备注").Value)%></td>
                        <td align="center" style="
    <%
		if(Recordset3.Fields.Item("状态").Value = "未处理") then 
			response.Write("color:#333")
		elseif(Recordset3.Fields.Item("状态").Value = "已拒绝") then
			response.Write("color:red")
		else
			response.Write("color:blue")	
			end if
		%>
        "><%=(Recordset3.Fields.Item("状态").Value)%></td>
                        <td align="center"><%=(Recordset3.Fields.Item("回复").Value)%></td>
                      </tr>
                      <% 
  Repeat3__index=Repeat3__index+1
  Repeat3__numRows=Repeat3__numRows-1
  Recordset3.MoveNext()
Wend
%>
                  </tbody>
      </table>
      
      
  
</div>
      <p >
        <a href="/"><input type="button" name="12" id="12" value="返回主页" style="font-size: 16px;
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
    </p>
          
          
 
 
 </div>
 
        <div  align="center"  class="portfolio-grids" style="font-size:18px; font-family:'微软雅黑'; min-height:20px">
		
         
		
      
       
          
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
<%
Recordset2.Close()
Set Recordset2 = Nothing
%>
<%
Recordset3.Close()
Set Recordset3 = Nothing
%>
<%
Recordset1.Close()
Set Recordset1 = Nothing
%>
