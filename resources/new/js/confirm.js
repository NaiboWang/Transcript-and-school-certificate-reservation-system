/**************
*   在校证明   *
**************/
	var parten=new Array(0,0,0,0,0,0,0,0);

	function Name(){
		var userName = document.getElementById("username");
		var name = document.getElementById("name");
		parten[0] = false;
			
		if(userName.value=="姓名"||userName.value==""){
			name.innerText="请输入姓名";
			//userName.value="姓名";
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
	
	
	function Identity(){
		var identity = document.getElementById("identity");
		var ident =document.getElementById("ident");
		parten[1]=true;
		
		if(identity.value=="身份证号"||identity.value==""){
			ident.innerText="请输入身份证号";
			//identity.value="身份证号";
		}
		else if(identity.value.length!=18){
			ident.innerText="请输入正确的身份证号";	
		}
		else
		{
			for(var i=0;i<identity.value.length;i++){
				if(identity.value[i]<'0'||identity.value[i]>'9')
				{
					identity.innerText="请输入正确的身份证号";
					parten[1]=false;
				}
			}
			if(parten[1]) ident.innerText=" ";	
		}
	}
	
	function Year(){
		var year = document.getElementById("year");
		var inyear =document.getElementById("inyear");
		parten[2]=false;
		var now=new Date();
		
		
		if(year.value=="入学年份"||year.value==""){
			inyear.innerText="请输入入学年份";
			//year.value="入学年份";
		}
		else if(isNaN(year.value))
		{
			inyear.innerText="请正确输入入学年份";
		}
		else if(now.getFullYear()-year.value>4||now.getFullYear()-year.value<0)
		{
			inyear.innerText="只办理本科以内的业务！";	
		}
		else
		{
			parten[2]=true;
			inyear.innerText="";
		}
	}
	
	
	function Stu_Num(){
		var stuNum = document.getElementById("stu_number");
		var stu_num=document.getElementById("stu_num");
		parten[3]=true;
		
		if(stuNum.value=='学号'||stuNum.value=='')
		{
			stu_num.innerText='请输入学号';
			parten[3]=false;
		}
		else if(stuNum.value.length>12){
			stu_num.innerText="请输入正确的学号";	
			parten[3]=false;
		}
		for(var i=0;i<stuNum.value.length;i++){
			if(stuNum.value[i]<'0'||stuNum.value[i]>'9')
			{
				stu_num.innerText="请输入正确的学号";
				parten[3]=false;
			}
		}
		if(parten[3]) stu_num.innerText=" ";	
	}
	
	
	function Classes(){
		var classes = document.getElementById("classes");
		var class1=document.getElementById("class");	
		parten[4]=true;
		
		if(classes.value=="班级"||classes.value=="")
		{
			class1.innerText="请输入班级";
			//classes.value="班级";
		}
		else if(classes.value.length<6||classes.value.length>8)
		{
			class1.innerText="请正确输入班级";
		}
		else
		{
			for(var i=0;i<classes.value.length;i++){
				if(classes.value[i]<'0'||classes.value[i]>'9')
				{
					class1.innerText="请输入正确的班级";
					parten[4]=false;
				}
			}
			if(parten[4]) class1.innerText=" ";	
		}
	}
	
	function Reason(){
		var reason = document.getElementById("reason");
		var stu_rea=document.getElementById("stu_rea");
		parten[5]=false;
		
		if(reason.value=="理由"||reason.value=="")
		{
			stu_rea.innerText="请输入理由";
			//reason.value="理由";
		}
		else if(reason.value.length>100){
			stu_rea.innerText="输入字数应不多于100";	
		}
		else if(!parten[5]){
			parten[5]=true;
			stu_rea.innerText=" ";
		}
	}
	
	function Month(){
		var month = document.getElementById("month");
		var inmonth =document.getElementById("inmonth");
		parten[6]=false;
		
		if(month.value=='9')
		{
			parten[6]=true;
			inmonth.innerText="";
		}
		else if(month.value=="入学月份"||month.value==""){
			inmonth.innerText="请输入入学月份";
		}
		else if(isNaN(month.value))
		{
			inmonth.innerText="请正确输入入学月份";
		}
		
	}
	
	function Number(){
		var number = document.getElementById("number");
		var num=document.getElementById("num");
		parten[7]=true;
		
		if(number.value=='电话'||number.value=='')
		{
			num.innerText='请输入电话';
			parten[7]=false;
		}
		else if(number.value.length!=11){
			num.innerText="请输入正确的电话";	
			parten[7]=false;
		}
		for(var i=0;i<number.value.length;i++){
			if(number.value[i]<'0'||number.value[i]>'9')
			{
				num.innerText="请输入正确的电话";
				parten[7]=false;
			}
		}
		if(parten[7]) num.innerText=" ";	
	}
	
	function Button(){
		var j=0;
		var flag = 0;
		for(var i=0;i<8;i++)
		{
			switch(i)
			{
				case 0:Name(); break;
				case 1:Identity(); break;
				case 2:Year(); break;
				case 3:Stu_Num(); break;
				case 4:Classes(); break;
				case 5:Reason(); break;
				case 6:Month(); break;
				case 7:Number(); break;
			}	
		}
		for(var i=0;i<8;i++)
		{
			if(parten[i])  j++;
		}

		if(j<7){
			//alert('成功1');
			return false;
		}
		if(j==7){
			//alert('成功');
			flag = 1;
		}

		
		return true;
	}