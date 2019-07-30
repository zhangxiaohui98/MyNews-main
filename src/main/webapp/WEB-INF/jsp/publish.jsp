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
						<ul style="padding-left:0px;" class="list-group">
							<li class="list-group-item tree-closed">
								<a href="user.htm"><i class="glyphicon glyphicon-dashboard"></i>个人信息</a>
							</li>
							<li class="list-group-item">
								<span><i class="glyphicon glyphicon glyphicon-dashboard"></i> 发布新闻 <span class="badge" style="float:right">2</span></span>
								<ul style="margin-top:10px;">
									<li style="height:30px;">
										<a href="publish.htm" style="color:red;"><i class="glyphicon glyphicon-dashboard"></i> 发布</a>
									</li>
									<li style="height:30px;">
										<a href="draft.htm"><i class="glyphicon glyphicon-dashboard"></i> 草稿箱</a>
									</li>
								</ul>
							</li>
							<li class="list-group-item tree-closed">
								<a href="comment.htm"><i class="glyphicon glyphicon-dashboard"></i> 我的评论</a>
							</li>
							<li class="list-group-item tree-closed">
								<a href="favorite.htm"><i class="glyphicon glyphicon-dashboard"></i> 收藏夹</a>
							</li>
							<li class="list-group-item tree-closed">
								<a href="history.htm"><i class="glyphicon glyphicon-dashboard"></i> 浏览历史</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title"><i class="glyphicon glyphicon-th"></i> 我的新闻</h3>
						</div>
						<div class="panel-body">
							<form class="form-inline" role="form" style="float:left;">
								<div class="form-group has-feedback">
									<div class="input-group">

										<input id="queryText" class="form-control has-success" type="text" placeholder="请输入查询条件">
									</div>
								</div>
								<button id="queryBtn" type="button" class="btn btn-warning"><i class="glyphicon glyphicon-search"></i> 查询</button>
							</form>
							<button type="button" class="btn btn-danger" style="float:right;margin-left:10px;"><i class=" glyphicon glyphicon-remove"></i> 删除</button>
							<button type="button" class="btn btn-primary" style="float:right;" onclick="window.location.href='edit.htm'"><i class="glyphicon glyphicon-plus"></i> 新增</button>
							<br>
							<hr style="clear:both;">
							<div class="table-responsive">
								<table class="table  table-bordered">
									<thead>
										<tr>
											<th width="30">#</th>
											<th width="30"><input type="checkbox"></th>
											<th width="400">标题</th>
											<th>点击率</th>
											<th>获赞率</th>
											<th>收藏率</th>
											<th width="100">发布时间</th>
											<th width="100">操作</th>
										</tr>
									</thead>
									<tbody>
										<!-- 
										<tr>
											<td>1</td>
											<td><input type="checkbox"></td>
											<td>
												<a style="color: #000; font-size: 16px;" href="#">被孩子妈妈骗走两千万后，他发现养了7年的3个娃都不是亲生的</a>
											</td>
											<td>0</td>
											<td>0</td>
											<td>0</td>
											<td align="center">2019-07-19 19:27:35</td>
											<td align="center">
												<button type="button" class="btn btn-danger btn-xs"><i class=" glyphicon glyphicon-remove"></i></button>
											</td>
										</tr>
										 -->
									</tbody>
									<tfoot>
										<tr>
											<td colspan="8" align="center">
												<ul class="pagination">
												</ul>
											</td>
										</tr>

									</tfoot>
								</table>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>

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
			    queryPageUser(0);
			});
			$("tbody .btn-success").click(function() {
				window.location.href = "assignRole.html";
			});
			$("tbody .btn-primary").click(function() {
				window.location.href = "edit.html";
			});
		</script>
		<script><!--分页查询--->
		
			$("#queryBtn").click(function(){
	        	var queryText = $("#queryText").val();
	        	jsonObj.queryText = queryText ;
	        	queryPageUser(0);
	        });
			
			function pageChange(pageno){
	        	//window.location.href="${APP_PATH}/user/index.do?pageno="+pageno ;
	        	queryPageUser(pageno);
	        }
	        
	        
	        var jsonObj = {
	    			"pageno" : 1,
	    			"pagesize" : 10 
	    		};
	        
	        
	        var loadingIndex = -1 ;
	        function queryPageUser(pageIndex){
	        	jsonObj.pageno = pageIndex + 1 ;
	        	$.ajax({
	        		type : "POST",
	        		data : jsonObj,
	        		url : "${APP_PATH}/news/showByPage.do",
	        		beforeSend : function(){
	        			loadingIndex = layer.load(2, {time: 10*1000});
	        			return true ;
	        		},
	        		success : function(result){
	        			
	        			layer.close(loadingIndex);
	        			
	        			if(result.success){
	        				var page = result.page ;
	        				var data = page.data ;
	        				
	        				var content = '';
	        				
	        				$.each(data,function(i,n){
	        					content+='<tr>';
	            				content+='  <td>'+(i+1)+'</td>';
	            				content+='  <td><input type="checkbox" id="'+n.id+'" name="'+n.id+'"></td>';
	            				content+='	<td>'+
												'<a style="color: #000; font-size: 16px;" href="#">'+n.title+'</a>'+
											'</td>';
	            				content+='  <td>'+n.readtimes+'</td>';
	            				content+='  <td>'+n.likes+'</td>';
	            				content+='  <td>'+n.collections+'</td>';
	            				content+='  <td align="center">'+n.creationtime+'</td>';
	            				content+='  <td align="center">';
	            				content+='		<button type="button" class="btn btn-danger btn-xs"><i class=" glyphicon glyphicon-remove"></i></button>';
	            				content+='  </td>';
	            				content+='</tr>';
	        				});
	        				
	        				
	        				$("tbody").html(content);
	        				
							var contentBar = '';
            				
            				if(page.pageno==1 ){
            					contentBar+='<li class="disabled"><a href="#">上一页</a></li>';
            				}else{
            					contentBar+='<li><a href="#" onclick="pageChange('+(page.pageno-2)+')">上一页</a></li>';
            				}
            				
            				for(var i = 1 ; i<= page.totalno ; i++ ){            					
            					contentBar+='<li';
									if(page.pageno==i){
										contentBar+=' class="active"';
									}
								contentBar+='><a href="#" onclick="pageChange('+(i-1)+')">'+i+'</a></li>';
								
            				}
							
							if(page.pageno==page.totalno ){
            					contentBar+='<li class="disabled"><a href="#">下一页</a></li>';
            				}else{
            					contentBar+='<li><a href="#" onclick="pageChange('+page.pageno+')">下一页</a></li>';
            				}
            				
            				$(".pagination").html(contentBar);
	        				
	        			}else{
	        				layer.msg(result.message, {time:1000, icon:5, shift:6});
	        			}
	        		},
	        		error : function(){
	        			layer.close(loadingIndex);
	        			layer.msg("加载数据失败!", {time:1000, icon:5, shift:6});
	        		}
	        	});
	        }
		</script>
	</body>

</html>