<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="gallery" tagdir="/WEB-INF/tags" %>

<tiles:insertDefinition name="default">
    <tiles:putAttribute name="metadata">
        <title><spring:message code='meta.homeCinema.title'/></title>
        <meta name="keywords" content="<spring:message code='meta.homeCinema.keywords'/>" />
        <meta name="description" content="<spring:message code='meta.homeCinema.description'/>" />
        <meta name="og:title" content="<spring:message code='meta.homeCinema.title'/>">
        <meta name="og:description" content="<spring:message code='meta.homeCinema.description'/>">
        <meta name="og:image" content="http://${pageContext.request.serverName}/resources/images/social/facebook-image.jpg">
    </tiles:putAttribute>

    <tiles:putAttribute name="body">
        <div class="engineering-projects home-cinema container">
            <div class="mini-navigation">
                <ul>
                    <li>
                        <a href="<c:url value='/'/>"><spring:message code='homePage'/></a>
                    </li>
                    <li>
                        <a href="<c:url value='/engineering-projects'/>"><spring:message code="nav.engineeringProjects"/></a>
                    </li>
                    <li>
                        <spring:message code="engineeringProjects.homeCinema"/>
                    </li>
                </ul>
            </div>
            <h1 class="main-title"><spring:message code='engineeringProjects.homeCinema'/></h1>

            <p><spring:message code='engineeringProjects.homeCinema.text1'/></p>
            <h2><spring:message code='engineeringProjects.homeCinema.text2'/></h2>
            <p>
                <img src="<c:url value="/resources/images/home-cinema1.jpg"/>"/>
                <spring:message code='engineeringProjects.homeCinema.text3'/>
            </p>
            <p><spring:message code='engineeringProjects.homeCinema.text4'/></p>
            <p><spring:message code='engineeringProjects.homeCinema.text5'/></p>
            <p><spring:message code='engineeringProjects.homeCinema.text6'/></p>
            <p><spring:message code='engineeringProjects.homeCinema.text7'/></p>

            <h2><spring:message code='engineeringProjects.homeCinema.text8'/></h2>
            <p><spring:message code='engineeringProjects.homeCinema.text9'/></p>
            <ul class="list">
                <li><spring:message code='engineeringProjects.homeCinema.text10'/></li>
                <li><spring:message code='engineeringProjects.homeCinema.text11'/></li>
            </ul>
            <p><spring:message code='engineeringProjects.homeCinema.text12'/></p>

            <h2><spring:message code='engineeringProjects.homeCinema.text13'/></h2>
            <ol class="list">
                <li><span><spring:message code='engineeringProjects.homeCinema.text14'/></span></li>
                <li><span><spring:message code='engineeringProjects.homeCinema.text15'/></span></li>
                <li><span><spring:message code='engineeringProjects.homeCinema.text16'/></span></li>
                <li><span><spring:message code='engineeringProjects.homeCinema.text17'/></span></li>
                <li><span><spring:message code='engineeringProjects.homeCinema.text18'/></span></li>
                <li><span><spring:message code='engineeringProjects.homeCinema.text19'/></span></li>
                <li><span><spring:message code='engineeringProjects.homeCinema.text20'/></span></li>
                <li><span><spring:message code='engineeringProjects.homeCinema.text21'/></span></li>
                <li><span><spring:message code='engineeringProjects.homeCinema.text22'/></span></li>
                <li><span><spring:message code='engineeringProjects.homeCinema.text23'/></span></li>
            </ol>
        </div>

        <jsp:include page="../partials/calculate.jsp"/>
        <jsp:include page="../partials/getConsultation.jsp"/>

    </tiles:putAttribute>
</tiles:insertDefinition>