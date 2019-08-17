<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@page import="java.util.ArrayList"%>
  <%@page import="com.game.Game"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>射击小游戏</title>
		<%
            String path = request.getContextPath();
            String basePath = request.getScheme()+"://"
            +request.getServerName()+":"
            +request.getServerPort()+path+"/";
       %>
		<link rel="stylesheet" href="http://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="http://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
		<script src="http://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
		<script type="text/javascript" src="http://www.daimajiayuan.com/download/jquery/jquery-1.10.2.min.js"></script>  
        <script type="text/javascript" src="http://cdn.bootcss.com/bootstrap-select/2.0.0-beta1/js/bootstrap-select.js"></script>    
        <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/bootstrap-select/2.0.0-beta1/css/bootstrap-select.css"> 
		<script src="<%=basePath%>/js/login2.js"></script>
		<script src="<%=basePath%>/js/time.js"></script>
		<script src="<%=basePath%>/js/delayedloading.js"></script>
		<link type="text/css" rel="stylesheet" href="./css/reset.css" />
		<link type="text/css" rel="stylesheet" href="<%=basePath%>/css/Classify.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/Nav.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/main.css" />
		<link rel="stylesheet" href="style.css">
		<link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	</head>
	<script type="text/javascript">  
			function a(){
				$.ajax({  
            		url:"Maincontrol",//servlet文件的名称
            		type:"GET",
            		success:function(e){
            			
            		}
            	});
			}
        </script>  
	<body  onload="a()">
		<div class="alldiv">
			<div class="head">
				<div class="search">
					<div style="height: 50px;width: 160px;float: left;">
						<img src="<%=basePath%>/img/Gamelogo.png" height="50px" />
					</div>
              
                
				 <form action="Searchcontrol?page=1" method="get">
                    <input class="inputtext" type="text" name="Search" id="search1" value="火柴人" />
					<input class="searchbutton" type="submit" value="搜索">
                 </form>
					<div class="login">
					  <%
					   if((String)session.getAttribute("user")!=null){
						   out.print("<a href=\"javascript:void(0)\" class=\"btn_login\" id=\"btn_showlogin\" >"+(String)session.getAttribute("user")+"</a>");
					   }else{
						   out.print("<a href=\"javascript:void(0)\" class=\"btn_login\" id=\"btn_showlogin\" >登录</a>");
					   }
					  %>
						
						<!-- 弹出登录小窗口 -->
						<div class="mini_login" id="mini_login">
							<!-- 表单 -->
							<form action="" method="post">
								<div class="item firstLine" id="firstLine">
									<span class="login_title">用户登录</span>
									<span class="login_close" id="close_minilogin">X</span>
								</div>
								<div class="item">
									<label>用户</label>
									<input type="text" name="uname" />
								</div>
								<div class="item">
									<label>密码</label>
									<input type="password" name="upwd" />
								</div>
								<div class="item">
									<input type="submit" class="btn_login" onclick="checkUserName()" value="登录" >
								</div>
							</form>
						</div>
						<!-- 遮罩层 -->
						<div class="cover"></div>
						<a href="register.jsp">注册</a>
					</div>

					<ul class="nav navbar-nav">
						<li class="dropdown">
							<a style="color: black;" href="#" class="dropdown-toggle" data-toggle="dropdown">
								我玩过的
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu ulblock">
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga4.5054399.com/upload_pic/2018/10/29/4399_16434010201.jpg"
										 alt="快枪射瓶子">
										<p>快枪射瓶子</p>
									</a></li>
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga1.5054399.com/upload_pic/2018/10/12/4399_15280596896.jpg"
										 alt="快枪射瓶子">
										<p>射箭打靶</p>
									</a></li>
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga4.5054399.com/upload_pic/2014/10/9/4399_13470193543.jpg"
										 alt="快枪射瓶子">
										<p>AK47闯天下</p>
									</a></li>
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga4.5054399.com/upload_pic/2018/10/25/4399_16115782478.jpg"
										 alt="快枪射瓶子">
										<p>竹鼠求生记</p>
									</a></li>
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga3.5054399.com/upload_pic/2018/8/7/4399_11312911101.jpg"
										 alt="快枪射瓶子">
										<p>子弹战士</p>
									</a></li>
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga1.5054399.com/upload_pic/7272/1/400.jpg"
										 alt="快枪射瓶子">
										<p>这才叫战士</p>
									</a></li>
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga3.5054399.com/upload_pic/2013/12/11/4399_08463247691.jpg"
										 alt="快枪射瓶子">
										<p>消灭星星3</p>
									</a></li>
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga3.5054399.com/upload_pic/2016/10/27/4399_15454748568.jpg"
										 alt="快枪射瓶子">
										<p>生死狙击</p>
									</a></li>
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga1.5054399.com/upload_pic/2014/7/11/4399_11402724092.jpg"
										 alt="快枪射瓶子">
										<p>死神VS火影</p>
									</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a style="color: black;" href="#" class="dropdown-toggle" data-toggle="dropdown">
								猜你喜欢
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu ulblock">
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga4.5054399.com/upload_pic/2018/10/29/4399_16434010201.jpg"
										 alt="快枪射瓶子">
										<p>快枪射瓶子</p>
									</a></li>
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga1.5054399.com/upload_pic/2018/10/12/4399_15280596896.jpg"
										 alt="快枪射瓶子">
										<p>射箭打靶</p>
									</a></li>
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga4.5054399.com/upload_pic/2014/10/9/4399_13470193543.jpg"
										 alt="快枪射瓶子">
										<p>AK47闯天下</p>
									</a></li>
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga4.5054399.com/upload_pic/2018/10/25/4399_16115782478.jpg"
										 alt="快枪射瓶子">
										<p>竹鼠求生记</p>
									</a></li>
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga3.5054399.com/upload_pic/2018/8/7/4399_11312911101.jpg"
										 alt="快枪射瓶子">
										<p>子弹战士</p>
									</a></li>
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga1.5054399.com/upload_pic/7272/1/400.jpg"
										 alt="快枪射瓶子">
										<p>这才叫战士</p>
									</a></li>
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga3.5054399.com/upload_pic/2013/12/11/4399_08463247691.jpg"
										 alt="快枪射瓶子">
										<p>消灭星星3</p>
									</a></li>
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga3.5054399.com/upload_pic/2016/10/27/4399_15454748568.jpg"
										 alt="快枪射瓶子">
										<p>生死狙击</p>
									</a></li>
								<li class="liblock"><a href="http://www.4399.com/flash/201513.htm"><img src="http://imga1.5054399.com/upload_pic/2014/7/11/4399_11402724092.jpg"
										 alt="快枪射瓶子">
										<p>死神VS火影</p>
									</a></li>
							</ul>
						</li>
					</ul>

				</div>

				<div class="nav1 dropdown">
					<ul class="nav">
						<li>
							<div style="float: left;">
									<a id="leftE" href="">首页</a>
							</div>
						</li>
				<li>
							<div style="float: left;">
									<a id="leftE" href="<c:url value='/jsp/gameController?kinds=coupe&num=1'/>">双人</a>
							</div>
						</li>
						<li>
							<div style="float: left;">
									<a id="leftE" href="<c:url value='/jsp/gameController?kinds=risk&num=1'/>">冒险</a>
							</div>
						</li>
						<li>
							<div style="float: left;">
									<a id="leftE" href="<c:url value='/jsp/gameController?kinds=action&num=1'/>">动作</a>
							</div>
						</li>
						<li>
							<div style="float: left;">
									<a id="leftE" href="<c:url value='/jsp/gameController?kinds=role&num=1'/>">角色</a>
							</div>
						</li>
						<li>
							<div style="float: left;">
									<a id="leftE" href="<c:url value='/jsp/gameController?kinds=alpinia&num=1'/>">益智</a>
							</div>
						</li>
						<li>
							<div style="float: left;">
									<a id="leftE" href="<c:url value='/jsp/gameController?kinds=tower&num=1'/>">塔防</a>
							</div>
						</li>
						<li>
							<div style="float: left;">
									<a id="leftE" href="<c:url value='/jsp/gameController?kinds=sports&num=1'/>">体育</a>
							</div>
						</li>
						<li>
							<div style="float: left;">
									<a id="leftE" href="<c:url value='/jsp/gameController?kinds=shoot&num=1'/>">射击</a>
							</div>
						</li>
						<li>
							<div style="float: left;">
									<a id="leftE" href="<c:url value='/jsp/gameController?kinds=chess&num=1'/>">棋牌</a>
							</div>
						</li>
						<li>
							<div style="float: left;">
									<a id="leftE" href="<c:url value='/jsp/gameController?kinds=strategy&num=1'/>">策略</a>
							</div>
						</li>
						<li>
							<div style="float: left;">
									<a id="leftE" href="<c:url value='/jsp/gameController?kinds=leisure&num=1'/>">休闲</a>
							</div>
						</li>
						<li>
							<div style="float: left;">
									<a id="leftE" href="<c:url value='/jsp/gameController?kinds=girl&num=1'/>">女生</a>
							</div>
						</li>
						<li>
							<div style="float: left;">
									<a id="leftE" href="<c:url value='/jsp/gameController?kinds=dress&num=1'/>">装扮</a>
							</div>
						</li>
						<li>
							<div style="float: left;">
									<a id="leftE" href="<c:url value='/jsp/gameController?kinds=children&num=1'/>">儿童</a>
							</div>
						</li>
						<li>
							<div style="float: left;">
									<a id="leftE" href="<c:url value='/jsp/gameController?kinds=pass&num=1'/>">过关</a>
							</div>
						</li>
						<li>
							<div style="float: left;">
									<a id="leftE" href="<c:url value='/jsp/gameController?kinds=warfare&num=1'/>">战争</a>
							</div>
						</li>
					</ul>
				</div>

				<div class="position">
					<img src="<%=basePath%>/img/home.png" style="margin-top: 5px;float: left;" />
					<a href="index.html">JQKA小游戏</a>
					<span style="float: left;padding-top: 8px;color: #808080;padding-left: 5px;"></span>
					<a href=""></a>
				</div>
			</div>
			<div class="center">
				<div id="myCarousel" class="carousel slide picture">
					<!-- 轮播（Carousel）指标 -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>
					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="<%=basePath%>/img/4399game1.jpg" alt="First slide">
						</div>
						<div class="item">
							<img src="<%=basePath%>/img/4399game2.jpg" alt="Second slide">
						</div>
						<div class="item">
							<img src="<%=basePath%>/img/4399game3.jpg" alt="Third slide">
						</div>
					</div>
					<!-- 轮播（Carousel）导航 -->
					<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
								<div class="ranking">
					<h3 style="text-align: center;color: #00CED1;">热门游戏排行榜</h3>
					<ul>
						<li>
							<span class="n1">排名</span>
							<span class="n2">游戏</span>
							<span class="n1">状态</span>
							<span class="n1">新服</span>
						</li>
						<li>
							<a href="">
								<span class="m1 c1">
									<em class="num">1</em>
								</span>
								<span class="m2">
									灭神
								</span>
								<span class="m3">
									<img src="<%=basePath%>/img/fire.png" />
								</span>
								<span class="m4">
									开始
								</span>
							</a>
				
							<a href="">
								<span class="m1 c2">
									<em class="num">2</em>
								</span>
								<span class="m2">
									仙语巨鲲
								</span>
								<span class="m3">
									<img src="<%=basePath%>/img/fire.png" />
								</span>
								<span class="m4">
									开始
								</span>
							</a>
							<a href="">
								<span class="m1 c3">
									<em class="num">3</em>
								</span>
								<span class="m2">
									迷失传说
								</span>
								<span class="m3">
									<img src="<%=basePath%>/img/fire.png" />
								</span>
								<span class="m4">
									开始
								</span>
							</a>
				
							<a href="">
								<span class="m1 c4">
									<em class="num">4</em>
								</span>
								<span class="m2">
									小志传奇
								</span>
								<span class="m3">
									<img src="<%=basePath%>/img/fire.png" />
								</span>
								<span class="m4">
									开始
								</span>
							</a>
							<a href="">
								<span class="m1 c4">
									<em class="num">5</em>
								</span>
								<span class="m2">
									赤月传说2
								</span>
								<span class="m3">
									<img src="<%=basePath%>/img/fire.png" />
								</span>
								<span class="m4">
									开始
								</span>
							</a>
							<a href="">
								<span class="m1 c4">
									<em class="num">6</em>
								</span>
								<span class="m2">
									英雄合击
								</span>
								<span class="m3">
									<img src="<%=basePath%>/img/fire.png" />
								</span>
								<span class="m4">
									开始
								</span>
							</a>
							<a href="">
								<span class="m1 c4">
									<em class="num">7</em>
								</span>
								<span class="m2">
									单职业传奇
								</span>
								<span class="m3">
									<img src="<%=basePath%>/img/fire.png" />
								</span>
								<span class="m4">
									开始
								</span>
							</a>
							<a href="">
								<span class="m1 c4">
									<em class="num">8</em>
								</span>
								<span class="m2">
									传奇1.76
								</span>
								<span class="m3">
									<img src="<%=basePath%>/img/fire.png" />
								</span>
								<span class="m4">
									开始
								</span>
							</a>
							
						</li>
					</ul>
				</div>
				<div class="allgame">
					<div class="areaname">
						<span style="color: #E15304;font-weight: 700;font-size: 17px;">||</span>
						<a href="" style="color:black;font-weight: 700;font-size: 17px;"> 游戏大全</a>
					</div>
					<hr style="color: #808080;width: 90%;margin-top: 1px;" />
			 	 	<ul>
				<%-- 	<%
					
					 ArrayList<Game> list=(ArrayList)request.getAttribute("gamelist");
				      for(int i=1;i<=120;i++){  	  
				    	  out.print("<li><a href=\""+"LoadGamecontrol?gameid="+list.get(i).getID()+"\" target=\"_blank\" ><img src=\""+list.get(i).getSpicture()+"\" />"+list.get(i).getName()+"</a></li>");
				      }
					 
					%> --%>
                       <li><a href="http://www.7k7k.com/flash/133905.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140611/161016_7362.jpg" border="0"/>不能跳的机器人</a></li>
