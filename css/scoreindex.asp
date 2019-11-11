<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
' *** Logout the current user.
MM_Logout = CStr(Request.ServerVariables("URL")) & "?MM_Logoutnow=1"
If (CStr(Request("MM_Logoutnow")) = "1") Then
  Session.Contents.Remove("MM_Username")
  Session.Contents.Remove("MM_UserAuthorization")
  MM_logoutRedirectPage = "scorelogin.asp"
  ' redirect with URL parameters (remove the "MM_Logoutnow" query param).
  if (MM_logoutRedirectPage = "") Then MM_logoutRedirectPage = CStr(Request.ServerVariables("URL"))
  If (InStr(1, UC_redirectPage, "?", vbTextCompare) = 0 And Request.QueryString <> "") Then
    MM_newQS = "?"
    For Each Item In Request.QueryString
      If (Item <> "MM_Logoutnow") Then
        If (Len(MM_newQS) > 1) Then MM_newQS = MM_newQS & "&"
        MM_newQS = MM_newQS & Item & "=" & Server.URLencode(Request.QueryString(Item))
      End If
    Next
    if (Len(MM_newQS) > 1) Then MM_logoutRedirectPage = MM_logoutRedirectPage & MM_newQS
  End If
  Response.Redirect(MM_logoutRedirectPage)
End If
%>
<!--#include file="Connections/data.asp" -->
<%
Dim Recordset1__MMColParam
Recordset1__MMColParam = "1"
If (Session("MM_Username") <> "") Then 
  Recordset1__MMColParam = Session("MM_Username")
End If
%>
<%
Dim Recordset1
Dim Recordset1_cmd
Dim Recordset1_numRows

Set Recordset1_cmd = Server.CreateObject ("ADODB.Command")
Recordset1_cmd.ActiveConnection = MM_data_STRING
Recordset1_cmd.CommandText = "SELECT * FROM 身份信息（不可泄露） WHERE [学号] = ?" 
Recordset1_cmd.Prepared = true
Recordset1_cmd.Parameters.Append Recordset1_cmd.CreateParameter("param1", 200, 1, 255, Recordset1__MMColParam) ' adVarChar

Set Recordset1 = Recordset1_cmd.Execute
Recordset1_numRows = 0
%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
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
</head>
	
<body>
	<div class="psd">
	<div class="container">
<!-- header -->
		<div class="header" style=" width:auto">
        	<div class="logo-right">
				<span class="menu"><img src="images/menu.png" alt=" "/></span>
				<ul class="nav1">
					<li class="cap"><a href="index.html" class="act">主页<span>从这里开始</span></a></li>
					<li><a href="#about" class="act1">ABOUT US<span>KNOW US</span></a></li>
					<li><a href="#feature" class="act2">FEATURES<span>WE PROVIDE</span></a></li>
					<li><a href="blog.html" class="act3">BLOG<span>READ NEWS</span></a></li>
					<li><a href="portfolio.html" class="act4">PORTFOLIO<span>OUR WORK</span></a></li>
					<li><a href="contact.html" class="act5">CONTACT US<span>GET IN TOUCH</span></a></li>
				</ul>
			</div>
			<div class="logo">
				<a href="scoreindex.asp"><img src="images/logo.png" width="270" height="59" alt=" " /></a>
                <h1  style=" text-align:left;font-size:17px; letter-spacing:-3px;font-weight:600; top:20px"><img src="images/user.png" style="top:-100px" width="25" height="25" />王乃博同学，欢迎你！<div class="bhh" style="float:right; width:400px;position:relative; top:-30px;left:2000px"> <a href="<%= MM_Logout %>"><input type="submit" value="注销"  </a></div>  </div> 
		  <div class="clearfix"> </div>
				<!-- script for menu --> 
					<script> 
						$( "span.menu" ).click(function() {
						$( "ul.nav1" ).slideToggle( 300, function() {
						 // Animation complete.
						});
						});
					</script>
				<!-- //script for menu -->
		</div>
<!-- //header -->
<!-- banner -->
	<div class="banner">
<!-- Slider-starts-Here -->
				<script src="js/responsiveslides.min.js"></script>
				 <script>
				    // You can also use "$(window).load(function() {"
				    $(function () {
				      // Slideshow 4
				      $("#slider3").responsiveSlides({
				        auto: true,
				        pager: false,
				        nav: true,
				        speed: 500,
				        namespace: "callbacks",
				        before: function () {
				          $('.events').append("<li>before event fired.</li>");
				        },
				        after: function () {
				          $('.events').append("<li>after event fired.</li>");
				        }
				      });
				
				    });
				  </script>
			<!--//End-slider-script -->
			<div  id="top" class="callbacks_container wow fadeInUp" data-wow-delay="0.5s">
				<ul class="rslides" id="slider3">
					<li>
						<div class="banner1">
							<div class="banner-info">
								<h3>SHOWCASE YOUR <span>WORK.</span></h3>
							</div>
						</div>
					</li>
					<li>
						<div class="banner2">
							<div class="banner-info">
								<h3>SHOWCASE YOUR <span>WEB DESIGN.</span></h3>
							</div>
						</div>
					</li>
					<li>
						<div class="banner1">
							<div class="banner-info">
								<h3>SHOWCASE YOUR <span>DESIGN.</span></h3>
							</div>
						</div>
					</li>
					<li>
						<div class="banner2">
							<div class="banner-info">
								<h3>SHOWCASE YOUR <span>WEB.</span></h3>
							</div>
						</div>
					</li>
				</ul>
			</div>			
	</div>
