<%@ page language="java" contentType="text/html;charset=utf-8"  pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="Cache-Control" content="no-cache">
    <title>Movie rating</title>
    <%--<link rel="stylesheet" href="css/reset.css"> --%>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/maincarousel.css" rel="stylesheet" />
    <link href="css/carousel.css" rel="stylesheet" />
    <script src="js/carousel.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>
<body class="body">
<nav class="fixed-nav-bar">
    <ul id="navbar">
        <li><a href="#">Home</a></li>
        <li><a href="#">About us</a></li>
        <li><a href="#">New movies</a>
        <li><a href="#">Go to the cinema</a></li>

        <li  style="float: right;"><a href="#">Signed as</a>
            <ul>
                <li><a href="#">Your profile</a></li>
                <li><a href="#">Sign out</a></li>
            </ul>
        </li>
        <li  style="float: right;"><a href="#">Language</a>
            <ul>
                <li><a href="#">Russian</a></li>
                <li><a href="#">English</a></li>
            </ul>
        </li>
    </ul>
</nav>

<div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
    <!-- Overlay -->
    <div class="overlay"></div>

    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
        <li data-target="#bs-carousel" data-slide-to="1"></li>
        <li data-target="#bs-carousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <div class="item slides active">
            <div class="slide-1"></div>
            <div class="hero">
                <hgroup>
                    <h1>We are creative</h1>
                    <h3>Get start your next awesome project</h3>
                </hgroup>
                <button class="btn btn-hero btn-lg" role="button">See all features</button>
            </div>
        </div>
        <div class="item slides">
            <div class="slide-2"></div>
            <div class="hero">
                <hgroup>
                    <h1>We are smart</h1>
                    <h3>Get start your next awesome project</h3>
                </hgroup>
                <button class="btn btn-hero btn-lg" role="button">See all features</button>
            </div>
        </div>
        <div class="item slides">
            <div class="slide-3"></div>
            <div class="hero">
                <hgroup>
                    <h1>We are amazing</h1>
                    <h3>Get start your next awesome project</h3>
                </hgroup>
                <button class="btn btn-hero btn-lg" role="button">See all features</button>
            </div>
        </div>
    </div>
</div>
<div style="width:100%; height:10px; clear:both;">.</div>

</body>
</html>
