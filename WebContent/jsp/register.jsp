<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>JQKA游戏网</title>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"
            +request.getServerName()+":"
            +request.getServerPort()+path+"/";
       %>
<style type="text/css">
		input:focus{
                    border-color: #66afe9;
                    outline: 0;
                    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
                    box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
            }
		.peripheral{
			width: 1500px;
			height: 100%;
			margin: 0 auto;
			padding: 0px;
		
		}
		.head{
			width:1200px;
			height: 200px;
			margin-left: 140px;
		}
		.center{
			width: 900px;
			height: 450px;
			margin-left: 300px;
			
		}
		.last{
			width: 1200px;
			height: 200px;
		margin-left: 140px;
		margin-top: -40px;
		}
		#font1{
			font-size: xx-large;
			font-style: inherit;
			position: absolute;
			margin-left: 200px;
			margin-top: 130px;
		}
		.input1{
			width: 250px;
			height: 30px;
			font-size: 12px;
			margin-top: 10px;
			color: darkgray;
			border-radius: 5px;
			text-indent: 0.5em;
			border:1px solid gray;
			
		}
		 .thin-black-border {  
			 height: 20px;
			 width: 60px;
			 display: inline-block;
             border-color: #A9A9A9;    
             border-width: 2px;    
             border-style: solid;    
        }    
		a{
			text-decoration: none;
			color: #A9A9A9;
		}
		a.one:link {color: #A9A9A9;}    /* 未访问链接 */
        a.one:visited {background-color:#FFFF85;} /* 已访问链接 */
        a.one:hover {color: darkturquoise;}   /* 鼠标移动到链接上 */
        a.one:active {color:red}  /* 鼠标点击时 */
		input::-moz-placeholder, textarea::-moz-placeholder {
　　  color:#666;
     font-size: 12px;
　　}
		ul{
			list-style: none;
			margin-left: 200px;
		}
		label.one{
			width: 80px;
			height: 40px;
			display: inline-block;
		}
	</style>
		<script>
			
		var z=0;
        var sz=['+','-','x'];
		function  yanzheng() {
             var a1=Math.floor(Math.random()*9+1);
             var b1=Math.floor(Math.random()*3);
             var c1=Math.floor(Math.random()*9+1);
              switch(b1)
               {
                 case 0:
                 z=a1+c1;
                  break;
                  case 1:
                 z=a1-c1;
                 break;
                 case 2:
                 z=a1*c1;
                 break;
               }
           document.getElementById("yanzheng").innerHTML=a1+sz[b1]+c1+'='+'?';
		   
        }
		
		function jeduge(){
			
			if(document.getElementById("inputid1").value!=z)
			{
				document.getElementById("dejuge1").innerHTML="*验证码错误";
				return false;
			}
			document.getElementById("dejuge1").innerHTML="";
			return true;
		}
		
		function userjeduge(){
		var a=document.form1.user1;
			if(	a.value==""){
				document.getElementById("user-hint").innerHTML="*请填写用户名";
				return false;
			}
			document.getElementById("user-hint").innerHTML="";
			return true;
		}
		
		function passwordjeduge(){
			var b=document.form1.password;
			if(b.value==""){
				document.getElementById("password1-hint").innerHTML="*请输入密码";
				return false;
			}
			document.getElementById("password1-hint").innerHTML="";
			return true;
		}
		
		function password2jeduge(){
			var p1=document.form1.password;
			var p2=document.form1.password2;
			document.getElementById("ceshi").innerHTML=p1+" "+p2;
			if(p1.value!=p2.value){
			document.getElementById("password2-hint").innerHTML="*请确保两次密码一致";
			return false;
			}
			document.getElementById("password2-hint").innerHTML="";
				return true;
			
		}
		
		function phonejeduge(){
			
		var c="^\d{15}$|^\d{18}$|^\d{17}[xX]$";
             
			 var s=document.form1.phone1.value;
          if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(s))){
		   document.getElementById("phone-hint").innerHTML="*电话号码格式错误";
		    return false; 
           }
          document.getElementById("phone-hint").innerHTML="";
         return true;
           
		}
		
		function subdejuge(){
			if(phonejeduge()!=true)
			return false;
			else if(userjeduge()!=true)
			return false;
			else if(passwordjeduge()!=true)
			return false;
			else if(password2jeduge()!=true)
			return false;
			else if(jeduge()!=true)
			return false;
			else{
				
				return true;
			}
			
		}
		
</script>
</head>
<body>
<div class="peripheral">
		<div class="head">
		 <img src="<%=basePath%>/img/Gamelogo.png" style="height: 90px;width: 250px;margin: 30px;">
		<span id="font1">用户注册</span>
		<hr style="margin-top:30px ;color: #cccccc;"/>
		</div>
		<div class="center">
			<form action="Usercontrol" name="form1" method="get" onsubmit="return subdejuge()">
				<ul>
					<li><label class="one">电话号码</label><input  type="text" name="phone"  class="input1" placeholder="请输入11位电话号码" value="18230515689">
					<span id="phone-hint"></span>
					</li>
					<li><label class="one">用&nbsp; 户&nbsp;名&nbsp;</label><input type="text" name="name"  class="input1"   placeholder="请输入用户名" value="老王">
					<span id="user-hint"></span>
					</li>
					<li><label class="one">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;&nbsp;</label><input type="text" name="password"  class="input1" placeholder="请输入密码" value="123456">
					<span id="password1-hint"></span></li>
					<li><label class="one">确认密码</label><input type="text" name="password2"  class="input1"  placeholder="请再次输入密码" value="123456">
					<span id="password2-hint"></span></li>
					<li>
						<label class="one">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</label> 
						<label class="one">男<input type="radio" name="Sex" checked> </label>
						<label class="one">女<input type="radio" name="Sex"/></label>
					</li>
					<li>
						<label class="one">验&nbsp; 证&nbsp;码&nbsp;</label>
						<input type="text" id="inputid1" style="width: 80px;height: 30px;" placeholder="输入验证码">
						<label id="yanzheng" class="thin-black-border" >验证码</label>
						<input type="button" onclick="yanzheng()" style="height: 25px;background-color: #ff4001;color: white;border: 0;" value="获取验证码" >
						<span id="dejuge1"></span>
					</li>
					<li><input type="checkbox" checked><span>已阅读并同意《</span><a href="index.html" class="one">注册条款</a><span>》</span><span id="ceshi"></span></li>
					<li>
						<input type="submit" value="提&nbsp&nbsp&nbsp交"
						style="background-color: #95d195;width: 80px;height: 40px;font-size: 15px;border: 0;border-radius: 5px;color: white;margin-left: 150px;margin-top: 20px;">
					</li>
					
				</ul>
			</form>
		</div>
	
		<div class="last">
			<hr style="margin-top:30px ;color: #cccccc;"/>
			<p style="color: #A9A9A9;">此界面为JQKA小游戏用户注册网站，自制网站logo</p>
		</div>
	</div>
</body>
</html>