<!-- //banner -->
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>
<!-- banner-bottom -->
	<div id="feature" class="banner-bottom">
		<div class="banner-bottom-grids">
			<div class="banner-bottom-grid">
				<div class="um-fig">
					<span> </span>
				</div>
				<div class="um-text">
					<h3>FOLD <span>PAPER.</span></h3>
					<p>A human being is a part of a whole, called by the magic and know universe.</p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="banner-bottom-grid">
				<div class="t-fig">
					<span> </span>
				</div>
				<div class="um-text">
					<h3>TASTE <span>COFFEE.</span></h3>
					<p>A human being is a part of a whole, called by the magic and know universe.</p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="banner-bottom-grids">
			<div class="banner-bottom-grid">
				<div class="toy-fig">
					<span> </span>
				</div>
				<div class="um-text">
					<h3>PLAY <span>HARD.</span></h3>
					<p>A human being is a part of a whole, called by the magic and know universe.</p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="banner-bottom-grid">
				<div class="tie-fig">
					<span> </span>
				</div>
				<div class="um-text">
					<h3>WEAR <span>TIES.</span></h3>
					<p>A human being is a part of a whole, called by the magic and know universe.</p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="banner-bottom-grids">
			<div class="banner-bottom-grid">
				<div class="arr-fig">
					<span> </span>
				</div>
				<div class="um-text">
					<h3>STRECH <span>THINGS.</span></h3>
					<p>A human being is a part of a whole, called by the magic and know universe.</p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="banner-bottom-grid">
				<div class="graph-fig">
					<span> </span>
				</div>
				<div class="um-text">
					<h3>INCREASE <span>SALES.</span></h3>
					<p>A human being is a part of a whole, called by the magic and know universe.</p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="banner-bottom-grids">
			<div class="banner-bottom-grid">
				<div class="box-fig">
					<span> </span>
				</div>
				<div class="um-text">
					<h3>MAXIMIZE <span>TASK.</span></h3>
					<p>A human being is a part of a whole, called by the magic and know universe.</p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="banner-bottom-grid">
				<div class="rod-fig">
					<span> </span>
				</div>
				<div class="um-text">
					<h3>COMPLETE <span>JOB.</span></h3>
					<p>A human being is a part of a whole, called by the magic and know universe.</p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
<!-- //banner-bottom -->
<!-- work -->
	<div id="about" class="work">
		<div class="buy">
			<div class="buy-text">
				<h3>Hi there. I am a new theme, with attitude. I am also responsive and easy do edit. 
					Why don’t you try me ?</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis nulla vel
					dolor ultrices blandit nec sit amet. turpis it amet, consectetur adipiscing.</p>
			</div>
			<div class="buy-now">
				<a href="single.html" class="hvr-bounce-to-left">BUY NOW!</a>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="line">
			<span> </span>
		</div>
		<div class="awesome">
			<div class="awesome-left">
				<h3>THE AWESOME <span>WORK.</span></h3>
				<p>Too many of us look upon Americans as dollar chasers.
					This is a cruel libel, even if it is reiterated thoughtlessly.</p>
				<a href="single.html" class="hvr-bounce-to-left1">ALL WORK.</a>
			</div>
			<div class="awesome-right">
				<div class="awesome-right-grid">
					<a href="images/3-.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
						<img class="one" src="images/3.jpg" alt=" " title="Science Laboratory" />
						<div class="b-wrapper">
							<h2 class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive" src="images/plus.png" class="zoom" alt=""/>
							</h2>
						</div>
					</a>
					<h4>HAVING SOME LAUNCH</h4>
					<p>Webdesign // Photography</p>				
					<div class="social">
						<ul>
							<li><a href="single.html" class="cam"> </a></li>
							<li><a href="single.html" class="gal"> </a></li>
							<li><a href="single.html" class="lin"> </a></li>
						</ul>
					</div>
				</div>
				<div class="awesome-right-grid">
					<a href="images/1-.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
						<img class="one" src="images/1.jpg" alt=" " title="Science Laboratory" />
						<div class="b-wrapper">
							<h2 class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive" src="images/plus.png" class="zoom" alt=""/>
							</h2>
						</div>
					</a>
					<h4>TAKE YOUR TIME AND RELAX</h4>
					<p>Webdesign // Photography</p>				
					<div class="social">
						<ul>
							<li><a href="single.html" class="cam"> </a></li>
							<li><a href="single.html" class="gal"> </a></li>
							<li><a href="single.html" class="lin"> </a></li>
						</ul>
					</div>
				</div>
				<div class="awesome-right-grid">
					<a href="images/2-.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
						<img class="one" src="images/2.jpg" alt=" " title="Science Laboratory" />
						<div class="b-wrapper">
							<h2 class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive" src="images/plus.png" class="zoom" alt=""/>
							</h2>
						</div>
					</a>
					<h4>WIRES...WIRES EVERYWHERE</h4>
					<p>Webdesign // Photography</p>				
					<div class="social">
						<ul>
							<li><a href="single.html" class="cam"> </a></li>
							<li><a href="single.html" class="gal"> </a></li>
							<li><a href="single.html" class="lin"> </a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
	<link rel="stylesheet" href="css/swipebox.css">
				<script src="js/jquery.swipebox.min.js"></script> 
					<script type="text/javascript">
						jQuery(function($) {
							$(".swipebox").swipebox();
						});
					</script>
				<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
					<script type="text/javascript">
					$(function () {
						
						var filterList = {
						
							init: function () {
							
								// MixItUp plugin
								// http://mixitup.io
								$('#portfoliolist').mixitup({
									targetSelector: '.portfolio',
									filterSelector: '.filter',
									effects: ['fade'],
									easing: 'snap',
									// call the hover effect
									onMixEnd: filterList.hoverEffect()
								});				
							
							},	
							hoverEffect: function () {
							
								// Simple parallax effect
								$('#portfoliolist .portfolio').hover(
									function () {
										$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
										$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
									},
									function () {
										$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
										$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
									}		
								);				

							}
				
						};		
						// Run the show!
						filterList.init();					
					});	
					</script>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //work -->
