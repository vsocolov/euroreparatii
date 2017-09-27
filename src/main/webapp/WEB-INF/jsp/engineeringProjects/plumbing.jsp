<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="gallery" tagdir="/WEB-INF/tags" %>

<tiles:insertDefinition name="default">
    <tiles:putAttribute name="metadata">
        <title><spring:message code='meta.plumbing.title'/></title>
        <meta name="keywords" content="<spring:message code='meta.plumbing.keywords'/>" />
        <meta name="description" content="<spring:message code='meta.plumbing.description'/>" />
        <meta name="og:title" content="<spring:message code='meta.plumbing.title'/>">
        <meta name="og:description" content="<spring:message code='meta.plumbing.description'/>">
        <meta name="og:image" content="http://${pageContext.request.serverName}/resources/images/social/facebook-image.jpg">
    </tiles:putAttribute>

    <tiles:putAttribute name="body">
        <div class="engineering-projects plumbing-container container">
            <div class="mini-navigation">
                <ul>
                    <li>
                        <a href="<c:url value='/'/>"><spring:message code='homePage'/></a>
                    </li>
                    <li>
                        <a href="<c:url value='/engineering-projects'/>"><spring:message code="nav.engineeringProjects"/></a>
                    </li>
                    <li>
                        <spring:message code="engineeringProjects.waterSupply"/>
                    </li>
                </ul>
            </div>
            <h1 class="main-title"><spring:message code='engineeringProjects.plumbing.title'/></h1>

            <h2><spring:message code='engineeringProjects.plumbing.waterSupplyProjectComposition'/></h2>
            <ol class="list">
                <li><span><spring:message code='engineeringProjects.plumbing.ol.text1'/></span></li>
                <li><span><spring:message code='engineeringProjects.plumbing.ol.text2'/></span></li>
                <li><span><spring:message code='engineeringProjects.plumbing.ol.text3'/></span></li>
                <li><span><spring:message code='engineeringProjects.plumbing.ol.text4'/></span></li>
            </ol>

            <h2><spring:message code='engineeringProjects.plumbing.waterSupplyDevelopment'/></h2>
            <p>
                <img src="<c:url value="/resources/images/plumbing.jpg"/>"/>
                <spring:message code='engineeringProjects.plumbing.text1'/>
            </p>
            <p><spring:message code='engineeringProjects.plumbing.text2'/></p>
            <p><spring:message code='engineeringProjects.plumbing.text3'/></p>
            <p><spring:message code='engineeringProjects.plumbing.text4'/></p>
            <p><spring:message code='engineeringProjects.plumbing.text5'/></p>

            <h2><spring:message code='engineeringProjects.plumbing.waterSupplyAndSanitation'/></h2>
            <ul class="list">
                <li><spring:message code='engineeringProjects.plumbing.ul.text1'/></li>
                <li><spring:message code='engineeringProjects.plumbing.ul.text2'/></li>
                <li><spring:message code='engineeringProjects.plumbing.ul.text3'/></li>
                <li><spring:message code='engineeringProjects.plumbing.ul.text4'/></li>
            </ul>
            <p><spring:message code='engineeringProjects.plumbing.text6'/></p>
        </div>

        <jsp:include page="../partials/calculate.jsp"/>
        <jsp:include page="../partials/getConsultation.jsp"/>

    </tiles:putAttribute>
</tiles:insertDefinition>