<li><a href="http://www.7k7k.com/flash/133806.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140609/144117_6504.jpg" border="0"/>狐狸英雄</a></li>
<li><a href="http://www.7k7k.com/flash/133773.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140609/103435_5688.jpg" border="0"/>超能小子枪战</a></li>
<li><a href="http://www.7k7k.com/flash/133671.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140607/115007_5027.jpg" border="0"/>风暴行动4</a></li>
<li><a href="http://www.7k7k.com/flash/133665.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140607/111420_8806.jpg" border="0"/>宅男灭僵尸</a></li>
<li><a href="http://www.7k7k.com/flash/133632.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140606/113710_1208.jpg" border="0"/>加菲猫飞机大战</a></li>
<li><a href="http://www.7k7k.com/flash/133546.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140604/152753_7364.jpg" border="0"/>fc坦克大战</a></li>
<li><a href="http://www.7k7k.com/flash/133499.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140603/172408_8642.jpg" border="0"/>盗贼世家</a></li>
<li><a href="http://www.7k7k.com/flash/133425.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140531/122602_2506.jpg" border="0"/>无尽僵尸夜</a></li>
<li><a href="http://www.7k7k.com/flash/133418.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140531/145509_2098.jpg" border="0"/>射杀黑手党</a></li>
<li><a href="http://www.7k7k.com/flash/133244.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140528/101926_3569.jpg" border="0"/>王子大战僵尸</a></li>
<li><a href="http://www.7k7k.com/flash/133157.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140527/092847_6348.jpg" border="0"/>空战英魂</a></li>
<li><a href="http://www.7k7k.com/flash/133108.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140526/132622_2473.jpg" border="0"/>消灭疯狂泡泡球</a></li>
<li><a href="http://www.7k7k.com/flash/133070.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140527/095739_7790.jpg" border="0"/>小猴子的宝藏</a></li>
<li><a href="http://www.7k7k.com/flash/133055.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140525/094658_9079.jpg" border="0"/>反恐特工</a></li>
<li><a href="http://www.7k7k.com/flash/132931.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140623/112851_7452.jpg" border="0"/>黑客帝国大乱斗</a></li>
<li><a href="http://www.7k7k.com/flash/132864.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140522/165023_9051.jpg" border="0"/>传送门守卫战2</a></li>
<li><a href="http://www.7k7k.com/flash/132766.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140521/163940_4175.jpg" border="0"/>怪物狂奔</a></li>
<li><a href="http://www.7k7k.com/flash/132626.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140520/105058_2271.jpg" border="0"/>赏金猎人海底探险</a></li>
<li><a href="http://www.7k7k.com/flash/132576.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140519/120121_9600.jpg" border="0"/>火力坦克2无敌版</a></li>
<li><a href="http://www.7k7k.com/flash/132398.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140516/162452_8442.jpg" border="0"/>牛仔枪手大决斗</a></li>
<li><a href="http://www.7k7k.com/flash/132229.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140217/172006_1882.jpg" border="0"/>末日幸存者2中文版</a></li>
<li><a href="http://www.7k7k.com/flash/132123.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140509/111623_7420.jpg" border="0"/>海绵宝宝士兵突击</a></li>
<li><a href="http://www.7k7k.com/flash/132103.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140509/102135_2128.jpg" border="0"/>坦克生死之战</a></li>
<li><a href="http://www.7k7k.com/flash/132069.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140508/144101_8216.jpg" border="0"/>重装射击</a></li>
<li><a href="http://www.7k7k.com/flash/132043.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140611/161310_6277.jpg" border="0"/>不能跳的僵尸</a></li>
<li><a href="http://www.7k7k.com/flash/132025.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140507/171151_5826.jpg" border="0"/>特殊的使命</a></li>
<li><a href="http://www.7k7k.com/flash/132016.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140611/161332_2365.jpg" border="0"/>小小突击战士</a></li>
<li><a href="http://www.7k7k.com/flash/131786.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140504/103803_1265.jpg" border="0"/>狂野西部牛仔</a></li>
<li><a href="http://www.7k7k.com/flash/131762.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140503/102412_46087.jpg" border="0"/>作死就要死！</a></li>
<li><a href="http://www.y5y10.cn/swf/131680.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140430/112807_4910.jpg" border="0"/>愤怒的小鸟之星球决战</a></li>
<li><a href="http://www.7k7k.com/flash/131656.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140430/102420_8832.jpg" border="0"/>世纪战机</a></li>
<li><a href="http://www.7k7k.com/flash/131601.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140429/144545_8800.jpg" border="0"/>像素机器人未来战争</a></li>
<li><a href="http://www.7k7k.com/flash/131437.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140428/093037_3343.jpg" border="0"/>巨魔守卫战</a></li>
<li><a href="http://www.7k7k.com/flash/131414.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140426/143742_6439.jpg" border="0"/>光影女战士</a></li>
<li><a href="http://www.7k7k.com/flash/131370.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140425/131242_1044.jpg" border="0"/>暴走的僵尸中文版</a></li>
<li><a href="http://www.7k7k.com/flash/131327.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140424/184140_72807.jpg" border="0"/>天使空战</a></li>
<li><a href="http://www.7k7k.com/flash/131297.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140424/140549_1696.jpg" border="0"/>牧场保卫战</a></li>
<li><a href="http://www.7k7k.com/flash/131158.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140422/151456_4476.jpg" border="0"/>阵营空战</a></li>
<li><a href="http://www.7k7k.com/flash/131143.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140422/131250_80097.jpg" border="0"/>怪物大战</a></li>
<li><a href="http://www.7k7k.com/flash/131099.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140422/094045_79887.jpg" border="0"/>国家防御战</a></li>
<li><a href="http://www.7k7k.com/flash/131056.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140421/141422_5168.jpg" border="0"/>骑士防御战</a></li>
<li><a href="http://www.7k7k.com/flash/130980.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140420/103703_1091.jpg" border="0"/>坦克征战无敌版</a></li>
<li><a href="http://www.7k7k.com/flash/130927.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140418/115321_6147.jpg" border="0"/>最后的一道防线</a></li>
<li><a href="http://www.7k7k.com/flash/130856.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140417/121638_2878.jpg" border="0"/>坦克征战</a></li>
<li><a href="http://www.y5y10.cn/swf/130816.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140416/170336_5069.jpg" border="0"/>愤怒的小鸟空战</a></li>
<li><a href="http://www.7k7k.com/flash/130809.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140416/165710_6264.jpg" border="0"/>暴走的僵尸</a></li>
<li><a href="http://www.7k7k.com/flash/130744.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140415/174559_8860.jpg" border="0"/>燃烧的蔬菜2电脑版</a></li>
<li><a href="http://www.7k7k.com/flash/130735.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140611/161535_9410.jpg" border="0"/>大炮和士兵</a></li>
<li><a href="http://www.7k7k.com/flash/130594.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140413/102452_4549.jpg" border="0"/>怪兽大混战</a></li>
<li><a href="http://www.7k7k.com/flash/130590.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140413/094518_1720.jpg" border="0"/>涂鸦空战2</a></li>
<li><a href="http://www.7k7k.com/flash/130547.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140411/174513_99387.jpg" border="0"/>狙击枪训练</a></li>
<li><a href="http://www.7k7k.com/flash/130380.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140410/112243_99687.jpg" border="0"/>城市狙击者</a></li>
<li><a href="http://www.7k7k.com/flash/130362.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140409/165310_4699.jpg" border="0"/>消灭变异猫</a></li>
<li><a href="http://www.7k7k.com/flash/130334.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140409/153021_25987.jpg" border="0"/>最终任务</a></li>
<li><a href="http://www.7k7k.com/flash/130284.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140409/090950_3653.jpg" border="0"/>快乐射手</a></li>
<li><a href="http://www.7k7k.com/flash/130269.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140408/160431_5537.jpg" border="0"/>二战空中力量</a></li>
<li><a href="http://www.7k7k.com/flash/130207.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140408/094854_3076.jpg" border="0"/>坦克激战</a></li>
<li><a href="http://www.7k7k.com/flash/130179.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140404/181605_1591.jpg" border="0"/>击毁入侵者</a></li>
<li><a href="http://www.y5y10.cn/swf/130174.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140417/150121_47697.jpg" border="0"/>愤怒小鸟保护家园</a></li>
<li><a href="http://www.7k7k.com/flash/130071.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140403/101550_20997.jpg" border="0"/>飞天小女警大战飞碟怪</a></li>
<li><a href="http://www.7k7k.com/flash/129998.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140402/134529_2695.jpg" border="0"/>黑暗博士</a></li>
<li><a href="http://www.7k7k.com/flash/129997.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140402/165814_96127.jpg" border="0"/>城市大战</a></li>
<li><a href="http://www.7k7k.com/flash/129832.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140401/120122_4318.jpg" border="0"/>最强海盗之战无敌版</a></li>
<li><a href="http://www.7k7k.com/flash/129830.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140401/130537_3512.jpg" border="0"/>防守与指挥</a></li>
<li><a href="http://www.7k7k.com/flash/129818.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140401/122423_7623.jpg" border="0"/>小鱼人出击</a></li>
<li><a href="http://www.7k7k.com/flash/129784.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140401/091457_8413.jpg" border="0"/>打飞帽子</a></li>
<li><a href="http://www.7k7k.com/flash/129725.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140330/141323_8367.jpg" border="0"/>地下之王</a></li>
<li><a href="http://www.7k7k.com/flash/129642.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140409/101824_7786.jpg" border="0"/>零重力飞行</a></li>
<li><a href="http://www.7k7k.com/flash/129635.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140327/181706_6038.jpg" border="0"/>最强海盗之战</a></li>
<li><a href="http://www.7k7k.com/flash/129493.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140325/105622_4875.jpg" border="0"/>传送门守卫战</a></li>
<li><a href="http://www.7k7k.com/flash/129446.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140323/135727_7189.jpg" border="0"/>小机独守阵地</a></li>
<li><a href="http://www.7k7k.com/flash/129260.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140317/163505_39447.jpg" border="0"/>全民飞机大战电脑版</a></li>
<li><a href="http://www.7k7k.com/flash/129250.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140317/142824_93487.jpg" border="0"/>小象采花3</a></li>
<li><a href="http://www.7k7k.com/flash/129028.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140312/110421_75137.jpg" border="0"/>极限空战</a></li>
<li><a href="http://www.7k7k.com/flash/128999.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140311/155857_5160.jpg" border="0"/>海绵宝宝深海作战</a></li>
<li><a href="http://www.7k7k.com/flash/128894.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140307/144428_4376.jpg" border="0"/>诺拉大战僵尸</a></li>
<li><a href="http://www.7k7k.com/flash/128796.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20161207/093257_5628.jpg" border="0"/>怪物进军</a></li>
<li><a href="http://www.7k7k.com/flash/128716.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140305/124151_7875.jpg" border="0"/>弓箭大师</a></li>
<li><a href="http://www.7k7k.com/flash/128631.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140304/112608_6858.jpg" border="0"/>消灭方块头僵尸</a></li>
<li><a href="http://www.7k7k.com/flash/128617.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140303/161305_59257.jpg" border="0"/>孤岛老头战恶狼</a></li>
<li><a href="http://www.7k7k.com/flash/128555.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140302/172220_2521.jpg" border="0"/>来自星星的复仇者</a></li>
<li><a href="http://www.7k7k.com/flash/128410.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140227/112952_6561.jpg" border="0"/>沙漠武装汽车</a></li>
<li><a href="http://www.7k7k.com/flash/128198.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140224/110812_6957.jpg" border="0"/>家园防御战</a></li>
<li><a href="http://www.7k7k.com/flash/128190.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140223/121241_88577.jpg" border="0"/>少年骇客打骷髅</a></li>
<li><a href="http://www.7k7k.com/flash/128169.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140222/102436_4456.jpg" border="0"/>街头警匪枪战3</a></li>
<li><a href="http://www.7k7k.com/flash/128167.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140222/111014_3286.jpg" border="0"/>黑手党街头枪战</a></li>
<li><a href="http://www.7k7k.com/flash/128073.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140226/185705_9228.jpg" border="0"/>僵尸猎杀者</a></li>
<li><a href="http://www.7k7k.com/flash/128045.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140219/171108_73987.jpg" border="0"/>饼干人大战幽灵</a></li>
<li><a href="http://www.7k7k.com/flash/127999.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140219/111024_99577.jpg" border="0"/>防御之眼2</a></li>
<li><a href="http://www.7k7k.com/flash/127902.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140218/143454_91117.jpg" border="0"/>左轮神枪手</a></li>
<li><a href="http://www.7k7k.com/flash/127788.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140217/104516_4139.jpg" border="0"/>保卫月球2</a></li>
<li><a href="http://www.7k7k.com/flash/127751.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140217/172006_1882.jpg" border="0"/>末日幸存者2</a></li>
<li><a href="http://www.7k7k.com/flash/127715.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140217/113649_7601.jpg" border="0"/>孤独的枪手</a></li>
<li><a href="http://www.7k7k.com/flash/127547.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140212/120120_5553.jpg" border="0"/>霍比特人2：急速漂流</a></li>
<li><a href="http://www.7k7k.com/flash/127522.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140211/190812_89707.jpg" border="0"/>复仇的机械战士</a></li>
<li><a href="http://www.7k7k.com/flash/127493.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140211/111146_3844.jpg" border="0"/>拯救海豚行动</a></li>
<li><a href="http://www.7k7k.com/flash/127418.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140210/121152_8976.jpg" border="0"/>挠挠小坦克</a></li>
<li><a href="http://www.7k7k.com/flash/127374.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140209/131733_11517.jpg" border="0"/>蛋蛋VS机器人</a></li>
<li><a href="http://www.7k7k.com/flash/127366.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140209/095222_3440.jpg" border="0"/>狼牙特种狙击队2</a></li>
<li><a href="http://www.7k7k.com/flash/127359.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140208/180936_4701.jpg" border="0"/>兔子神枪手</a></li>
<li><a href="http://www.7k7k.com/flash/127229.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140206/130820_42977.jpg" border="0"/>射杀魔化小黄人</a></li>
<li><a href="http://www.7k7k.com/flash/127193.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140204/115143_7730.jpg" border="0"/>特警狙击手</a></li>
<li><a href="http://www.7k7k.com/flash/127191.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140204/111842_75857.jpg" border="0"/>王子复仇战</a></li>
<li><a href="http://www.7k7k.com/flash/127184.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140202/135901_6035.jpg" border="0"/>M4a1合集版</a></li>
<li><a href="http://www.7k7k.com/flash/127086.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140124/155656_55687.jpg" border="0"/>小小守卫者</a></li>
<li><a href="http://www.7k7k.com/flash/126951.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140121/160614_64637.jpg" border="0"/>生化火线</a></li>
<li><a href="http://www.7k7k.com/flash/126865.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140120/160222_3569.jpg" border="0"/>铁血抗战老枪荡寇</a></li>
<li><a href="http://www.7k7k.com/flash/126841.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140120/125740_5449.jpg" border="0"/>大不列颠空战</a></li>
<li><a href="http://www.7k7k.com/flash/126748.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140118/115725_64727.jpg" border="0"/>击毙罪犯</a></li>
<li><a href="http://www.7k7k.com/flash/126745.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140118/122358_4892.jpg" border="0"/>超级死亡战车3</a></li>
<li><a href="http://www.y5y10.cn/swf/126707.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140117/115642_7928.jpg" border="0"/>马里奥坦克对决2</a></li>
<li><a href="http://www.7k7k.com/flash/126680.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140116/180604_7795.jpg" border="0"/>阻击海盗船</a></li>
<li><a href="http://www.7k7k.com/flash/126648.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140116/145332_8078.jpg" border="0"/>特种兵杀手</a></li>
<li><a href="http://www.7k7k.com/flash/126611.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140115/170223_2117.jpg" border="0"/>空中特战机</a></li>
<li><a href="http://www.7k7k.com/flash/126517.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140114/141621_45797.jpg" border="0"/>海绵宝宝纸上防御</a></li>
<li><a href="http://www.7k7k.com/flash/126392.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140111/165554_4290.jpg" border="0"/>英勇的哨兵骑士</a></li>
<li><a href="http://www.7k7k.com/flash/126361.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140110/164731_3621.jpg" border="0"/>英雄拯救人质</a></li>
<li><a href="http://www.7k7k.com/flash/126349.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140110/151443_48647.jpg" border="0"/>西部守护者</a></li>
<li><a href="http://www.7k7k.com/flash/126347.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140110/145536_5694.jpg" border="0"/>少年骇客突击手</a></li>
<li><a href="http://www.7k7k.com/flash/126339.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140110/164752_3020.jpg" border="0"/>机器人鲍比</a></li>
<li><a href="http://www.7k7k.com/flash/126230.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140108/175841_8602.jpg" border="0"/>飞龙历险记</a></li>
<li><a href="http://www.7k7k.com/flash/126180.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140108/102147_3994.jpg" border="0"/>全面开战</a></li>
<li><a href="http://www.7k7k.com/flash/126179.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140108/175310_3893.jpg" border="0"/>牛仔大叔战外星人</a></li>
<li><a href="http://www.7k7k.com/flash/126160.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140107/162229_1102.jpg" border="0"/>炮轰小怪防御战</a></li>
<li><a href="http://www.7k7k.com/flash/126107.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140106/173024_73327.jpg" border="0"/>未来精英战警</a></li>
<li><a href="http://www.7k7k.com/flash/126104.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140106/171403_9034.jpg" border="0"/>星际迷宫</a></li>
<li><a href="http://www.7k7k.com/flash/126101.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140106/163732_85417.jpg" border="0"/>蜈蚣战斗机</a></li>
<li><a href="http://www.7k7k.com/flash/126071.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140106/112710_4585.jpg" border="0"/>太空小飞侠2</a></li>
<li><a href="http://www.7k7k.com/flash/126059.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20140105/111054_5418.jpg" border="0"/>坚守要塞</a></li>
<li><a href="http://www.7k7k.com/flash/126031.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140104/144526_43547.jpg" border="0"/>重装特战队</a></li>
<li><a href="http://www.7k7k.com/flash/125988.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20140103/154714_4906.jpg" border="0"/>最后的枪</a></li>
<li><a href="http://www.7k7k.com/flash/125887.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140324/115424_6428.jpg" border="0"/>西部前线1914无敌版</a></li>
<li><a href="http://www.7k7k.com/flash/125833.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140101/114349_6448.jpg" border="0"/>射穿僵尸</a></li>
<li><a href="http://www.7k7k.com/flash/125806.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20131231/160203_74417.jpg" border="0"/>警察狙击手2</a></li>
<li><a href="http://www.7k7k.com/flash/125758.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20140113/124034_4067.jpg" border="0"/>西部前线1914</a></li>
<li><a href="http://www.7k7k.com/flash/125618.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20140331/180420_90987.jpg" border="0"/>愤怒小鸟战僵尸</a></li>
<li><a href="http://www.7k7k.com/flash/125564.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20131227/143839_8488.jpg" border="0"/>进攻武装汽车</a></li>
<li><a href="http://www.7k7k.com/flash/125188.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20131222/123436_30397.jpg" border="0"/>坐购物车灭僵尸</a></li>
<li><a href="http://www.7k7k.com/flash/125148.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20131221/104950_2252.jpg" border="0"/>街头警匪枪战2</a></li>
<li><a href="http://www.7k7k.com/flash/125127.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20131220/163446_57967.jpg" border="0"/>一箭毙命</a></li>
<li><a href="http://www.7k7k.com/flash/125105.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20131220/154857_4946.jpg" border="0"/>狙击手越狱2</a></li>
<li><a href="http://www.7k7k.com/flash/125079.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20131220/112324_1997.jpg" border="0"/>丛林大战僵尸</a></li>
<li><a href="http://www.7k7k.com/flash/125025.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20131219/151800_15097.jpg" border="0"/>CS气枪射击战4</a></li>
<li><a href="http://www.7k7k.com/flash/125000.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20131219/125450_4214.jpg" border="0"/>快枪手突击无敌版</a></li>
<li><a href="http://www.7k7k.com/flash/124961.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20131219/103719_9841.jpg" border="0"/>驯龙传奇</a></li>
<li><a href="http://www.7k7k.com/flash/124939.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20131218/171757_3696.jpg" border="0"/>破坏王终极任务</a></li>
<li><a href="http://www.7k7k.com/flash/124901.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20140103/150517_5407.jpg" border="0"/>狂暴武装车</a></li>
<li><a href="http://www.7k7k.com/flash/124897.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20131218/153802_1481.jpg" border="0"/>豌豆大战僵尸圣诞版</a></li>
<li><a href="http://www.7k7k.com/flash/124787.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20131216/190829_22587.jpg" border="0"/>快枪手突击2</a></li>
<li><a href="http://www.7k7k.com/flash/124757.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20131216/154257_6795.jpg" border="0"/>都市闪电侠无敌版</a></li>
<li><a href="http://www.7k7k.com/flash/124689.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20131216/103413_4016.jpg" border="0"/>重返太阳系</a></li>
<li><a href="http://www.7k7k.com/flash/124682.htm"><img src="loading.png" data-src="http://i1.7k7kimg.cn/cms/cms10/20131215/120527_4809.jpg" border="0"/>罗宾汉弓箭射苹果</a></li>
<li><a href="http://www.7k7k.com/flash/124612.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20131213/170531_3399.jpg" border="0"/>进击的罗宾逊</a></li>
<li><a href="http://www.7k7k.com/flash/124497.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20131212/151325_7516.jpg" border="0"/>潜艇秘密大作战</a></li>
<li><a href="http://www.7k7k.com/flash/124421.htm"><img src="loading.png" data-src="http://i4.7k7kimg.cn/cms/cms10/20131211/161402_17897.jpg" border="0"/>大叔杀僵尸</a></li>
<li><a href="http://www.7k7k.com/flash/124368.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20131211/102209_5844.jpg" border="0"/>街头警匪枪战</a></li>
<li><a href="http://www.7k7k.com/flash/124362.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20131211/095419_1844.jpg" border="0"/>致命摩托</a></li>
<li><a href="http://www.7k7k.com/flash/124311.htm"><img src="loading.png" data-src="http://i3.7k7kimg.cn/cms/cms10/20131210/154508_5728.jpg" border="0"/>猫猫守卫军无敌版</a></li>
<li><a href="http://www.7k7k.com/flash/124304.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20131210/142113_1415.jpg" border="0"/>机器人猎人无敌版</a></li>
<li><a href="http://www.7k7k.com/flash/124261.htm"><img src="loading.png" data-src="http://i2.7k7kimg.cn/cms/cms10/20131210/101712_7400.jpg" border="0"/>少年泰坦出击</a></li>
<li><a href="http://www.7k7k.com/flash/124251.htm"><img src="loading.png" data-src="http://i5.7k7kimg.cn/cms/cms10/20131209/191425_91097.jpg" border="0"/>战场大逃亡2</a></li>
					</ul>  
				</div>
				
			</div>	
			</div>
				 <div class="searchLsat">
				
			</div>	           
		<script>
function throttle (fn, delay, atleast) {
 var timeout = null,
  startTime = new Date();
 return function () {
 var curTime = new Date();
 clearTimeout(timeout);
 if (curTime - startTime >= atleast) {
  fn ();
  startTime = curTime;
 } else {
  timeout = setTimeout (fn, delay);
 }
 }
}
 
function lazyload() {
 var images = document.getElementsByTagName('img'),
 
  n = 0;  //存储图片加载到的位置，避免每次都从第一张图片开始遍历 
 return function() {
 var seeHeight = document.documentElement.clientHeight;
 var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
 for(var i = n; i < images.length; i++) {
  if(images[i].offsetTop < seeHeight + scrollTop) {
  if(images[i].getAttribute('src') === 'loading.png') {
   images[i].src = images[i].getAttribute('data-src');
  }
  n = n + 1;
  }
 }
 }
}
lazyload(); //初始化首页的页面图片
window.addEventListener('scroll', throttle(lazyload(), 500, 1000), false);
		</script>
	</body>
</html>
