// JavaScript Document
/*$(function (){  
   $('#collapseOne').on('hidden.bs.collapse', function() {
		$(function () { $('#collapseOne').collapse('show')});
		$(function () { $('#collapseTwo').collapse('hide')});
		$(function () { $('#collapseThree').collapse('hide')});
		return; })
   $('#collapseTwo').on('hidden.bs.collapse', function() {
		$(function () { $('#collapseTwo').collapse('show')});
		$(function () { $('#collapseOne').collapse('hide')});
		$(function () { $('#collapseThree').collapse('hide')});
 		return;
 })
	
   $('#collapseThree').on('hidden.bs.collapse', function() {
	    $(function () { $('#collapseOne').collapse('hide')});
		$(function () { $('#collapseTwo').collapse('hide')});
		$(function () { $('#collapseThree').collapse('show')});
		return;
 })
})*/
var i=0;
$(function (){ 
	$('#collapseOne').on('click', function () {  
		i=0;
	})
	$('#collapseTwo').on('click', function () {  
		i=1;
	})
	$('#collapseThree').on('click', function () {  
		i=2;
	})
	if(i==0)
	{
		$('#collapseOne').on('hidden.bs.collapse', function()			 		{
			$(function () { $('#collapseOne').collapse('show')});
			$(function () { $('#collapseTwo').collapse('hide')});
			$(function () { $('#collapseThree').collapse('hide')});
		})
	}
	else if(i==1)
	{
		$('#collapseTwo').on('show.bs.collapse', function() 						 		{
			$(function () { $('#collapseTwo').collapse('show')});
			$(function () { $('#collapseOne').collapse('hide')});
			$(function () { $('#collapseThree').collapse('hide')});
		})
	}
	else if(i==2)
	{
		$('#collapseThree').on('shown.bs.collapse', function() 		{
	    	$(function () { $('#collapseOne').collapse('hide')});
			$(function () { $('#collapseTwo').collapse('hide')});
			$(function () { $('#collapseThree').collapse('show')});
		})
	}
})
