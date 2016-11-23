<%@ page language="java" contentType="text/html;charset=utf-8"  pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="Cache-Control" content="no-cache">
    <title>Movie rating</title>
    <link href="css/fonts.css" rel="stylesheet" />
    <script src="js/jquery-3.1.1.js"></script>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>--%>
    <%--<link rel="stylesheet" href="css/reset.css"> --%>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/maincarousel.css" rel="stylesheet" />
    <%--<link href="css/select.css" rel="stylesheet" />--%>
    <link href="css/searchblock.css" rel="stylesheet" />
    <%--<link href="css/carousel.css" rel="stylesheet" />--%>
    <%--<script src="js/carousel.js"></script>--%>
    <%--<script src="js/bootstrap.min.js"></script>--%>
    <script src="js/bootstrap.js"></script>
    <%--<script src="js/maincarousel.js"></script>--%>


</head>
<body class="body">
<nav class="fixed-nav-bar">
    <ul id="navbar">
        <li><a href="#">Home</a></li>
        <li><a href="#">Genres</a>
            <ul>
                <li><a href="#">Thriller</a></li>
                <li><a href="#">Comedy</a></li>
                <li><a href="#">Drama</a></li>
                <li><a href="#">Action</a></li>
                <li><a href="#">Documental</a></li>
                <li><a href="#">Detective</a></li>
                <li><a href="#">Biography</a></li>
            </ul>
        </li>
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

<div class="container">
    <div class="row">
        <!-- Carousel -->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="img/titanicwide.jpg" alt="First slide">
                    <!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2>
                                <span>Welcome to <strong style="font-family:Sofia;">MOVIERATE</strong></span>
                            </h2>
                            <br>
                            <h3>
                                <span>Place where you can learn about movies and share opinions</span>
                            </h3>

                        </div>
                    </div><!-- /header-text -->
                </div>
                <div class="item">
                    <img src="img/smithwide.jpg" alt="Second slide">
                    <!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2>
                                <span>Easy movie search</span>
                            </h2>
                            <br>
                            <h3>
                                <span>Search movies by genre, country, release year</span>
                            </h3>
                            <br>
                        </div>
                    </div><!-- /header-text -->
                </div>
                <div class="item">
                    <img src="img/lordwide.jpg" alt="Third slide">
                    <!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2>
                                <span>Be active!</span>
                            </h2>
                            <br>
                            <h3>
                                <span>Leave marks and feedbacks about movies, earn points and go to the cinema for free! </span>
                            </h3>
                            <br>
                        </div>
                    </div><!-- /header-text -->
                </div>
            </div>
            <!-- Controls -->

        </div><!-- /carousel -->
    </div>
</div>
<div style="width:100%; height:15px; clear:both;">.</div>

<div class="radius">
    <h2>Movie Search</h2>
<form action="" name="search" method="post">
    <div class="selects">
    <label>
        <select>
            <option>All genres</option>
            <option>thriller</option>
            <option>comedy</option>
            <option>drams</option>
            <option>action</option>
            <option>documental</option>
            <option>biography</option>
            <option>detective</option>
        </select>

    </label>
    <label>
        <select>
            <option>All countries</option>
            <option>USA</option>
            <option>Russia</option>
            <option>France</option>
            <option>Italy</option>
            <option>Great Britain</option>
            <option>New Zealand</option>
        </select>
    </label>
    <label>
        <select>
            <option>All years</option>
            <option>1960s</option>
            <option>1970s</option>
            <option>1980s</option>
            <option>1990s</option>
            <option>2000s</option>
            <option>2010s</option>
        </select>
    </label>
    </div>
    <br>
    <div align="center">
        <button id="searchbutton" name="searchbutton">Search</button>
    </div>
</form>
</div>



</body>
</html>
