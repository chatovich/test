<%@ page language="java" contentType="text/html;charset=utf-8"  pageEncoding="UTF-8" %>
<%--<%@ include file="/jsp/top_menu.jsp" %>--%>
<jsp:include page = "${pageContext.request.contextPath}/jsp/top_menu.jsp"/>

<%--<html>--%>
<%--<head>--%>
    <%--<meta http-equiv="content-type" content="text/html; charset=utf-8" />--%>
    <%--<meta http-equiv="Cache-Control" content="no-cache">--%>
    <%--<title>Movie rating</title>--%>
    <%--<link href="css/bootstrap.min.css" rel="stylesheet" />--%>
    <%--<link href="css/carousel.css" rel="stylesheet" />--%>
    <%--<link href="css/search-form.css" rel="stylesheet" />--%>
    <%--<link href="css/top_menu_font.css" rel="stylesheet" />--%>
    <%--<script src="js/bootstrap.min.js"></script>--%>
    <%--<script src="js/carousel.js"></script>--%>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>--%>
<%--</head>--%>

<%--<body>--%>

<%--<div class="navbar-wrapper">--%>
    <%--<div class="container-fluid">--%>
        <%--<nav class="navbar navbar-fixed-top">--%>
            <%--<div class="container">--%>
                <%--<div class="navbar-header">--%>
                    <%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">--%>
                        <%--<span class="sr-only">Toggle navigation</span>--%>
                        <%--<span class="icon-bar"></span>--%>
                        <%--<span class="icon-bar"></span>--%>
                        <%--<span class="icon-bar"></span>--%>
                    <%--</button>--%>
                    <%--<a class="navbar-brand" href="#">Logo</a>--%>
                <%--</div>--%>
                <%--<div id="navbar" class="navbar-collapse collapse">--%>
                    <%--<ul class="nav navbar-nav">--%>
                        <%--<li class="active"><a href="#" class="">Home</a></li>--%>
                        <%--<li><a href="#">About MovieRate</a></li>--%>
                        <%--<li><a href="#">New movies</a></li>--%>
                        <%--<li><a href="#">Going to the cinema</a></li>--%>
                    <%--</ul>--%>

                    <%--<ul class="nav navbar-nav pull-right">--%>
                        <%--<li class=" dropdown"><a href="reg.jsp" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Signed in as  <span class="caret"></span></a>--%>
                            <%--<ul class="dropdown-menu">--%>
                                <%--<li><a href="#">Change Password</a></li>--%>
                                <%--<li><a href="#">My Profile</a></li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                        <%--<li class=""><a href="#">Logout</a></li>--%>
                    <%--</ul>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</nav>--%>
    <%--</div>--%>
<%--</div>--%>



<div id="carousel">
    <figure id="spinner">
        <img src="../img/god_father.jpeg" alt>
        <img src="../img/avatar.jpg" alt>
        <img src="../img/fantast.jpg" alt>
        <img src="../img/bastard.jpg" alt>
        <img src="../img/titanic.jpg" alt>
        <img src="../img/potter.jpg" alt>
        <img src="../img/kavkaz.jpg" alt>
        <img src="../img/lord_ring.jpg" alt>
    </figure>
</div>
<span style="float:right" class="ss-icon" onclick="galleryspin('-')">&gt;</span>
<span style="float:left" class="ss-icon" onclick="galleryspin('')">&lt;</span>

<div style=" width:100%; height:10px; clear:both;">.</div>

<!--<form role="form" class="form-inline">-->

<h3>${sessionScope.language}</h3>
<h3>after language</h3>
<form class="form-horizontal">
    <fieldset>

        <!-- Select Basic -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="selectbasic"></label>
            <div class="col-md-4">
                <select id="selectbasic1" name="selectbasic" class="form-control">
                    <option value="1">Option one</option>
                    <option value="2">Option two</option>
                </select>
            </div>
        </div>

        <!-- Select Basic -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="selectbasic"></label>
            <div class="col-md-4">
                <select id="selectbasic2" name="selectbasic" class="form-control">
                    <option value="1">Option one</option>
                    <option value="2">Option two</option>
                </select>
            </div>
        </div>

        <!-- Select Basic -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="selectbasic"></label>
            <div class="col-md-4">
                <select id="selectbasic" name="selectbasic" class="form-control">
                    <option value="1">Option one</option>
                    <option value="2">Option two</option>
                </select>
            </div>
        </div>

        <!-- Button -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="singlebutton"></label>
            <div class="col-md-4">
                <div class="mx-auto" style="width: 200px;">
                <button id="singlebutton" name="singlebutton" class="btn btn-primary">Button</button>
                </div>
            </div>
        </div>

    </fieldset>
</form>


<jsp:include page="${pageContext.request.contextPath}/jsp/bottom.jsp"/>

<%--</body>--%>
<%--</html>--%>

