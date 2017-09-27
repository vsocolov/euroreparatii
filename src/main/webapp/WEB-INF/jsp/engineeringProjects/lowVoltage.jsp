<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="gallery" tagdir="/WEB-INF/tags" %>

<tiles:insertDefinition name="default">
    <tiles:putAttribute name="metadata">
        <title><spring:message code='meta.lowVoltageSystem.title'/></title>
        <meta name="keywords" content="<spring:message code='meta.lowVoltageSystem.keywords'/>" />
        <meta name="description" content="<spring:message code='meta.lowVoltageSystem.description'/>" />
        <meta name="og:title" content="<spring:message code='meta.lowVoltageSystem.title'/>">
        <meta name="og:description" content="<spring:message code='meta.lowVoltageSystem.description'/>">
        <meta name="og:image" content="http://${pageContext.request.serverName}/resources/images/social/facebook-image.jpg">
    </tiles:putAttribute>

    <tiles:putAttribute name="body">
        <div class="engineering-projects low-voltage container">
            <div class="mini-navigation">
                <ul>
                    <li>
                        <a href="<c:url value='/'/>"><spring:message code='homePage'/></a>
                    </li>
                    <li>
                        <a href="<c:url value='/engineering-projects'/>"><spring:message code="nav.engineeringProjects"/></a>
                    </li>
                    <li>
                        <spring:message code="engineeringProjects.lowVoltageSystem"/>
                    </li>
                </ul>
            </div>
            <h1 class="main-title"><spring:message code='engineeringProjects.lowVoltageSystem.title'/></h1>

            <h2><spring:message code='engineeringProjects.lowVoltageSystem.text1'/></h2>
            <ol class="list">
                <li><span><spring:message code='engineeringProjects.lowVoltageSystem.text2'/></span></li>
                <li><span><spring:message code='engineeringProjects.lowVoltageSystem.text3'/></span></li>
                <li><span><spring:message code='engineeringProjects.lowVoltageSystem.text4'/></span></li>
                <li><span><spring:message code='engineeringProjects.lowVoltageSystem.text5'/></span></li>
                <li><span><spring:message code='engineeringProjects.lowVoltageSystem.text6'/></span></li>
                <li><span><spring:message code='engineeringProjects.lowVoltageSystem.text7'/></span></li>
            </ol>

            <h2><spring:message code='engineeringProjects.lowVoltageSystem.text8'/></h2>
            <p>
                <img src="<c:url value="/resources/images/low-voltage.jpg"/>"/>
                <spring:message code='engineeringProjects.lowVoltageSystem.text9'/>
            </p>
            <p><spring:message code='engineeringProjects.lowVoltageSystem.text10'/></p>
            <p><spring:message code='engineeringProjects.lowVoltageSystem.text11'/></p>
            <ul class="list">
                <li><spring:message code='engineeringProjects.lowVoltageSystem.text12'/></li>
                <li><spring:message code='engineeringProjects.lowVoltageSystem.text13'/></li>
                <li><spring:message code='engineeringProjects.lowVoltageSystem.text14'/></li>
                <li><spring:message code='engineeringProjects.lowVoltageSystem.text15'/></li>
                <li><spring:message code='engineeringProjects.lowVoltageSystem.text16'/></li>
                <li><spring:message code='engineeringProjects.lowVoltageSystem.text17'/></li>
            </ul>

            <p><spring:message code='engineeringProjects.lowVoltageSystem.text18'/></p>
            <p><spring:message code='engineeringProjects.lowVoltageSystem.text19'/></p>

            <h2><spring:message code='engineeringProjects.lowVoltageSystem.text20'/></h2>
            <ul class="list">
                <li><spring:message code='engineeringProjects.powerSupply.projectComposition'/></li>
                <li><spring:message code='engineeringProjects.homeCinema.text15'/></li>
                <li><spring:message code='engineeringProjects.homeCinema.text16'/></li>
                <li><spring:message code='engineeringProjects.lowVoltageSystem.text21'/></li>
                <li><spring:message code='engineeringProjects.lowVoltageSystem.text22'/></li>
                <li><spring:message code='engineeringProjects.lowVoltageSystem.text23'/></li>
                <li><spring:message code='engineeringProjects.lowVoltageSystem.text24'/></li>
                <li><spring:message code='engineeringProjects.homeCinema.text22'/></li>
                <li><spring:message code='engineeringProjects.homeCinema.text23'/></li>
            </ul>
            <p><spring:message code='engineeringProjects.lowVoltageSystem.text25'/></p>
        </div>

        <jsp:include page="../partials/calculate.jsp"/>
        <jsp:include page="../partials/getConsultation.jsp"/>

    </tiles:putAttribute>
</tiles:insertDefinition>