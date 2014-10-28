<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><tiles:insertAttribute name="title"></tiles:insertAttribute></title>
    
    <!-- jQuery -->
    <script src="/static/spectrum/assets/js/jquery-1.10.2.js"></script>

    <!-- Bootstrap Core CSS -->
    <link href="/static/spectrum/assets/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="/static/spectrum/assets/css/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>

    <!-- Retina Images Plugin -->
    <script src="/static/spectrum/assets/js/plugins/retina/retina.min.js"></script>

    <!-- Plugin CSS -->
    <link href="/static/spectrum/assets/css/plugins/hover/hover.min.css" rel="stylesheet">
    <link href="/static/spectrum/assets/css/plugins/owl.carousel/owl.carousel.css" rel="stylesheet">
    <link href="/static/spectrum/assets/css/plugins/owl.carousel/owl.theme.css" rel="stylesheet">
    <link href="/static/spectrum/assets/css/plugins/owl.carousel/owl.transitions.css" rel="stylesheet">
    <link href="/static/spectrum/assets/css/plugins/jquery.fs.wallpaper/jquery.fs.wallpaper.css" rel="stylesheet">
    <link href="/static/spectrum/assets/css/plugins/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Spectrum CSS -->
    <!-- Note: spectrum.css is the default blue theme. To use another theme, uncomment the one you want and delete the rest, including the default spectrum.css! -->
    <link href="/static/spectrum/assets/css/spectrum.css" rel="stylesheet">
    <!-- <link href="assets/css/spectrum-aqua.css" rel="stylesheet"> -->
    <!-- <link href="assets/css/spectrum-coffee.css" rel="stylesheet"> -->
    <!-- <link href="assets/css/spectrum-coral.css" rel="stylesheet"> -->
    <!-- <link href="assets/css/spectrum-lavender.css" rel="stylesheet"> -->
    <!-- <link href="assets/css/spectrum-olive.css" rel="stylesheet"> -->
    <!-- <link href="assets/css/spectrum-orange.css" rel="stylesheet"> -->
    <!-- <link href="assets/css/spectrum-peach.css" rel="stylesheet"> -->
    <!-- <link href="assets/css/spectrum-pink.css" rel="stylesheet"> -->
    <!-- <link href="assets/css/spectrum-purple.css" rel="stylesheet"> -->
    <!-- <link href="assets/css/spectrum-rust.css" rel="stylesheet"> -->
    <!-- <link href="assets/css/spectrum-seafoam.css" rel="stylesheet"> -->
    <!-- <link href="assets/css/spectrum-slate.css" rel="stylesheet"> -->
    <!-- <link href="assets/css/spectrum-turquoise.css" rel="stylesheet"> -->
    <!-- <link href="assets/css/spectrum-yellow.css" rel="stylesheet"> -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
    
    <!-- Custom CSS -->
	<link rel="stylesheet" href="/static/css/main.css">

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <div id="wrapper">
		<c:set var="uri" value="${requestScope['javax.servlet.forward.servlet_path']}" />
        <nav class="navbar navbar-dark navbar-fixed-top top-nav-collapse" role="navigation">
            <div class="container">
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="
                    		<c:choose>
                        		<c:when test="${fn:length(uri) > 1}">
                        			<c:url value='/#page-top'/></c:when>
                        			<c:otherwise>#page-top</c:otherwise>
                        	</c:choose>">
                        <span class="logo">
                            <img src="/static/spectrum/assets/img/logo.png" alt="">
                        </span>
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                    <ul class="nav navbar-nav">
                        <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                        <li class="hidden">
                            <a href="#page-top"></a>
                        </li>
                        <li class="page-scroll">
                            <a href="<c:choose>
                            			<c:when test="${fn:length(uri) > 1}">
                            				<c:url value='/#about'/></c:when>
                            				<c:otherwise>#about</c:otherwise>
                            		</c:choose>">About
                            </a>
                        </li>
                        <li class="page-scroll">
                            <a href="<c:choose>
                            			<c:when test="${fn:length(uri) > 1}">
                            				<c:url value='/#benefits'/></c:when>
                            				<c:otherwise>#benefits</c:otherwise>
                            		</c:choose>">Benefits
                            </a>
                        </li>
                        <li class="page-scroll">
                            <a href="<c:choose>
                            			<c:when test="${fn:length(uri) > 1}">
                            				<c:url value='/#experience'/></c:when>
                            				<c:otherwise>#experience</c:otherwise>
                            		</c:choose>">Experience
                            </a>
                        </li>
                        <li class="page-scroll">
                            <a href="<c:choose>
                            			<c:when test="${fn:length(uri) > 1}">
                            				<c:url value='/#blog'/></c:when>
                            				<c:otherwise>#blog</c:otherwise>
                            		</c:choose>">Blog
                            </a>
                        </li>
                        <li class="page-scroll">
                            <a href="<c:choose>
                            			<c:when test="${fn:length(uri) > 1}">
                            				<c:url value='/#pricing'/></c:when>
                            				<c:otherwise>#pricing</c:otherwise>
                            		</c:choose>">Pricing
                            </a>
                        </li>
                        <li class="page-scroll">
                            <a href="<c:choose>
                            			<c:when test="${fn:length(uri) > 1}">
                            				<c:url value='/#contact'/></c:when>
                            				<c:otherwise>#contact</c:otherwise>
                            		</c:choose>">Contact
                            </a>
                        </li>
                        <li style="color:#f4f5f7;padding-top: 15px;padding-bottom:15px;">|</li>
                        <sec:authorize access="!isAuthenticated()">
                        <li>
                            <a href="<c:url value='/login'/>"><i class="fa fa-sign-in"></i> Log In</a>
                        </li>
                        <li>
                        	<a href="<c:url value='/signup'/>"><i class="fa fa-arrow-circle-down"></i> Sign Up</a>
                        </li>
						</sec:authorize>
						
						<sec:authorize access="isAuthenticated()">
						<li>
							<a style="text-transform:lowercase;" href="/user/profile"><span class="fa fa-user"></span> <sec:authentication property="principal.user.username" /></a>
						</li>
						<li>
						  	<c:url var="logoutUrl" value="/logout" />
					        <form:form	id="logoutForm" action="${logoutUrl}" method="post"></form:form>    	
				         	<a href="#" onclick="document.getElementById('logoutForm').submit()"><i class="fa fa-sign-out"></i> Log Out</a>
				        </li> 	
						</sec:authorize>
						  
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>
