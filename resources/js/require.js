
	var parten=new Array(0,0);
	
	function Select(){
		var select = document.getElementById("select");
		var sele=document.getElementById("sele");
		
		if(select.value==0)
		{
			parten[0]=false;
			sele.innerText="请选择查询项目";
		}
		else
		{
			parten[0]=true;
			sele.innerText="";
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
	
	function Button(){
		var j=0;
		for(var i=0;i<2;i++)
		{
			switch(i)
			{
				case 0:Select(); break;
				case 1:Stu_Num(); break;
			}	
		}
		for(var i=0;i<2;i++)
		{
			if(parten[i])  j++;
		}
		if(j==2){
			return true;
		}
		return false;
	}