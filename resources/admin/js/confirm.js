/**************
*   在校证明   *
**************/
	var parten=new Array(0,0);

	function Theme(){
		var userName = document.getElementById("theme");
		var name = document.getElementById("title1");
		parten[0] = false;
			
		if(userName.value=="主题"||userName.value==""){
			name.innerText="请输入主题";
			//userName.value="主题";
		}
		else
		{
			name.innerText="";
			parten[0]=true;	
		}
	}
	

	
	function Content(){
		var content1 = document.getElementById("content1");
		var content2=document.getElementById("content2");
		parten[1]=false;
		
		if(content1.value=="内容"||content1.value=="")
		{
			content2.innerText="请输入内容";
			content1.value="内容";
		}
		else if(!parten[1]){
			parten[1]=true;
			content2.innerText=" ";
		}
	}
	
	function Button(){
		var j=0;
		for(var i=0;i<9;i++)
		{
			switch(i)
			{
				case 0:Theme(); break;
				case 1:Content(); break;
			}	
		}
		for(var i=0;i<1;i++)
		{
			if(parten[i])  j++;
		}
		if(j==2){
			return true;
		}
		return false;
	}