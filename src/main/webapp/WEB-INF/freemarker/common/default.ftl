<#macro default title="Welcome">
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>${title}</title>

    <!-- jQuery -->
    <script src="${rc.contextPath}/static/spectrum/assets/js/jquery-1.10.2.js"></script>

    <!-- Bootstrap Core CSS -->
    <link href="${rc.contextPath}/static/spectrum/assets/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="${rc.contextPath}/static/spectrum/assets/css/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Reenie+Beanie' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Sorts+Mill+Goudy:400,400italic|Slabo+27px|Architects+Daughter|Gentium+Book+Basic:400,400italic,700,700italic|Lusitana:400,700'
          rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900,300italic,400italic,600italic,700italic,900italic|Lato:300,400,700,300italic,400italic,700italic|Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'>

    <!-- Retina Images Plugin -->
    <script src="${rc.contextPath}/static/spectrum/assets/js/plugins/retina/retina.min.js"></script>

    <!-- Plugin CSS -->
    <link href="${rc.contextPath}/static/spectrum/assets/css/plugins/hover/hover.min.css" rel="stylesheet">
    <link href="${rc.contextPath}/static/spectrum/assets/css/plugins/owl.carousel/owl.carousel.css" rel="stylesheet">
    <link href="${rc.contextPath}/static/spectrum/assets/css/plugins/owl.carousel/owl.theme.css" rel="stylesheet">
    <link href="${rc.contextPath}/static/spectrum/assets/css/plugins/owl.carousel/owl.transitions.css" rel="stylesheet">
    <link href="${rc.contextPath}/static/spectrum/assets/css/plugins/jquery.fs.wallpaper/jquery.fs.wallpaper.css" rel="stylesheet">
    <link href="${rc.contextPath}/static/spectrum/assets/css/plugins/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Spectrum CSS -->
    <!-- Note: spectrum.css is the default blue theme. To use another theme, uncomment the one you want and delete the rest, including the default spectrum.css! -->
    <link href="${rc.contextPath}/static/spectrum/assets/css/spectrum-lovedance2.css" rel="stylesheet">
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
      <script src="${rc.contextPath}/static/spectrum/assets/js/html5shiv.js"></script>
      <script src="${rc.contextPath}/static/spectrum/assets/js/respond.min.js"></script>
    <![endif]-->

    <!-- Custom CSS -->
	<link rel="stylesheet" href="${rc.contextPath}/static/css/main.css">

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <div id="wrapper">

		<#include "header.ftl"/>
		
		<#nested/>
		
		<#include "footer.ftl"/>

    </div>

    <!-- Core JavaScript Files -->
    <script src="${rc.contextPath}/static/spectrum/assets/js/bootstrap/bootstrap.min.js"></script>
    <script src="${rc.contextPath}/static/spectrum/assets/js/modernizr.custom.js"></script>

    <!-- Plugin JavaScript Files -->
    <script src="${rc.contextPath}/static/spectrum/assets/js/plugins/jquery.easing/jquery.easing.1.3.js"></script>
    <script src="${rc.contextPath}/static/spectrum/assets/js/plugins/jquery.fitvids/jquery.fitvids.js"></script>
    <script src="${rc.contextPath}/static/spectrum/assets/js/plugins/jquery.fs.wallpaper/jquery.fs.wallpaper.min.js"></script>
    <script src="${rc.contextPath}/static/spectrum/assets/js/plugins/jquery.magnific-popup/jquery.magnific-popup.min.js"></script>
    <script src="${rc.contextPath}/static/spectrum/assets/js/plugins/jquery.tubular/jquery.tubular.1.0.js"></script>
    <script src="${rc.contextPath}/static/spectrum/assets/js/plugins/owl.carousel/owl.carousel.min.js"></script>
    <script src="${rc.contextPath}/static/spectrum/assets/js/plugins/scrollReveal/scrollReveal.js"></script>
    <script src="${rc.contextPath}/static/spectrum/assets/js/plugins/stellar/stellar.js"></script>
    <script src="${rc.contextPath}/static/spectrum/assets/js/plugins/jquery.mousewheel/jquery.mousewheel.js"></script>
    <#--<script src="${rc.contextPath}/static/spectrum/assets/js/plugins/jquery.simplr.smoothscroll/jquery.simplr.smoothscroll.js"></script>-->
    <script src="${rc.contextPath}/static/spectrum/assets/js/plugins/jqBootstrapValidation/jqBootstrapValidation.js"></script>
    <script src="${rc.contextPath}/static/spectrum/assets/js/plugins/isotope/isotope.pkgd.min.js"></script>

    <!-- Spectrum JavaScript Files -->
    <script src="${rc.contextPath}/static/spectrum/assets/js/spectrum.nav.js"></script>
    <script src="${rc.contextPath}/static/spectrum/assets/js/spectrum.js"></script>

    <!-- Custom JavaScript Files -->
    <script src="${rc.contextPath}/static/js/formValidation.js"></script>

</body>

</html>
</#macro>        