<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
		<script src="<%=basePath%>/js/login2.js"></script>
		<script src="<%=basePath%>/js/time.js"></script>
		<script src="<%=basePath%>/js/delayedloading.js"></script>
		<link type="text/css" rel="stylesheet" href="<%=basePath%>/css/reset.css" />
		<link type="text/css" rel="stylesheet" href="<%=basePath%>/css/Classify.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/Nav.css" />
		<link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	</head>
<script type="text/javascript">

	//1. 创建对象
	function  ajaxFunction(){
	   var xmlHttp;
	   try{ // Firefox, Opera 8.0+, Safari
	        xmlHttp=new XMLHttpRequest();
	    }
	    catch (e){
		   try{// Internet Explorer
		         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
		      }
		    catch (e){
		      try{
		         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		      }
		      catch (e){}
		      }
	    }
	
		return xmlHttp;
	 }

	function checkUserName() {
		
		//获取输入框的值 document 整个网页
		var uname = document.getElementById("uname").value; // value  value() val val()
		var upwd  = document.getElementById("upwd").value;
		//1. 创建对象
		var request = ajaxFunction();
		
		//2. 发送请求
		request.open("POST"  ,"Logincontrol" , true );
		
		//注册状态改变监听，获取服务器传送过来的数据
		request.onreadystatechange = function(){
			
			if(request.readyState == 4 && request.status == 200){
				//alert(request.responseText);
				var data = request.responseText;
				if(data == 1){
					alert("用户名已存在");
					//document.getElementById("span01").innerHTML = "<font color='red'>用户名已存在!</font>";
				}else{
					document.getElementById("span01").innerHTML = "<font color='green'>用户名可用!</font>";
					//alert("用户名未存在");
				}
			}
			
		}
		
		request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		request.send("uname="+uname+"&upwd"+upwd);
	}
	
