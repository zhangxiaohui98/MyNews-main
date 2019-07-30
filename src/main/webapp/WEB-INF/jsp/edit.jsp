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
		<script type="text/javascript" charset="utf-8" src="${APP_PATH}/ueditor/ueditor.config.js"></script>
		<script type="text/javascript" charset="utf-8" src="${APP_PATH}/ueditor/ueditor.all.min.js">
		</script>
		<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
		<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
		<script type="text/javascript" charset="utf-8" src="${APP_PATH}/ueditor/lang/zh-cn/zh-cn.js"></script>
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
						<ul style="padding-left:0px;" class="list-group">
							<li class="list-group-item tree-closed">
								<a href="user.html"><i class="glyphicon glyphicon-dashboard"></i>个人信息</a>
							</li>
							<li class="list-group-item">
								<span><i class="glyphicon glyphicon glyphicon-dashboard"></i> 发布新闻 <span class="badge" style="float:right">2</span></span>
								<ul style="margin-top:10px;">
									<li style="height:30px;">
										<a href="publish.html" style="color:red;"><i class="glyphicon glyphicon-dashboard"></i> 发布</a>
									</li>
									<li style="height:30px;">
										<a href="draft.html"><i class="glyphicon glyphicon-dashboard"></i> 草稿箱</a>
									</li>
								</ul>
							</li>
							<li class="list-group-item tree-closed">
								<a href="comment.html"><i class="glyphicon glyphicon-dashboard"></i> 我的评论</a>
							</li>
							<li class="list-group-item tree-closed">
								<a href="favorite.html"><i class="glyphicon glyphicon-dashboard"></i> 收藏夹</a>
							</li>
							<li class="list-group-item tree-closed">
								<a href="history.html"><i class="glyphicon glyphicon-dashboard"></i> 浏览历史</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title"><i class="glyphicon glyphicon-th"></i> 编辑</h3>
						</div>
						<div class="panel-body">
							<form>
								<div class="form-group" style="width: 50%;">
									<label for="exampleInputPassword1">新闻标题：</label>
									<input type="text" class="form-control" id="ftitle" name="title" placeholder="请输入新闻标题">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">封面图：</label><br />
									<input type="file" id="fcoverimg" name="coverimg">
								</div>
								<div>
									<label for="exampleInputPassword1">新闻内容：</label>
									<!-- 加载编辑器的容器 -->
									<script id="editor"  type="text/plain">
									</script>
								</div>
								<div style="margin-top: 10px;">
									<button type="button" class="btn btn-success" onclick="doPublish()"><i class="glyphicon glyphicon-edit" onclick="doPublish()"></i> 发布</button>
									<button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-refresh" onclick="doSaveToDraft()"></i> 保存到草稿箱</button>
								</div>

							</form>
						</div>
					</div>

				</div>
			</div>
		</div>

		<!-- 实例化编辑器 -->
		<script type="text/javascript">
			var ue = UE.getEditor('editor');
		</script>
		<script src="${APP_PATH}/jquery/jquery-2.1.1.min.js"></script>
		<script src="${APP_PATH}/bootstrap/js/bootstrap.min.js"></script>
		<script src="${APP_PATH}/script/docs.min.js"></script>
		<script src="${APP_PATH}//jquery/layer/layer.js"></script>
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
			});
		</script>
		<script>
			function doPublish(){
				var ftitle=$("#ftitle");
				var fcoverimg=$("#fcoverimg");
				var content= ue.getContent();
				
				if($.trim(ftitle.val())==""){
					layer.msg("标题不能为空！", {time:1000, icon:5, shift:6}, function(){
						ftitle.val("");
						ftitle.focus();
					});
					return false;
				}else if($.trim(content)==""){
					layer.msg("内容不能为空！", {time:1000, icon:5, shift:6});
					return false;
				}

				var formData = new FormData(); //创建一个forData 
				if(fcoverimg.val()!=""){
					formData.append('coverimg', $('#fcoverimg')[0].files[0]); //添加图片信息的参数
				}
				formData.append("title",ftitle.val());
				formData.append("content",content);
				
				$.ajax({
					type : "POST",
					url : "${APP_PATH}/news/doPublish.do",
					cache: false, //上传文件不需要缓存
				    data: formData,
				    processData: false, // 告诉jQuery不要去处理发送的数据
				    contentType: false, // 告诉jQuery不要去设置Content-Type请求头
					success : function(result){
						if(result.success){
							layer.msg("修改成功，已保存！", {time:1000, icon:6, shift:6});
							window.location.href="${APP_PATH}/publish.htm";
						}else{
							layer.msg("保存失败！"+result.message, {time:1000, icon:5, shift:6});
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