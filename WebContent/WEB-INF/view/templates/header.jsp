<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Le
  Date: 1/2/2016
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/resources/favicon.ico">

    <title>Carousel Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">
</head>
<!-- NAVBAR
================================================== -->
<body ng-app="app" >
<div class="navbar-wrapper">
    <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Project name</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="<c:url value='/' />">Ev</a></li>
                        <li><a href="<c:url value='/product/productList'/>">Product Lİst</a></li>
                        
                        <c:if test="${pageContext.request.userPrincipal.name != null }">
                        	<li><a>Hay : ${pageContext.request.userPrincipal.name }</a> </li>
                        	<li><a href="<c:url value='/logout' />">Logout</a></li>
                         </c:if>
                        
                        <c:if test="${pageContext.request.userPrincipal.name == 'ROLE_ADMIN' }">
                        	   <li><a href="<c:url value='/admin' />">Admin</a></li>
                        </c:if>
                        
                        <c:if test="${pageContext.request.userPrincipal.name ==null }">
                        	<li><a href="<c:url value='/login' />">Login</a>
                        	 <li><a href="<c:url value='/register' />">Register</a> </li>
                        </c:if>
                        
                        <li><a href="<c:url value='/customer/cart' />">Cart</a></li>
                        
                     
                       
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">İçerik <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">belo</a></li>
                               
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

    </div>
</div>
