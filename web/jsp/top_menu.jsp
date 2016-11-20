<%@ page language="java" contentType="text/html;charset=utf-8"  pageEncoding="UTF-8" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="Cache-Control" content="no-cache">
    <title>Movie rating</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/carousel.css" rel="stylesheet" />
    <link href="css/register.css" rel="stylesheet" />
    <link href="css/search-form.css" rel="stylesheet" />
    <link href="css/top_menu_font.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
    <script src="js/carousel.js"></script>
    <script src="js/register.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</head>


<body>

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
                        <li class="active"><a href="#" class="">Home</a></li>
                        <li><a href="#">About MovieRate</a></li>
                        <li><a href="#">New movies</a></li>
                        <li><a href="#">Going to the cinema</a></li>
                    </ul>


                    <ul class="nav navbar-nav pull-right">
                        <li class=" dropdown"><a href="register.jsp" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Signed in as  <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Change Password</a></li>
                                <li><a href="#">My Profile</a></li>
                            </ul>
                        </li>
                        <li class=""><a href="#">Logout</a></li>
                    </ul>

                </div>
            </div>
        </nav>
    </div>
</div>