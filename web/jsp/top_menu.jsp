<%@ page language="java" contentType="text/html;charset=utf-8"  pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="true" %>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="resource.locale" />


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="Cache-Control" content="no-cache">
    <title>Movie rating</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/css/carousel.css" rel="stylesheet" />
    <link href="/css/register.css" rel="stylesheet" />
    <link href="/css/search-form.css" rel="stylesheet" />
    <link href="/css/top_menu_font.css" rel="stylesheet" />
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/carousel.js"></script>
    <script src="/js/register.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</head>


<body>

<%--<fmt:setLocale value="${sessionScope.local}" />--%>

<%--<fmt:setBundle basename="resource.locale" var="loc" />--%>
<%--<fmt:message bundle="${loc}" key="login" var="login" />--%>
<%--<fmt:message bundle="${loc}" key="nav.home" var="home" />--%>
<%--<fmt:message bundle="${loc}" key="nav.about" var="about" />--%>
<%--<fmt:message bundle="${loc}" key="nav.new" var="new_movies" />--%>
<%--<fmt:message bundle="${loc}" key="nav.cinema" var="cinema_go" />--%>
<%--<fmt:message bundle="${loc}" key="nav.language.en" var="en" />--%>
<%--<fmt:message bundle="${loc}" key="nav.language.ru" var="ru" />--%>

<div class="navbar-wrapper">
    <div class="container-fluid">
        <nav class="navbar navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Logo</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#" class=""><fmt:message key="nav.home"/></a></li>
                        <li><a href="#"><fmt:message key="nav.about"/></a></li>
                        <li><a href="#"><fmt:message key="nav.cinema"/></a></li>
                        <li><a href="#"><fmt:message key="nav.new"/></a></li>
                    </ul>


                    <ul class="nav navbar-nav pull-right">
                        <li class=" dropdown"><a href="${pageContext.request.contextPath}/jsp/reg.jsp" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Signed in as  <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Change Password</a></li>
                                <li><a href="#">My Profile</a></li>
                            </ul>
                        </li>
                        <li class=""><a href="#">Logout</a></li>
                    </ul>

                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <form action="/controller" method="post">
                                <input type="hidden" name="language" value="en_EN" />
                                <input type="hidden" name="command" value="change_language" />
                                <button type="submit" class="btn-link"><fmt:message key="nav.language.en"/></button>
                            </form>
                        </li>
                        <li><form action="/controller" method="post">
                            <input type="hidden" name="language" value="ru_RU" />
                            <input type="hidden" name="command" value="change_language" />
                            <button type="submit" class="btn-link"><fmt:message key="nav.language.ru"/> </button>
                        </form>
                        </li>
                    </ul>
                    <%--<a href="controller?command=change_language&language=ru">${ru}</a>|--%>
                    <%--<a href="controller?command=change_language&language=en">${en}</a>--%>

                </div>
            </div>
        </nav>
    </div>
</div>

