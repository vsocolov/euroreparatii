<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="gallery" tagdir="/WEB-INF/tags" %>

<tiles:insertDefinition name="default">
    <tiles:putAttribute name="metadata">
        <title><spring:message code='meta.conditioning.title'/></title>
        <meta name="keywords" content="<spring:message code='meta.conditioning.keywords'/>" />
        <meta name="description" content="<spring:message code='meta.conditioning.description'/>" />
        <meta name="og:title" content="<spring:message code='meta.conditioning.title'/>">
        <meta name="og:description" content="<spring:message code='meta.conditioning.description'/>">
        <meta name="og:image" content="http://${pageContext.request.serverName}/resources/images/social/facebook-image.jpg">
    </tiles:putAttribute>

    <tiles:putAttribute name="body">
        <div class="engineering-projects conditioning-container container">
            <div class="mini-navigation">
                <ul>
                    <li>
                        <a href="<c:url value='/'/>"><spring:message code='homePage'/></a>
                    </li>
                    <li>
                        <a href="<c:url value='/engineering-projects'/>"><spring:message code="nav.engineeringProjects"/></a>
                    </li>
                    <li>
                        <spring:message code="engineeringProjects.conditioning"/>
                    </li>
                </ul>
            </div>
            <h1 class="main-title"><spring:message code='engineeringProjects.conditioning.title'/></h1>

            <p>
                <img id="conditioning1" src="<c:url value="/resources/images/conditioning1.png"/>"/>
                <spring:message code='engineeringProjects.conditioning.text1'/>
            </p>
            <p><spring:message code='engineeringProjects.conditioning.text2'/></p>
            <p><spring:message code='engineeringProjects.conditioning.text3'/></p>
            <p><spring:message code='engineeringProjects.conditioning.text4'/></p>

            <h2><spring:message code='engineeringProjects.conditioning.text5'/></h2>
            <p>
                <img id="conditioning2" src="<c:url value="/resources/images/conditioning2.jpg"/>"/>
                <spring:message code='engineeringProjects.conditioning.text6'/>
            </p>
            <p><spring:message code='engineeringProjects.conditioning.text7'/></p>
            <p><spring:message code='engineeringProjects.conditioning.text8'/></p>
            <p><spring:message code='engineeringProjects.conditioning.text9'/></p>

            <h2><spring:message code='engineeringProjects.ventilation.ventilationAndConditioningProject'/></h2>
            <ul class="list">
                <li><spring:message code='engineeringProjects.ventilation.list.text1'/></li>
                <li><spring:message code='engineeringProjects.ventilation.list.text2'/></li>
                <li><spring:message code='engineeringProjects.ventilation.list.text3'/></li>
                <li><spring:message code='engineeringProjects.ventilation.list.text4'/></li>
                <li><spring:message code='engineeringProjects.ventilation.list.text5'/></li>
            </ul>
            <p><spring:message code='engineeringProjects.ventilation.text6'/></p>
        </div>

        <jsp:include page="../partials/calculate.jsp"/>
        <jsp:include page="../partials/getConsultation.jsp"/>

    </tiles:putAttribute>
</tiles:insertDefinition>