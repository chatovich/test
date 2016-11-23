<%@ page language="java" contentType="text/html;charset=utf-8"  pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="Cache-Control" content="no-cache">
    <title>Movie rating</title>
    <link href="css/fonts.css" rel="stylesheet" />
    <%--<script src="js/jquery-3.1.1.js"></script>--%>
    <%--<link href="css/bootstrap.min.css" rel="stylesheet" />--%>
    <link href="css/nazarov.css" rel="stylesheet" />
    <link href="css/searchblock.css" rel="stylesheet" />
    <%--<script src="js/bootstrap.js"></script>--%>


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

<div class="image">

<h1 align="center" style="line-height:600px;font-size: 64px;color:white">Welcome to <strong style="font-family:Sofia;">MOVIERATE</strong></h1>


</div>

<%--<div style="position: relative; width: 200px; height: 80%">--%>
    <%--<div style="position: absolute; top: 0; left: 0; width: 200px">--%>
        <%--<img src="img/titanicwide.jpg" alt="First slide">--%>
    <%--</div>--%>
    <%--<div style="position: absolute; width: 600px">--%>
        <%--<h2>--%>
            <%--<span>Welcome to <strong style="font-family:Sofia;">MOVIERATE</strong></span>--%>
        <%--</h2>--%>
        <%--<br>--%>
        <%--<h3>--%>
            <%--<span>Place where you can learn about movies and share opinions</span>--%>
        <%--</h3>--%>
    <%--</div>--%>
<%--</div>--%>

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
