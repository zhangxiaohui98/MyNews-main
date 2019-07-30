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
					</ul>
				</div>
				<div class="col-md-2 column"></div>

				<!--新闻列表-->
				<div  class="col-md-7 column" style="border-left:1px solid #000000;border-right:1px solid #000000; ">
					<div id="shownews">
						<!-- 
							<h1 class="article-title" style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; font-size: 34px; margin: 0px; padding: 0px; line-height: 44px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;">
						    澳门网友回击香港反对派挑唆：别在澳门搞事
						</h1>
						<p>
							<span style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; color: rgb(119, 119, 119); margin-right: 2px;">中国经济网</span>&nbsp;<span style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; color: rgb(119, 119, 119); margin-right: 2px;">2019-07-19 14:10:27</span>
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							来源：环球网
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							原标题：谂乜嘢！呢度系澳门！
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;惨不忍睹！香港反对派疑挑唆澳门网友不满情绪，遭遇连环翻车。（标题翻译：想什么呢！这里是澳门！）
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;在微博等社交网站上，舆论持续批评香港暴力分子冲击立法会、袭击警察等行径。15日，微博上流传一张“脸书”上的贴文截图，显示一名疑似香港反对派支持者在澳门的网上群组发帖，用“澳门不要被蚕食”等说法拉拢、挑唆澳门网友，然而却被回击：管好你自己；省省吧。
						</p>
						<p style="text-align: center;">
							<img src="http://p3.pstatp.com/large/pgc-image/RWaVdlRCIO3Re2" alt="澳门网友回击香港反对派挑唆：别在澳门搞事" />
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;一张疑似香港反对派的贴文截图7月15日被微博一自媒体账号发布。该图片分为贴文和网友评论两部分，贴文部分显示，一疑似支持香港反对派的网民在“脸书”发帖，扬言“最近澳门人批评香港游行，也许你们不明白我们心情”。↓
						</p>
						<p style="text-align: center;">
							<img src="http://p1.pstatp.com/large/pgc-image/RWcfrqfDHRoCMs" alt="澳门网友回击香港反对派挑唆：别在澳门搞事" />
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;他还称澳门的文化、历史遗产、简朴、特色，以及“排队等巴士（习惯）”都“被灭”。随后这名支持香港反对派的网民随后挑唆澳门网友“希望你们保护你们澳门，澳门不要被蚕食”云云。
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;不过，在贴文部分下方的评论部分，不少澳门网友对这个香港反对派支持者进行批评和警告：你别搞事啊；好累啊，又搞什么？↓
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;“别在澳门搞事，澳门人不会放过滋事分子”。↓
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;还有人对这名香港反对派支持者说，他的说法在澳门没有市场，“走开吧”“管好自己啦”。↓
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;还有人直言香港人应该收手，“省省吧！”↓
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;也有人表态支持香港警察，“严政执法”“谢谢你们”。↓
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;还有人对澳门历史遗产、文化等事物“被灭”的论调进行驳斥：“澳门很好，文化遗产，民生也好”；“每个地区的文化背景不一样，没必要用香港人那套去强迫其他地区的人效法”。↓
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;也有人友好劝告称“多谢关心”并说澳门人有“澳门价值”，不希望使用暴力手段或者让社会出现分化。还有人谈及澳门人的生活方式，称对自己身为澳门人很高兴。↓
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;还有人希望发帖的香港反对派支持者尊重澳门人的善良和理智价值，不要抹黑澳门人，并讽刺称：“佩服您有闲情雅致坐在这讨论别人的家”。↓
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;更有人劝发帖的“老弟”先冷静点：“你太傻了，你以为脸书上真有那么多傻子吗”。↓
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;这一疑似香港反对派支持者被澳门网友回怼、劝告的截图在微博上被传播，有自媒体账号形容“翻车”（指香港反对派支持者的操作因被网友评论驳斥而失败），不少内地网友评论是夸赞澳门网友：“三观正”“懂利弊”“拎得清”。↓
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;更有人调侃，这张图是香港反对派支持者的“大型翻车现场”“澳门对香港挑事人的态度就是滚”。↓
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;关于这张“脸书”上的“翻车”截图出自哪个澳门讨论组，截图中有网友提及是“澳门高登”相关群组。7月17日，环球网记者在“澳门高登起底组”上检索，查询到这名香港反对派网民的部分发言记录，但在其中并未找到“澳门不要被蚕食”等言论，相关贴文疑已被删除。
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;不过，在“澳门高登起底组”中，有其他网友重新贴出了该贴文，并询问大家对文章中的说法怎么看。↓
						</p>
						<p style="text-align: center;">
							<img src="http://p1.pstatp.com/large/pgc-image/RWcfsIcA2KPD0w" alt="澳门网友回击香港反对派挑唆：别在澳门搞事" />
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;结果，澳门网友的评论情况与“翻车”截图中类似：“关你什么事”“请你离开”。↓
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;“起码我不打警察”“没见过搞破坏然后又说自己爱香港的”。↓
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;“我们澳门人生活很简单，有工作做，有下午茶喝，可以去旅行，一家人开开心心足够”。“澳门人自然有自己的一套生活方式，不劳烦香港的朋友操心”。↓
						</p>
						<p style="text-align: center;">
							<img src="http://p1.pstatp.com/large/pgc-image/RWcnXTr6As2GHq" alt="澳门网友回击香港反对派挑唆：别在澳门搞事" />
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;除此之外，在“澳门高登起底组”，也有一些网友发帖提及澳门市民反对“港独”的举动。有人展示澳门出租车司机在车上贴横幅痛骂“港独”的照片。
						</p>
						<p style="text-align: center;">
							<img src="http://p3.pstatp.com/large/pgc-image/RWcnXcjIOgTrMZ" alt="澳门网友回击香港反对派挑唆：别在澳门搞事" />
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;实际上，早在暴徒冲击立法会前，就已有香港反对派分子企图拉拢澳门网友。有反对派6月28日向澳门媒体投书一封所谓给澳门人的“公开信”，信中扬言“抵抗恶法”，还用“港澳同属岭南都市，一衣带水，相邻而立！”说法挑唆澳门民众称“诚盼澳、港能携手抵抗冷酷政权”。↓
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;和香港反对派网民的“翻车截图”一样，这封“公开信”一经刊出就被识破：“澳门人不会支持香港那帮年轻人，又刑事毁坏，又上街，又袭警，又阻碍政府办公，简直颠倒是非，支持香港警察”。↓
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;还有人表态支持香港修改《逃犯条例》。“我看过有关修改内容，系一条保护香港人的法例”。↓
						</p>
						<p style="text-align: center;">
							<img src="http://p3.pstatp.com/large/pgc-image/RWcfsV61h4W9nc" alt="澳门网友回击香港反对派挑唆：别在澳门搞事" />
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;“不要搞乱澳门，不该”。↓
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;“有事报警，没事黑警！”“‘反骨仔’只知道用暴力发泄情绪，不知道为社会做贡献”——澳门人的真心话。↓
						</p>
						<p style="-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 16px; margin-bottom: 16px; padding: 0px;">
							环球网/小夫
						</p>
						 -->
						<p>
							<br/>
						</p>
						<div>
							<i class="glyphicon glyphicon-eye-open" style="float: right; margin-right: 10px;">1732</i>
							<i class="glyphicon glyphicon-star-empty" style="float: right; margin-right: 10px;">6</i>
							<i class="glyphicon glyphicon-thumbs-up" style="float: right; margin-right: 10px;">562</i>
						</div>
					</div>
					<br/>
					<div id="ad">
						<img src="${APP_PATH}/img/gg4.PNG" />
					</div>
					<h4 style="margin-left: 10px;"><i style="color: red;">3</i>&nbsp;条评论</h4>
					<div id="docomment" style="border-bottom: 1px solid #AAA; padding-bottom: 40px;">
						<form>
							<textarea class="form-control" rows="5" style="width: 100%;" placeholder="写下您的评论(最多输入400字)"></textarea>
							<button type="button" class="btn btn-primary col-md-2 column" style="float: right;">评论</button>
						</form>
					</div>
					<div id="commentList">
						<div>
							<div class="col-md-1 column">
								<img src="${APP_PATH}/img/me.jpg" class="img-circle" style="width: 30px; height: 30px; margin-top: 10px;">
							</div>
							<div class="col-md-11 column" style="margin-top: 10px;">
								<span style="margin-top: 10px; font-weight: 900;">张三</span>
								<span style="margin-left: 5px;">5小时前</span>
								<p style="margin-top: 5px;">哈哈哈~~</p>
								<i class="glyphicon glyphicon-thumbs-up" style="float: right; margin-right: 10px;">562</i>
							</div>
						</div>
						<div>
							<div class="col-md-1 column">
								<img src="${APP_PATH}/img/me.jpg" class="img-circle" style="width: 30px; height: 30px; margin-top: 10px;">
							</div>
							<div class="col-md-11 column" style="margin-top: 10px;">
								<span style="margin-top: 10px; font-weight: 900;">张三</span>
								<span style="margin-left: 5px;">5小时前</span>
								<p style="margin-top: 5px;">哈哈哈~~</p>
								<i class="glyphicon glyphicon-thumbs-up" style="float: right; margin-right: 10px;">562</i>
							</div>
						</div>
						<div>
							<div class="col-md-1 column">
								<img src="${APP_PATH}/img/me.jpg" class="img-circle" style="width: 30px; height: 30px; margin-top: 10px;">
							</div>
							<div class="col-md-11 column" style="margin-top: 10px;">
								<span style="margin-top: 10px; font-weight: 900;">张三</span>
								<span style="margin-left: 5px;">5小时前</span>
								<p style="margin-top: 5px;">哈哈哈~~</p>
								<i class="glyphicon glyphicon-thumbs-up" style="float: right; margin-right: 10px;">562</i>
							</div>
						</div>
					</div>
				</div>

				<!--右列表-->
				<div class="col-md-3 column" style="margin-top: 15px;">
					<!--搜索框-->
					<div class="input-group">
						<input style="background-color:#F7F7F7" type="text" class="form-control" placeholder="请输入要搜索的内容">
						<span class="input-group-btn">
							<button class="btn btn-info" type="button">
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
						<img src="${APP_PATH}/img/gg1.PNG" style="width: 100%; height: 100%; border: 1px solid #E7E7E7;" />
					</div>
					<!--广告1-->
					<!--广告2-->
					<div style="background-color:#F5F5F5; padding: 15px; margin-top: 20px; " align="center">
						<img src="${APP_PATH}/img/gg2.PNG" style="width: 100%; height: 100%; border: 1px solid #E7E7E7;" />
					</div>
					<!--广告2-->
					<!--广告3-->
					<div style="background-color:#F5F5F5; padding: 15px; margin-top: 20px; " align="center">
						<img src="${APP_PATH}/img/gg3.PNG" style="width: 100%; height: 100%; border: 1px solid #E7E7E7;" />
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
    <script>
    $(".thumbnail img ").css("cursor ", "pointer ");
    $(".thumbnail img ").click(function(){
        window.location.href = "project.html ";
    });
    </script>
    <!-- 显示新闻内容 -->
    <script>
    $(function showNews(){
	 	    var content = '<h1 class="article-title">';
	 	    	content += '${news.title}';
	 	    	content += '</h1>';
	 	    	content += '${news.content}';
	 	    $("#shownews").html(content);
 	});
    </script>
  </body>
</html>