</script>
	<body>
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
							<form action="Logincontrol" method="get">
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
									<a id="leftE" href="/jsp/main.jsp">首页</a>
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
					<span style="float: left;padding-top: 8px;color: #808080;padding-left: 5px;">></span>
					<a href="">射击小游戏</a>
					<label style="float: left;padding-left: 650px;">
						<a href="">玩射击手游
							<b class="caret"></b>
						</a>
					</label>

				</div>
			</div>

			<div class="center">
				<div class="caroul">
					<div class="areaname">
						<span style="color: #E15304;font-weight: 700;font-size: 17px;">||</span>
						<a href="" style="color:black;font-weight: 700;font-size: 17px;"> 特别推荐</a>
					</div>

					<div id="myCarousel" class="carousel slide picture">
						<!-- 轮播（Carousel）指标 -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>

						</ol>
						<!-- 轮播（Carousel）项目 -->
						<div class="carousel-inner">
							<div class="item active">
								<img src="http://imga.5054399.com/upload_pic/2018/11/23/4399_11391954024.jpg" alt="First slide">
							</div>
							<div class="item">
								<img src="http://imga4.5054399.com/upload_pic/2018/11/23/4399_11380670263.jpg" alt="Second slide">
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
				</div>

				<div class="supgame">
					<div class="areaname" style="margin-left: 30px;">
						<span style="color: #E15304;font-weight: 700;font-size: 17px;">||</span>
						<a href="" style="color:black;font-weight: 700;font-size: 17px;"> 精品游戏</a>
						<div id="divT" style="float: right;margin-right: 10px;"></div>
					</div>

					<ul>
						<li>
							<a href="Gamecontrol">
								<img src="http://imga3.5054399.com/upload_pic/2018/3/5/4399_14485859087.jpg" width="130px" />
								AK47闯天下
							</a>
						</li>
						<li>
							<a href="http://www.4399.com/flash/145013.htm">
								<img src="http://imga1.5054399.com/upload_pic/2016/5/28/4399_14154382834.jpg" width="130px" />
								战火英雄3加强无敌版
							</a>
						</li>
						<li>
							<a href="http://www.4399.com/flash/145013.htm">
								<img src="http://imga2.5054399.com/upload_pic/2018/9/12/4399_15251208589.jpg" width="130px" />
								绝地求生坦克版2
							</a>
						</li>
						<li>
							<a href="http://www.4399.com/flash/145013.htm">
								<img src="http://imga3.5054399.com/upload_pic/2017/2/9/4399_15520325652.jpg" width="130px" />
								4399生死狙击
							</a>
						</li>
						<li>
							<a href="http://www.4399.com/flash/145013.htm">
								<img src="http://imga1.5054399.com/upload_pic/2018/5/16/4399_15020825553.jpg" width="130px" />
								奥义联盟
							</a>
						</li>
						<li>
							<a href="http://www.4399.com/flash/145013.htm">
								<img src="http://imga3.5054399.com/upload_pic/2018/5/21/4399_17053119770.jpg" width="130px" />
								3D坦克
							</a>
						</li>
						<li>
							<a href="http://www.4399.com/flash/145013.htm">
								<img src="http://imga.5054399.com/upload_pic/2017/2/9/4399_15515360961.jpg" width="130px" />
								4399火线精英
							</a>
						</li>
						<li>
							<a href="http://www.4399.com/flash/145013.htm">
								<img src="http://imga1.5054399.com/upload_pic/2018/10/8/4399_16041587520.jpg" width="130px" />
								4399枪战英雄
							</a>
						</li>
					</ul>
				</div>

				<div class="firegame">
					<div class="areaname">
						<span style="color: #E15304;font-weight: 700;font-size: 17px;">||</span>
						<a href="" style="color:black;font-weight: 700;font-size: 17px;"> 近期热门游戏</a>
					</div>
					<hr style="color: #808080;width: 90%;margin-top: 1px;" />
					<ul>
					<%
					ArrayList<Game> firelist=(ArrayList)request.getAttribute("firelist");
					for(int i=10;i<31;i++){
						int len=firelist.get(i).getName().length();
						String strm="";
						if(len>6){
						 strm = firelist.get(i).getName().substring(0,6);
						}else
							strm=firelist.get(i).getName();
						
						out.print("<li><a href=\""+"LoadGamecontrol?gameid="+firelist.get(i).getID()+"\" target=\"_blank\" ><img src=\""+firelist.get(i).getSpicture()+"\">"+strm+"</a></li>");
					}
					%>

					</ul>

				</div>
				<div class="seminar">
					<div class="areaname" style="margin-left: 10px;">
						<span style="color: #E15304;font-weight: 700;font-size: 17px;">||</span>
						<a href="" style="color:black;font-weight: 700;font-size: 17px;"> 热门射击专题</a>
					</div>
					<hr style="width: 80%;color: #808080;margin-top: 1px;" />
					<ul>
						<li>
							<a href="http://4399.com/special/238.htm">
								<img src="http://imga4.5054399.com/upload_pic/2017/6/12/4399_09405121521.jpg" />
								穿越防线
							</a>
						</li>
						<li>
							<a href="http://4399.com/special/238.htm">
								<img src="http://imga1.5054399.com/upload_pic/2016/5/25/4399_19150299651.jpg" />
								狙击手
							</a>
						</li>
						<li>
							<a href="http://4399.com/special/238.htm">
								<img src="http://imga3.5054399.com/upload_pic/2017/2/8/4399_11444575347.jpg" />
								坦克射击
							</a>
						</li>
						<li>
							<a href="http://4399.com/special/238.htm">
								<img src="http://imga5.5054399.com/upload_pic/2016/5/25/4399_19270682400.jpg" />
								战斗机
							</a>
						</li>
						<li>
							<a href="http://4399.com/special/238.htm">
								<img src="http://imga.5054399.com/upload_pic/2016/5/25/4399_19190161298.jpg" />
								反恐精英
							</a>
						</li>
						<li>
							<a href="http://4399.com/special/238.htm">
								<img src="http://imga1.5054399.com/upload_pic/2016/5/25/4399_19241663619.jpg" />
								持枪&特警
							</a>
						</li>
					</ul>
				</div>

				<div class="shortgame">
					<div class="areaname" style="margin-left: 10px;">
						<span style="color: #E15304;font-weight: 700;font-size: 17px;">||</span>
						<a href="" style="color:black;font-weight: 700;font-size: 17px;"> 射击游戏大全</a>
					</div>
					<hr style="width: 90%;color: #808080;margin-top: 1px;" />
					                                                                         
					<ul>
					<%
					 ArrayList<Game> list=(ArrayList)request.getAttribute("gamelist");
					 int number=(Integer)request.getAttribute("number");
				      for(int i=(number-1)*140;i<=number*140-1;i++){  	  
				    	  out.print("<li><a href=\""+"LoadGamecontrol?gameid="+list.get(i).getID()+"\" target=\"_blank\" ><img src=\""+list.get(i).getSpicture()+"\" />"+list.get(i).getName()+"</a></li>");
				      }
					 
					%>
                
					</ul>
				</div>
                
				<div class="ranking1">
					<span style="color: #E15304;font-weight: 700;font-size: 17px;">||</span>
					<a href="" style="color:black;font-weight: 700;font-size: 17px;"> 游戏排行</a>
					<div id="divT" style="float: right;margin-right: 10px;"></div>
					<ul>
					<%
					  String type=(String)request.getAttribute("gametype");
					ArrayList<Game> rankinglist=(ArrayList)request.getAttribute("rankinglist");
					 for(int i=0;i<10;i++){
						 if(i<4)
						 out.print("<li><span class=\"rankingspan rankingcolor"+(i+1)+"\">"+(i+1)+"</span>");
						 else
							 out.print("<li><span class=\"rankingspan rankingcolor4\">"+(i+1)+"</span>");
						 out.print("<a style=\"display: block;margin-left: 0px;width: 80px;float: left;\" href=\""+"LoadGamecontrol?gameid="+rankinglist.get(i).getID()+"\" target=\"_blank\" >");
						 out.print("<img src=\""+rankinglist.get(i).getSpicture()+"\" border=\"0\"/>");
						 out.print("</a><a style=\"display: block;margin-top: 0px;width: 120px;float: left;\" "+"LoadGamecontrol?gameid="+rankinglist.get(i).getID()+"\" target=\"_blank\" >"+rankinglist.get(i).getName()+"</a>");
					     out.print("<span class=\"frametext\"><a href=\"\">开始游戏</a></span></li>");
					     if(i<10)
					    	 out.print("<hr style=\"margin:3px;width: 100%;margin-left: -10px;\"/>");
						 
					 }
					%>
					<!-- 	<li>
							<span class="rankingspan rankingcolor1">1</span>
							<a style="display: block;margin-left: 0px;width: 80px;float: left;" href="http://www.y5y10.cn/swf/111535.htm">
								<img src="http://i5.7k7kimg.cn/cms/cms11/5/9/111535_3970.jpg" border="0"/>
							</a>
							<a style="display: block;margin-top: 0px;width: 120px;float: left;" href="http://www.y5y10.cn/swf/111535.htm">马里奥歼灭小怪物</a>
							<span class="frametext"><a href="">开始游戏</a></span>
						</li>
						<hr style="margin:3px;width: 100%;margin-left: -10px;"/> -->
						
					</ul>
				</div>
			
			</div>
				 <div class="searchLsat">
				<ul class="pagination">
			    <%
			    int n=(Integer)request.getAttribute("num");
			    
			    out.print("<li><a href=\"gameController?kinds="+type+"&num="+(number-1)+"\">«</a></li>");
			   
			     for(int i=1;i<=n;i++){
			    	 if(number==i)
			    	 out.print("<li><a  class=\"active\"  href=\"gameController?kinds="+type+"&num="+i+"\">"+i+"</a></li>");
			    	 else
			    		 out.print("<li><a href=\"gameController?kinds="+type+"&num="+i+"\">"+i+"</a></li>"); 
			     }
			     out.print("<li><a href=\"gameController?kinds="+type+"&num="+(number+1)+"\">»</a></li>");
			     %>

			    </ul>
			</div>	           
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
