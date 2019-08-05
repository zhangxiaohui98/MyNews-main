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

		<div class="container">
			<form class="form-signin" role="form">
				<h2 class="form-signin-heading"><i class="glyphicon glyphicon-log-in"></i> 用户注册</h2>
				<div class="form-group has-success has-feedback">
					<input type="text" class="form-control" id="fusername" name="username" value="测试用户1" placeholder="请输入用户名" autofocus>
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-success has-feedback">
					<input type="text" class="form-control" id="femail" name="email" value="1305403965@qq.com" placeholder="邮箱地址" style="margin-top:10px;">
					<span class="glyphicon glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-success has-feedback">
					<input type="text" class="form-control" id="ftel" name="tel" value="13726383533" placeholder="手机号码" style="margin-top:10px;">
					<span class="glyphicon glyphicon-earphone form-control-feedback"></span>
				</div>
				<div class="form-group has-success has-feedback">
					<select id="fgender" class="form-control" name="gender">
						<option value="1" selected>男</option>
						<option value="2">女</option>
					</select>
				</div>
				<div class="form-group has-success has-feedback">
					<input type="password" class="form-control" id="fpassword" name="password" value="Cqmyg.14dss" placeholder="登录密码" style="margin-top:10px;">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="form-group has-success has-feedback">
					<input type="password" class="form-control" id="fconfirmPassword" name="confirmPassword" value="Cqmyg.14dss" placeholder="确认密码" style="margin-top:10px;">
					<span class="glyphicon glyphicon-sunglasses form-control-feedback"></span>
				</div>

				<div class="checkbox">
					<label>
          			</label>
					<label style="float:right">
		            	<a href="login.htm">我有账号</a>
		          	</label>
				</div>
				<a class="btn btn-lg btn-success btn-block" onclick="doReg()"> 注册</a>
			</form>
		</div>
		<script src="${APP_PATH}/jquery/jquery-2.1.1.min.js"></script>
		<script src="${APP_PATH}/bootstrap/js/bootstrap.min.js"></script>
		<script src="${APP_PATH}//jquery/layer/layer.js"></script>
		<script >
						
			$("#fusername").blur(function(){
				var fusername=$("#fusername");
				//用户名正则，4到16位（字母，数字，下划线，减号）
				//var uPattern = /^[a-zA-Z0-9_-]{4,16}$/;
				var uPattern = /^[\u4e00-\u9fff\wa-zA-Z0-9_-]{4,16}$/;
				if(!uPattern.test(fusername.val())){
					layer.msg("用户名规则：4到16位（中文，字母，数字，下划线，减号）", {time:3000, icon:5, shift:6});
				}
			});
			$("#femail").blur(function(){
				var femail=$("#femail");
				//用户名正则，4到16位（字母，数字，下划线，减号）
				var uPattern = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
				if(!uPattern.test(femail.val())){
					layer.msg("请输入正确的邮箱地址！", {time:1000, icon:5, shift:6});
				}
			});
			$("#ftel").blur(function(){
				var ftel=$("#ftel");
				//用户名正则，4到16位（字母，数字，下划线，减号）
				var uPattern = /^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\d{8}$/;
				if(!uPattern.test(ftel.val())){
					layer.msg("请输入正确的手机号码！", {time:1000, icon:5, shift:6});
				}
			});
			$("#fpassword").blur(function(){
				var fpassword=$("#fpassword");
				//最少6位，包括至少1个大写字母，1个小写字母，1个数字，1个特殊字符
				var uPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,16}$/;
				if(!uPattern.test(fpassword.val())){
					layer.msg("密码规则：必须包含大小写字母和数字的组合，不能使用特殊字符，长度在6-16之间", {time:3000, icon:5, shift:6});
				}
			});
			
			function doReg(){
				var fusername=$("#fusername");
				var femail=$("#femail");
				var ftel=$("#ftel");
				var fgender=$("#fgender");
				var fpassword=$("#fpassword");
				var fconfirmPassword=$("#fconfirmPassword");
				
				if($.trim(fusername.val())==""){
					layer.msg("用户名不能为空！", {time:1000, icon:5, shift:6},function(){
						fusername.val("");
						fusername.focus();
					});
					return false;
				}else if($.trim(femail.val())==""){
					layer.msg("邮箱不能为空！", {time:1000, icon:5, shift:6},function(){
						femail.val("");
						femail.focus();
					});
					return false;
				}else if($.trim(ftel.val())==""){
					layer.msg("手机号码不能为空！", {time:1000, icon:5, shift:6},function(){
						ftel.val("");
						ftel.focus();
					});
					return false;
				}else if(fpassword.val()!=fconfirmPassword.val()){
					layer.msg("两次密码输入不一致！", {time:1000, icon:5, shift:6});
					return false;
				}
				
				$.ajax({
					type : "POST",
					data : {
						"username" : fusername.val(),
						"email" : femail.val(),
						"tel" : ftel.val(),
						"gender" : fgender.val(),
						"password" : fpassword.val()
					},
					url : "${APP_PATH}/user/doReg.do",
					success : function(result){
						if(result.success){
							window.location.href="${APP_PATH}/login.htm";
						}else{
							layer.msg("注册失败！"+result.message, {time:1000, icon:5, shift:6});
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