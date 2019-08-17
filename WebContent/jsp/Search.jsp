<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
 <%@page import="java.util.ArrayList"%>
  <%@page import="com.game.Game"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>JQKA小游戏</title>
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
		<link type="text/css" rel="stylesheet" href="./css/reset.css" />
		<link type="text/css" rel="stylesheet" href="<%=basePath%>/css/Classify.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/Nav.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/Loadgame.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/Searchresult.css" />
		<link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="maindiv">
						<div class="head">
				<div class="search">
					<div style="height: 50px;width: 160px;float: left;">
						<img src="img/Gamelogo.png" height="50px" />
					</div>
			  <%
			   String gamename=(String)request.getAttribute("gamename");
			  %>
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
					<img src="img/home.png" style="margin-top: 5px;float: left;" />
					<a href="index.html">JQKA小游戏</a>
					<span style="float: left;padding-top: 8px;color: #808080;padding-left: 5px;">></span>
					<a href="">射击小游戏</a>
					<label style="float: left;padding-left: 650px;">
						<a href="">玩射击手游
							<b class="caret"></b>
						</a>
					</label>
					<!-- 加jsp代码 -->
				</div>
				<div id="tab" class="recommend">
					<input type="button"  class="leftbtn" onclick="left()" value="< " />
			
					<div id="firstPage" class="hide">
						<ul>
							<li><a href="http://ssjj.4399.com/"><img src="http://imga3.5054399.com/upload_pic/2016/10/27/4399_15454748568.jpg"
									 border="0" />生死狙击</a></li>
							<li><a href="http://www.4399.com/flash/12439.htm"><img src="http://imga5.5054399.com/upload_pic/2018/11/23/4399_17245602768.jpg"
									 border="0" />4399弹弹堂</a></li>
							<li><a href="http://news.4399.com/hxjy/"><img src="http://imga5.5054399.com/upload_pic/2018/7/4/4399_14381980675.jpg"
									 border="0" />4399火线精英</a></li>
							<li><a href="http://my.4399.com/yxsgs/"><img src="http://imga5.5054399.com/upload_pic/2018/7/12/4399_17174911727.jpg"
									 border="0" />4399三国杀</a></li>
							<li><a href="http://my.4399.com/yxhlw/"><img src="http://imga1.5054399.com/upload_pic/2018/10/26/4399_10541774431.jpg"
									 border="0" />4399葫芦娃</a></li>
							<li><a href="http://www.4399.com/flash/195356.htm"><img src="http://imga2.5054399.com/upload_pic/2018/2/13/4399_11101315283.jpg"
									 border="0" />4399绝世仙王</a></li>
							<li><a href="http://my.4399.com/yxhhw/"><img src="http://imga1.5054399.com/upload_pic/2018/7/18/4399_14124507003.jpg"
									 border="0" />4399航海王</a></li>
							<li><a href="http://news.4399.com/300/"><img src="http://imga3.5054399.com/upload_pic/2018/10/3/4399_10231516362.jpg"
									 border="0" />300英雄</a></li>
							<li><a href="http://news.4399.com/mnsj/"><img src="http://imga4.5054399.com/upload_pic/2018/11/21/4399_10220924812.jpg"
									 border="0" />4399迷你世界</a></li>
						</ul>
					</div>
			
					<div id="secondPage" class="show">
						<ul>
							<li><a href="http://news.4399.com/wmpy/"><img src="http://imga3.5054399.com/upload_pic/2018/11/5/4399_14395942378.jpg"
									 border="0" />4399完美漂移</a></li>
							<li><a href="http://my.4399.com/yxcqz/"><img src="http://imga1.5054399.com/upload_pic/2017/6/21/4399_15415471465.jpg"
									 border="0" />4399楚乔传</a></li>
							<li><a href="http://my.4399.com/yxdldl/"><img src="http://imga4.5054399.com/upload_pic/2018/8/27/4399_09552066990.jpg"
									 border="0" />4399斗罗大陆</a></li>
							<li><a href="http://my.4399.com/yxtjkd/"><img src="http://imga2.5054399.com/upload_pic/2018/4/18/4399_10033468870.jpg"
									 border="0" />4399天剑狂刀</a></li>
							<li><a href="http://news.4399.com/mcsd/"><img src="http://imga5.5054399.com/upload_pic/2018/10/9/4399_17051489583.jpg"
									 border="0" />4399萌宠时代</a></li>
							<li><a href="http://news.4399.com/ybgc/"><img src="http://imga3.5054399.com/upload_pic/2018/9/27/4399_17324410058.jpg"
									 border="0" />4399妖不怪城</a></li>
							<li><a href="http://www.4399.com/flash/130396.htm"><img src="http://imga2.5054399.com/upload_pic/2018/12/3/4399_16375593860.jpg"
									 border="0" />爆枪英雄</a></li>
							<li><a href="http://www.4399.com/flash/195353.htm"><img src="http://imga4.5054399.com/upload_pic/2018/9/3/4399_10242794986.jpg"
									 border="0" />机甲之王</a></li>
							<li><a href="http://www.4399.com/flash/182344.htm"><img src="http://imga5.5054399.com/upload_pic/2018/11/20/4399_09101618839.jpg"
									 border="0" />西游之超神</a></li>
						</ul>
			
					</div>
					<input type="button" style="margin-left: 2%;" class="leftbtn" onclick="left()" value=">" />
				</div>
		</div>
		<div class="searchCenter">
				<div class="ranking1">
				<span style="color: #E15304;font-weight: 700;font-size: 17px;">||</span>
				<a href="" style="color:black;font-weight: 700;font-size: 17px;"> 热门游戏排行</a>
				
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
				</ul>
			</div>
			<div class="gamediv">
			<%
			 ArrayList<Game> searchlist=(ArrayList)request.getAttribute("searchlist");
			 
			 int number=searchlist.size();
			 int num=0;
			 int spage=(Integer)request.getAttribute("page");
			 if(number>0){	
				 if(number%10==0)
					 num=number/10;
				 else
					 num=number/10+1;
				
				 for(int i=(spage-1)*10;i<=spage*10;i++){
					 if(i<number){
						 out.print(" <div class=\"gamemessage\">");
						 out.print("<a href=\" "+"LoadGamecontrol?gameid="+searchlist.get(i).getID()+"\" target=\"_blank\" >");
						 out.print(" <img src=\""+searchlist.get(i).getSpicture()+"\" />");
						 out.print("</a>");
						 out.print(" <div class=\"gamename\">");
						 out.print(" <a href=\" "+"LoadGamecontrol?gameid="+searchlist.get(i).getID()+"\" target=\"_blank\" >"+searchlist.get(i).getName()+"</a>");
						 out.print("</div>");
						 out.print(" <div class=\"gamesummary\">");
						 out.print("<p>"+searchlist.get(i).getText()+"</p>");
						 out.print(" </div>");
						 out.print(" <div class=\"gameclassify\">");
						 out.print(" <span >"+searchlist.get(i).getMessage()+"</span>");
						 out.print(" <span >专题： ");
						 if(searchlist.get(i).getClassify1()!=null||!"".equals(searchlist.get(i).getClassify1()))
							 out.print(searchlist.get(i).getClassify1());
						 if(searchlist.get(i).getClassify2()!=null||!"".equals(searchlist.get(i).getClassify2()))
							 out.print(searchlist.get(i).getClassify2());
						 if(searchlist.get(i).getClassify3()!=null||!"".equals(searchlist.get(i).getClassify3()))
							 out.print(searchlist.get(i).getClassify3());
						 if(searchlist.get(i).getClassify4()!=null||!"".equals(searchlist.get(i).getClassify4()))
							 out.print(searchlist.get(i).getClassify4());
						 out.print("</span> </div></div>");
						 if(i<num*10-1)
							 out.print("<hr />");
					 } 
			   }

			 }
			 
			%>
			<!--    <div class="gamemessage">
				   <a href="">
					   <img src="http://imga2.5054399.com/upload_pic/7272/8/77081.jpg" />
				   </a>
				   <div class="gamename">
					   <a href="">海贼王冒险岛V9.0</a>
				   </div>
				   <div class="gamesummary">
					   <p>海贼王冒险岛弗兰奇登场。蔚蓝的大海，美丽的沙滩，战斗还在进行着。冒险的过程会更加激烈，而胜利的快乐也是无法形容的。
					   这个版本里新增了弗兰奇这个角色，希望大家可以喜欢。 版本更新： 1.</p>
				   </div>
				   <div class="gameclassify">
					   <span >分类： 射击游戏 | 大小：5.68M | 日期：2018-11-15</span>
					   <span >专题： 僵尸 双人 吃东西 过关</span>
				   </div>
			   </div>
			   <hr /> -->
			   
	   	    </div>
			
		
			
		</div>
	    <div class="searchLsat">
	    	<ul class="pagination">
	         <li><a href="#">«</a></li>
	         <%
	         
	         if(num>0){

	        	  for(int i=1;i<=num;i++){
		        	  if(i==spage)
		        		  out.print(" <li><a class=\"active\" href=\""+"Searchcontrol?page="+i+"\">"+i+"</a></li>");
		        	  else
		        		  out.print(" <li><a href=\""+"Searchcontrol?page="+i+"\">"+i+"</a></li>");
		          }
	         }
	        
	         %>
	        <!--  <li><a class="active" href="#">1</a></li>
	         <li><a href="#">2</a></li>
	         <li><a href="#">3</a></li>
	         <li><a href="#">4</a></li>
	         <li><a href="#">5</a></li>
	         <li><a href="#">6</a></li>
	         <li><a href="#">7</a></li>
			 <li><a href="#">8</a></li>
			 <li><a href="#">9</a></li>
			 <li><a href="Searchcontrol?page=110">10</a></li> -->
	         <li><a href="#">»</a></li>
	        </ul>
	    </div>	           
		
				<script type="text/javascript">
			// JS实现选项卡切换
			window.onload = function() {
				var myTab = document.getElementById("tab"); //整个div
				var myUl = myTab.getElementsByTagName("ul")[0]; //一个节点
				var myLi = myUl.getElementsByTagName("li"); //数组
				var myDiv = myTab.getElementsByTagName("div"); //数组
		
				for (var i = 0; i < myLi.length; i++) {
					myLi[i].index = i;
					myLi[i].onclick = function() {
						for (var j = 0; j < myLi.length; j++) {
							myLi[j].className = "off";
							myDiv[j].className = "hide";
						}
						this.className = "on";
						myDiv[this.index].className = "show";
					}
				}
			}
		
			function left() {
		
				var myTab = document.getElementById("tab");
				var myDiv = myTab.getElementsByTagName("div"); //数组
		
				if (myDiv[0].className == "hide") {
					myDiv[0].className = "show";
					myDiv[1].className = "hide";
		
				} else {
		
					myDiv[1].className = "show";
					myDiv[0].className = "hide";
				}
			}
		</script>
	</body>
</html>
