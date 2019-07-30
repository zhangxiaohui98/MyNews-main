<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="${APP_PATH}/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="${APP_PATH}/css/font-awesome.min.css">
		<link rel="stylesheet" href="${APP_PATH}/css/login.css">
		<style>
		</style>
	</head>

	<body>
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<div>
						<a class="navbar-brand" href="index.html" style="font-size:32px;">MyNews</a>
					</div>
				</div>
			</div>
		</nav>

		<div class="container" style=" margin-top:60px ;">

			<form id="loginForm" action="${APP_PATH}/user/doLogin.do" method="post" class="form-signin" role="form">
				<h2 class="form-signin-heading"><i class="glyphicon glyphicon-log-in"></i> 用户登录</h2>
				<div class="form-group has-success has-feedback">
					<input type="text" class="form-control" id="fusername" name="username" placeholder="请输入账号" value="张三" autofocus>
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-success has-feedback">
					<input type="password" class="form-control" id="fpassword" name="password" placeholder="请输入密码" value="123" style="margin-top:10px;">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="checkbox">
					<label>
            <input type="checkbox" value="remember-me"> 记住我
          </label>
					<label style="float:right">
            <a href="reg.htm">我要注册</a>
          </label>
				</div>
				<a class="btn btn-lg btn-success btn-block" onclick="dologin()"> 登录</a>
			</form>
		</div>
		<script src="${APP_PATH}/jquery/jquery-2.1.1.min.js"></script>
		<script src="${APP_PATH}/bootstrap/js/bootstrap.min.js"></script>
		<script src="${APP_PATH}//jquery/layer/layer.js"></script>
		<script>
			function dologin() {
				var fusername= $("#fusername");
				var fpassword= $("#fpassword");
				
				if($.trim(fusername.val())==""){
					layer.msg("用户名不能为空！", {time:1000, icon:5, shift:6}, function(){
						fusername.val("");
						fusername.focus();
					});
					return false;
				}
				
				$.ajax({
					type : "POST",
					data : {
						"username" : fusername.val(),
						"password" : fpassword.val()
					},
					url : "${APP_PATH}/user/doLogin.do",
					beforeSend : function(){
						//表单校验
						return true;
					},
					success : function(result){
						if(result.success){
							window.location.href="${APP_PATH}/user.htm";
						}else{
							layer.msg("登录失败！"+result.message, {time:1000, icon:5, shift:6});
						}
					},
					error : function(){
						layer.msg("error", {time:1000, icon:5, shift:6});
					}
				});
			}
		</script>
	</body>

</html>