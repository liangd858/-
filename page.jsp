<%@ page language="java" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<% 
boolean isLogin = false; 
String loginName = (String)request.getSession().getAttribute("_USER_INFO_LOGIN_NAME_"); 
if(loginName != null && !"".equals(loginName)){ 
isLogin = true; 
} 
request.setAttribute("isLogin",isLogin); 
request.setAttribute("loginName",loginName); 
%> 
<c:if test="${isLogin}"> 
你好：${loginName} 
    
<a href="<c:url value="/common/loginout.action" />">注销</a> 
</c:if> 
<c:if test="${!isLogin}"> 
<form name="login_form" method="post" action="<c:url value="/common/login.action" />" > 
<span> 
<label>手机号：</label> 
<input name="loginname" id="loginname" type="text" value="" /> 
</span> 
<span> 
<label>密码：</label> 
<input type="password" name="password" id="password" value=""/> 
</span> 
<span> 
<input type="submit" value="登陆" /> 
</span> 
</form> 
</c:if>
