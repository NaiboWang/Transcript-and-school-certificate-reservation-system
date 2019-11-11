<%@LANGUAGE="VBSCRIPT"  CODEPAGE="65001" %>
<!--#include file="Connections/data.asp" -->
<%
Dim Recordset1
Dim Recordset1_cmd
Dim Recordset1_numRows

Set Recordset1_cmd = Server.CreateObject ("ADODB.Command")
Recordset1_cmd.ActiveConnection = MM_data_STRING
Recordset1_cmd.CommandText = "SELECT * FROM 在校证明预约 WHERE ID =" & request.Form("IDS")
Recordset1_cmd.Prepared = true

Set Recordset1 = Recordset1_cmd.Execute
Recordset1_numRows = 0
%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="../resources/css/print.css" />
<script language="javascript" src="../resources/js/jquery-1.7.1.min.js"></script>
<script language="javascript" src="../resources/js/jquery.jqprint-0.3.js"></script>
<script language="javascript">
function  a(){
$("#ddd").jqprint();
}
</script>
<title>在校证明打印</title>
</head>
<body>
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

<input type="button" onClick="a()" style="font-size: 16px;
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
  text-transform: uppercase;margin-left:40%" onmouseover="this.style.background='#9900FF'" onmouseout="this.style.background='#00BBFF '" value="点击打印下方内容"/>
<div id="ddd">
    <table border=0>
        <tr height="10px" id="title" style="margin-top:-100px; padding-top:-100px;height:10px">
        	<td>
            	<font><b>
            	在校证明</b></font>
            </td>
        </tr>
        <tr id="content">
        	<td>
            	<h1 style="font-size:30px">&nbsp;&nbsp;兹证明，<%=(Recordset1.Fields.Item("姓名").Value)%>同学，<%=(Recordset1.Fields.Item("性别").Value)%>，身份证号：<%=(Recordset1.Fields.Item("身份证号").Value)%>，学号<%=(Recordset1.Fields.Item("学号").Value)%>，于<%=(Recordset1.Fields.Item("入学年份").Value)%>年8月入学，目前为我院<%=(Recordset1.Fields.Item("专业").Value)%>专业<%=(Recordset1.Fields.Item("入学年份").Value)%>级<%=(Recordset1.Fields.Item("班级").Value)%>班学生，学制为4年，特此说明。            	</h1>
            </td>
        </tr>
        <tr id="footer">
        	<td>
            	<h1 style="font-size:30px">西安电子科技大学<br>物理与光电工程学院<br>
                <%=year(Now) & "年" & Month(Now) & "月" & day(Now)%>日</h1>
            </td>
        </tr>
    </table>
</div>
</body>
</html><%
Recordset1.Close()
Set Recordset1 = Nothing
%>
