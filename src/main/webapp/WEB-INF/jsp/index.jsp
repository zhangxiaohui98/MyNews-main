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
			h3 {
				font-weight: bold;
			}
		</style>
	</head>

	<body>
		<!--导航栏-->
		<div class="navbar-wrapper">
			<div class="container">
				<jsp:include page="/WEB-INF/jsp/common/nav.jsp"></jsp:include>
			</div>
		</div>

		<div class="container" style="margin-top: 80px;">
			<div class="row ">
				<!--左列表-->
				<div style="position:fixed; border: 1px solid #66AFE9;">
					<ul class="nav nav-pills nav-stacked" style="text-align: center;
									font-size: 18px; ">
						<li>
							<a style="color: #000;" href="#">今日要闻</a>
						</li>
						<li>
							<a style="color: #000;" href="#">热点</a>
						</li>
						<li>
							<a style="color: #000;" href="#">图片</a>
						</li>
						<li>
							<a style="color: #000;" href="#">科技</a>
						</li>
						<li>
							<a style="color: #000;" href="#">娱乐</a>
						</li>
						<li>
							<a style="color: #000;" href="#">军事</a>
						</li>
						<!--<li><img src="img/myNews.PNG" height="100px" width="140px"/></li>-->
					</ul>
				</div>

				<div class="col-md-2 column" ></div>

				<!--新闻列表-->
				<div  class="col-md-7 column">
					<div id="newsList">
						<!-- 
						<div style="height: 110px; margin-top:10px;
									 border-bottom:1px solid #999;">
							<div style="float: left;">
								<img src="img/news.jpeg" width="160px" height="100px" />
							</div>
							<div style="width:75%; float: right; margin-top: -10px;">
								<a href="show.html" style="color: #000;">
									<h3>
										被孩子妈妈骗走两千万后，他发现养了7年的3个娃都不是亲生的
									</h3>
								</a>
								<a style="color: #888;" href="#">中国日报网</a>*
								<a style="color: #888;" href="#">1178评论 </a>*
								<a style="color: #888;" href="#">1小时前</a>
							</div>
						</div>
						-->
					</div>
					<div id="more">
						<!-- 
						<div style="height: 15px; margin-top: 30px;margin-bottom: 10px;" align="center">
							<a style="color: #888;" href="#">更多内容...</a>
						</div>
						-->
					</div>
					
				</div>

				<!--右列表-->
				<div class="col-md-3 column" style="margin-top: 15px;">
					<!--搜索框-->
					<div class="input-group">
						<input id="queryText" style="background-color:#F7F7F7" type="text" class="form-control" placeholder="请输入要搜索的内容">
						<span class="input-group-btn">
										<button id="queryBtn" class="btn btn-info" type="button">
											搜索
										</button>
									</span>
					</div>
					<!--搜索框-->
					<!--登录，注册-->
					<div style="background-color:#F5F5F5; padding: 15px; margin-top: 20px; " align="center">
						<div style="background-color:#fff; height: 100px; border: 1px solid #E7E7E7;">
							<div style="margin-top: 10px; margin-bottom: 5px;">
								登录后可以保存您的浏览历史、评论、收藏，并可以发布新闻
							</div>
							<a href="login.htm" class="btn btn-primary">登录</a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="reg.htm" class="btn btn-primary">注册</a>
						</div>
					</div>
					<!--登录，注册-->
					<!--广告1-->
					<div style="background-color:#F5F5F5; padding: 15px; margin-top: 20px; " align="center">
						<img src="img/gg1.PNG" style="width: 100%;  border: 1px solid #E7E7E7;" />
					</div>
					<!--广告1-->
					<!--广告2-->
					<div style="background-color:#F5F5F5; padding: 15px; margin-top: 20px; " align="center">
						<img src="img/gg2.PNG" style="width: 100%;  border: 1px solid #E7E7E7;" />
					</div>
					<!--广告2-->
					<!--广告3-->
					<div style="background-color:#F5F5F5; padding: 15px; margin-top: 20px; " align="center">
						<img src="img/gg3.PNG" style="width: 100%;  border: 1px solid #E7E7E7;" />
					</div>
					<!--广告3-->
					<!--友情链接-->
					<div style="background-color:#F5F5F5; padding: 15px; margin-top: 20px; border-top:2px solid #006699;" align="center">
						<h3> 友情链接  </h3>
						<a style="color: #888;" href="#">光明网</a>&nbsp;&nbsp;
						<a style="color: #888;" href="#">央广网</a>&nbsp;&nbsp;<br />
						<a style="color: #888;" href="#">国际在线</a>&nbsp;&nbsp;
						<a style="color: #888;" href="#">法制晚报</a>&nbsp;&nbsp;<br />
						<a style="color: #888;" href="#">参考消息</a>&nbsp;&nbsp;
						<a style="color: #888;" href="#">中青在线</a>&nbsp;&nbsp;<br />
						<a style="color: #888;" href="#">中青网</a>&nbsp;&nbsp;
						<a style="color: #888;" href="#">环球网</a>&nbsp;&nbsp;
					</div>
					<!--友情链接-->
					<!--版权信息-->
					<div style="background-color:#F5F5F5; padding: 15px; margin-top: 20px; border-top:2px solid #006699;" " align="center " >
										<div class="footerNav ">
											 <a rel="nofollow " href="# ">关于我们</a> | 
											 <a rel="nofollow " href="# ">服务条款</a> | 
											 <a rel="nofollow " href="# ">免责声明</a> <br />
											 <a rel="nofollow " href="# ">网站地图</a> | 
											 <a rel="nofollow " href="# ">联系我们</a>
										</div>
										<div class="copyRight ">
											Copyright ?2019-2019 MyNews.com 版权所有
										</div>
									</div>
								<!--版权信息-->
								
						</div>
			</div>	
	</div>
    <script src="${APP_PATH}/jquery/jquery-2.1.1.min.js "></script>
    <script src="${APP_PATH}/bootstrap/js/bootstrap.min.js "></script>
	<script src="${APP_PATH}/script/docs.min.js "></script>
    <script src="${APP_PATH}/script/back-to-top.js "></script>
		<script src="${APP_PATH}/jquery/layer/layer.js"></script>
    <script>
	    $(function() {
		    queryPageUser(0);
		});
	    $(".thumbnail img ").css("cursor ", "pointer ");
	    $(".thumbnail img ").click(function(){
	        window.location.href = "project.html ";
	    });
    </script>
    <script><!--分页查询--->
		
			$("#queryBtn").click(function(){
	        	var queryText = $("#queryText").val();
	        	jsonObj.queryText = queryText ;
				$("#newsList").html('');
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
	        		url : "${APP_PATH}/news/showNewsList.do",
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
	        					content+='<div ';
	        					if(i==8){
        							content+=' id="'+(pageIndex+1)+'maodian" ';
        						}
	        					content+='style="height: 110px; margin-top:10px;';
	        					content+=' border-bottom:1px solid #999;">';
	        					content+='<div style="float: left;">';
	        					content+='<img src="coverImg/'+n.coverpicture+'" width="160px" height="100px" />';
	        					content+='</div>';
	        					content+='<div style="width:75%; float: right; margin-top: -10px;">';
	        					content+='<a href="${APP_PATH}/news/showNews.do?newsid='+n.id+'" style="color: #000;">';
	        					content+='<h3> ';
	        					content+= n.title;
	        					content+=' </h3>';
	        					content+='</a>';
	        					content+='<a style="color: #888;" href="#">中国日报网</a>*';
	        					content+='<a style="color: #888;" href="#">1178评论 </a>*';
	        					content+='<a style="color: #888;" href="#">'+n.creationtime+'</a>';
	        					content+='</div>';
	        					content+='</div>';
	        				});
	        				var html=$("#newsList").html();
            				$("#newsList").html(html+content);
            				
            				var contentBar = '';
            				contentBar+='<div style="height: 15px; margin-top: 30px;margin-bottom: 10px;" align="center">';
							if(page.pageno==page.totalno ){
								contentBar+='<a style="color: #888;" href="#">没有更多...</a>';
            				}else{
            					contentBar+='<a style="color: #888;" href="#" onclick="pageChange('+(pageIndex+1)+')" >更多内容...</a>';
            				}
							contentBar+='</div>';
            				$("#more").html(contentBar);
            				
                            location.href="#"+pageIndex+"maodian";
	        				
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