<!-- footer-top -->
	<div class="footer-top">
		<div class="footer-top-grid">
			<h3>ABOUT <span>BIZZWOW</span></h3>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque 
				id arcu neque, at convallis est felis. 
				<span>Aliquam lacus ligula, consectetur vel egestas quis,
				tincidunt et massa. Mauris et lacus elit. Praesent hendrerit.</span></p>
		</div>
		<div class="footer-top-grid">
			<h3>THE <span>TAGS</span></h3>
			<div class="unorder">
				<ul class="tag2">
					<li><a href="#">awesome</a></li>
					<li><a href="#">strategy</a></li>
					<li><a href="#">development</a></li>
				</ul>
				<ul class="tag2">
					<li><a href="#">css</a></li>
					<li><a href="#">photoshop</a></li>
					<li><a href="#">photography</a></li>
					<li><a href="#">html</a></li>
				</ul>
				<ul class="tag2">
					<li><a href="#">awesome</a></li>
					<li><a href="#">strategy</a></li>
					<li><a href="#">development</a></li>
				</ul>
				<ul class="tag2">
					<li><a href="#">css</a></li>
					<li><a href="#">photoshop</a></li>
					<li><a href="#">photography</a></li>
					<li><a href="#">html</a></li>
				</ul>
				<ul class="tag2">
					<li><a href="#">awesome</a></li>
					<li><a href="#">strategy</a></li>
					<li><a href="#">development</a></li>
				</ul>
			</div>
		</div>
		<div class="footer-top-grid">
			<h3>LATEST <span>TWEETS</span></h3>
			<ul class="twi">
				<li>I like this awesome freebie. Check it out <a href="mailto:info@example.com" class="mail">
				@http://t.co/9vslJFpW</a> <span>ABOUT 15 MINS</span></li>
				<li>I like this awesome freebie. You can view it online here<a href="mailto:info@example.com" class="mail">
				@http://t.co/9vslJFpW</a> <span>ABOUT 2 HOURS AGO</span></li>
			</ul>
		</div>
		<div class="footer-top-grid">
			<h3>FLICKR <span>FEED</span></h3>
			<div class="flickr-grids">
				<div class="flickr-grid">
					<img src="images/15.png" alt=" " title="CEO" />
				</div>
				<div class="flickr-grid">
					<img src="images/16.png" alt=" " title="GM" />
				</div>
				<div class="flickr-grid">
					<img src="images/17.png" alt=" " title="CEO" />
				</div>
				<div class="clearfix"> </div>
				
				<div class="flickr-grid">
					<img src="images/16.png" alt=" " title="GM" />
				</div>
				<div class="flickr-grid">
					<img src="images/17.png" alt=" " title="CEO" />
				</div>
				<div class="flickr-grid">
					<img src="images/15.png" alt=" " title="GM" />
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
<!-- //footer-top -->
<!-- footer -->
	<div class="footer">
		<div class="footer-left">
			<ul>
				<li><a href="index.html"><img src="images/logo1.png" alt=" " /></a><span> |</span></li>
				<li><p>The awesome agency. <span>0800 (123) 4567 // Los Angeles 746 PO</span></p></li>
			</ul>
		</div>
		<div class="footer-right">
			<p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
		</div>
		<div class="clearfix"> </div>
	</div>
<!-- //footer -->
	</div>
	</div>
<!-- here stars scrolling icon -->
	<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>
<%
Recordset1.Close()
Set Recordset1 = Nothing
%>
