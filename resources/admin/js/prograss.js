/**************
*  打印成绩单 *
**************/
	var parten=new Array(0,0,0);

	function Name(){
		var userName = document.getElementById("username");
		var name = document.getElementById("name");
		parten[0] = false;
			
		if(userName.value=="姓名"||userName.value==""){
			name.innerText="请输入姓名";
			userName.value="姓名";
		}
		else if(userName.value.length>10){
			name.innerText="输入的姓名长度太长";
		}
		else if(userName.value[0]==' '||userName.value[userName.value.length-1]==' ')
		{
			name.innerText="请正确输入姓名";
		}
		else
		{
			name.innerText="";
			parten[0]=true;	
		}
	}
	
	function Stu_Num(){
		var stuNum = document.getElementById("stu_number");
		var stu_num=document.getElementById("stu_num");
		parten[1]=true;
		
		if(stuNum.value=='学号'||stuNum.value=='')
		{
			stu_num.innerText='请输入学号';
		}
		else if(stuNum.value.length>12){
			stu_num.innerText="请输入正确的学号";	
		}
		for(var i=0;i<stuNum.value.length;i++){
			if(stuNum.value[i]<'0'||stuNum.value[i]>'9')
			{
				stu_num.innerText="请输入正确的学号";
				parten[1]=false;
			}
		}
		if(parten[1]) stu_num.innerText=" ";	
	}
	
	function Reason(){
		var reason = document.getElementById("reason");
		var stu_rea=document.getElementById("stu_rea");
		parten[2]=false;
		
		if(reason.value=="理由"||reason.value=="")
		{
			stu_rea.innerText="请输入理由";
			reason.value="理由";
		}
		else if(reason.value.length>100){
			stu_rea.innerText="输入字数应不多于100";	
		}
		else if(!parten[2]){
			parten[2]=true;
			stu_rea.innerText=" ";
		}
	}
	
	function Button(){
		var j=0;
		for(var i=0;i<3;i++)
		{
			switch(i)
			{
				case 0:Name(); break;
				case 1:Stu_Num(); break;
				case 2:Reason(); break;
			}	
		}
		for(i=0;i<3;i++)
		{
			if(parten[i])
				j++;	
		}
		
		if(j==3) alert('成功！');
	}
