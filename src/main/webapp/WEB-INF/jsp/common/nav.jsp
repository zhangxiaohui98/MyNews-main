<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="${APP_PATH}/index.htm" style="font-size:32px;">MyNews</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li style="padding-top:8px; margin-right: 20px;">
					<div class="btn-group">
						<c:if test="${user!=null}">
							<button type="button" class="btn btn-default btn-success dropdown-toggle" data-toggle="dropdown">
									<i class="glyphicon glyphicon-user"></i> ${user.username} <span class="caret"></span>
						    </button>
							<ul class="dropdown-menu" role="menu">
								<li>
									<a href="user.htm"><i class="glyphicon glyphicon-cog"></i> 我的</a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="${APP_PATH}/user/logout.do"><i class="glyphicon glyphicon-off"></i> 退出系统</a>
								</li>
							</ul>
						</c:if>
					</div>
			</ul>
		</div>
	</div>
</nav>