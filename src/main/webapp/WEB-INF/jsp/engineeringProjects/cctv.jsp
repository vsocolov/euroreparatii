<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="gallery" tagdir="/WEB-INF/tags" %>

<tiles:insertDefinition name="default">
    <tiles:putAttribute name="metadata">
        <title><spring:message code='meta.cctv.title'/></title>
        <meta name="keywords" content="<spring:message code='meta.cctv.keywords'/>" />
        <meta name="description" content="<spring:message code='meta.cctv.description'/>" />
        <meta name="og:title" content="<spring:message code='meta.cctv.title'/>">
        <meta name="og:description" content="<spring:message code='meta.cctv.description'/>">
        <meta name="og:image" content="http://${pageContext.request.serverName}/resources/images/social/facebook-image.jpg">
    </tiles:putAttribute>

    <tiles:putAttribute name="body">
        <div class="engineering-projects cctv container">
            <div class="mini-navigation">
                <ul>
                    <li>
                        <a href="<c:url value='/'/>"><spring:message code='homePage'/></a>
                    </li>
                    <li>
                        <a href="<c:url value='/engineering-projects'/>"><spring:message code="nav.engineeringProjects"/></a>
                    </li>
                    <li>
                        <spring:message code="engineeringProjects.cctv"/>
                    </li>
                </ul>
            </div>
            <h1 class="main-title"><spring:message code='engineeringProjects.cctv.title'/></h1>

            <h2><spring:message code="engineeringProjects.cctv"/></h2>
            <ol class="list">
                <li><span><spring:message code="engineeringProjects.cctv.text1"/></span></li>
                <li><span><spring:message code="engineeringProjects.cctv.text2"/></span></li>
                <li><span><spring:message code="engineeringProjects.cctv.text3"/></span></li>
                <li><span><spring:message code="engineeringProjects.cctv.text4"/></span></li>
                <li><span><spring:message code="engineeringProjects.cctv.text5"/></span></li>
                <li><span><spring:message code="engineeringProjects.cctv.text6"/></span></li>
                <li><span><spring:message code="engineeringProjects.cctv.text7"/></span></li>
                <li><span><spring:message code="engineeringProjects.cctv.text8"/></span></li>
                <li><span><spring:message code="engineeringProjects.cctv.text9"/></span></li>
            </ol>

            <h2><spring:message code="engineeringProjects.cctv.text10"/></h2>
            <p>
                <img src="<c:url value="/resources/images/cctv-camera.png"/>"/>
                <spring:message code='engineeringProjects.cctv.text11'/>
            </p>
            <p><spring:message code='engineeringProjects.cctv.text12'/></p>
            <p><spring:message code='engineeringProjects.cctv.text13'/></p>
            <p><spring:message code='engineeringProjects.cctv.text14'/></p>

            <h2><spring:message code="engineeringProjects.cctv.text15"/></h2>
            <ul class="list">
                <li><spring:message code="engineeringProjects.powerSupply.projectComposition"/></li>
                <li><spring:message code="engineeringProjects.homeCinema.text15"/></li>
                <li><spring:message code="engineeringProjects.homeCinema.text16"/></li>
                <li><spring:message code="engineeringProjects.lowVoltageSystem.text21"/></li>
                <li><spring:message code="engineeringProjects.cctv.text16"/></li>
                <li><spring:message code="engineeringProjects.cctv.text17"/></li>
                <li><spring:message code="engineeringProjects.cctv.text18"/></li>
                <li><spring:message code="engineeringProjects.plumbing.ul.text4"/></li>
                <li><spring:message code="engineeringProjects.homeCinema.text23"/></li>
            </ul>
            <p><spring:message code='engineeringProjects.cctv.text19'/></p>
        </div>

        <jsp:include page="../partials/calculate.jsp"/>
        <jsp:include page="../partials/getConsultation.jsp"/>

    </tiles:putAttribute>
</tiles:insertDefinition>