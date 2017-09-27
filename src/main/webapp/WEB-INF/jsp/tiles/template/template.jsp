<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="<spring:message code="label.lang.short"/>">
<head>
    <tiles:insertAttribute name="metadata"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">

    <link rel="icon" type="image/ico" href="<c:url value='/resources/images/favicons/favicon.ico'/>"/>
    <link rel="icon" type="image/png" sizes="32x32" href="<c:url value='/resources/images/favicons/favicon-32x32.png'/>">
    <link rel="icon" type="image/png" sizes="96x96" href="<c:url value='/resources/images/favicons/favicon-96x96.png'/>">
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value='/resources/images/favicons/favicon-16x16.png'/>">
    <link rel="apple-touch-icon" sizes="57x57" href="<c:url value='/resources/images/favicons/apple-touch-icon-57x57.png'/> ">
    <link rel="apple-touch-icon" sizes="60x60" href="<c:url value='/resources/images/favicons/apple-touch-icon-60x60.png'/> ">
    <link rel="apple-touch-icon" sizes="72x72" href="<c:url value='/resources/images/favicons/apple-touch-icon-72x72.png'/> ">
    <link rel="apple-touch-icon" sizes="76x76" href="<c:url value='/resources/images/favicons/apple-touch-icon-76x76.png'/> ">
    <link rel="apple-touch-icon" sizes="114x114" href="<c:url value='/resources/images/favicons/apple-touch-icon-114x114.png'/> ">
    <link rel="apple-touch-icon" sizes="120x120" href="<c:url value='/resources/images/favicons/apple-touch-icon-120x120.png'/>">
    <link rel="apple-touch-icon" sizes="144x144" href="<c:url value='/resources/images/favicons/apple-touch-icon-144x144.png'/>">
    <link rel="apple-touch-icon" sizes="152x152" href="<c:url value='/resources/images/favicons/apple-touch-icon-152x152.png'/>">
    <link rel="apple-touch-icon" sizes="180x180" href="<c:url value='/resources/images/favicons/apple-touch-icon-180x180.png'/>">
    <link rel="manifest" href="<c:url value='/resources/images/favicons/manifest.json'/>">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="msapplication-TileImage" content="<c:url value='/resources/images/favicons/mstile-144x144.png'/>">
    <meta name="robots" content="all" />
    <meta name="geo.placename" content="<spring:message code='geo.placename'/>" />
    <meta name="geo.position" content="<spring:message code='geo.position'/>" />
    <meta name="geo.region" content="<spring:message code='geo.region'/>" />
    <meta name="ICBM" content="<spring:message code='geo.position'/>" />

    <c:set var="queryString" value="${pageContext.request.getAttribute('javax.servlet.forward.query_string')}" />
    <c:set var="queryStringConcat" value="${not empty queryString ? '?'.concat(queryString) : ''}" />
    <meta name="og:url" content="http://${pageContext.request.serverName}${pageContext.request.getAttribute('javax.servlet.forward.request_uri')}${queryStringConcat}">

    <link href='<c:url value="/resources/css/third-party/cssreset-min.css"/>' rel="stylesheet" type="text/css"/>
    <link href='<c:url value="/resources/css/third-party/bootstrap.min.css"/>' rel="stylesheet" type="text/css"/>
    <link href='<c:url value="/resources/css/third-party/bootstrap-theme.min.css"/>' rel="stylesheet" type="text/css"/>
    <link href='<c:url value="/resources/css/third-party/blueimp-gallery.min.css"/>' rel="stylesheet" type="text/css"/>
    <link href='<c:url value="/resources/css/third-party/slick.min.css"/>' rel="stylesheet" type="text/css"/>
    <link href='<c:url value="/resources/css/site.min.css"/>' rel="stylesheet" type="text/css"/>

    <script src='<c:url value="/resources/js/lib/jquery-2.1.4.min.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/lib/bootstrap.min.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/lib/numeral.min.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/lib/slick.min.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/lib/jquery-scrollToTop.min.js"/>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/lib/blueimp-gallery.min.js"/>' type="text/javascript"></script>
</head>
<body>
<div id="page">
    <tags:googleanalytics/>

    <tiles:insertAttribute name="header"/>
    <tiles:insertAttribute name="navbar"/>

    <tiles:insertAttribute name="body"/>

    <tiles:insertAttribute name="footer"/>
</div>
<script type="text/javascript">
    $(document).ready(function($) {
        $('body').scrollToTop({skin: 'cycle'});
    });
</script>
</body>
</html>