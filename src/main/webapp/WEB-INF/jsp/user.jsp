<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="${APP_PATH}/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="${APP_PATH}/css/font-awesome.min.css">
		<link rel="stylesheet" href="${APP_PATH}/css/main.css">
		<style>
			.tree li {
				list-style-type: none;
				cursor: pointer;
			}
			
			table tbody tr:nth-child(odd) {
				background: #F4F4F4;
			}
			
			table tbody td:nth-child(even) {
				color: #C00;
			}
		</style>
	</head>

	<body>

		<div class="navbar-wrapper">
			<div class="container">
				<jsp:include page="/WEB-INF/jsp/common/nav.jsp"></jsp:include>
			</div>
		</div>

		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-3 col-md-2 sidebar">
					<div class="tree">
						<jsp:include page="/WEB-INF/jsp/common/menu.jsp"></jsp:include>
					</div>
				</div>
				<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
					<div class="panel panel-default">
						<div class="panel-heading">个人信息
							<div style="float:right;cursor:pointer;" data-toggle="modal" data-target="#myModal"><i class="glyphicon glyphicon-question-sign"></i></div>
						</div>
						<div class="panel-body">
							<form action="${APP_PATH}/user/change.do" method="post" id="userChange" enctype="multipart/form-data" >
								<div class="form-group">
									<label for="exampleInputPassword1">头像：</label><br />
									<img src="avatar/${user.avatar}" class="img-thumbnail" style=" height: 140px; width: 140px;">
									<input type="file" id="fimg" name="img" >
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">性别：</label><br />
									<select  class="form-control" id="fgender" name="gender">
										<c:if test="${user.gender==1}">
											<option value="1" selected>男</option>
											<option value="2">女</option>
										</c:if>
										<c:if test="${user.gender==2}">
											<option value="1" >男</option>
											<option value="2" selected>女</option>
										</c:if>
									</select>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">用户名：</label>
									<input type="text" class="form-control" id="fusername" name="username" value="${user.username}">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">手机号码：</label>
									<input type="text" class="form-control" id="ftel" name="tel" value="${user.tel}">
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">邮箱地址：</label>
									<input type="email" class="form-control" id="femail" name="email" value="${user.email}">
									<p class="help-block label label-warning">请输入合法的邮箱地址, 格式为： xxxx@xxxx.com</p>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">新密码：</label>
									<input type="password" class="form-control" id="fpassword" name="password">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">确认密码：</label>
									<input type="password" class="form-control" id="fconfirmPassword" name="confirmPassword" >
								</div>
								<button type="button" class="btn btn-success" onclick="doChange()" ><i class="glyphicon glyphicon-edit"></i> 修改</button>
								<a href="${APP_PATH}/user.htm" class="btn btn-danger"><i class="glyphicon glyphicon-refresh"></i> 重置</a>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script src="${APP_PATH}/jquery/jquery-2.1.1.min.js"></script>
		<script src="${APP_PATH}/bootstrap/js/bootstrap.min.js"></script>
		<script src="${APP_PATH}/script/docs.min.js"></script>
		<script src="${APP_PATH}/jquery/layer/layer.js"></script>
		<script src="${APP_PATH }/script/menu.js"></script>
		<script type="text/javascript">
			$(function() {
				$(".list-group-item").click(function() {
					if($(this).find("ul")) {
						$(this).toggleClass("tree-closed");
						if($(this).hasClass("tree-closed")) {
							$("ul", this).hide("fast");
						} else {
							$("ul", this).show("fast");
						}
					}
				});
				showMenu();
			});
		</script>
		<script >
			$("#fimg").change(function(){
				var fimg=$("#fimg");
				//用户名正则，4到16位（字母，数字，下划线，减号）
				//var uPattern = /^[a-zA-Z0-9_-]{4,16}$/;
				var uPattern = /^.+(.png|.PNG|.JPG|.jpg)$/;
				if(!uPattern.test(fimg.val())){
					layer.msg("请选择.jpg或.png结尾的文件！", {time:1000, icon:5, shift:6});
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
					layer.msg("密码规则：必须包含大小写字母和数字的组合，不能使用特殊字符，长度在6-16之间", {time:4000, icon:5, shift:6});
				}
			});
			function doChange(){
				var fimg= $("#fimg");
				var fgender= $("#fgender");
				var fusername= $("#fusername");
				var ftel= $("#ftel");
				var femail= $("#femail");
				var fpassword= $("#fpassword");
				var fconfirmPassword= $("#fconfirmPassword");
				
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
					layer.msg("两次密码输入不一致！", {time:1000, icon:5, shift:6} );
					return false;
				}
				
				var formData = new FormData();  //创建一个forData 
				
				
				if(fimg.val()!=""){
					formData.append('img', $('#fimg')[0].files[0]); //添加图片信息的参数
				}
				
				if(fpassword.val()!=""){
					formData.append('password', fpassword.val());
				}
				
				formData.append('username', fusername.val());
				formData.append('email', femail.val());
				formData.append('tel', ftel.val());
				formData.append('gender', fgender.val());
				
				$.ajax({
					type : "POST",
					url : "${APP_PATH}/user/doChange.do",
					cache: false, //上传文件不需要缓存
				    data: formData,
				    processData: false, // 告诉jQuery不要去处理发送的数据
				    contentType: false, // 告诉jQuery不要去设置Content-Type请求头
					success : function(result){
						if(result.success){
							window.location.href="${APP_PATH}/login.htm";
						}else{
							layer.msg("修改失败！"+result.message, {time:1000, icon:5, shift:6});
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