<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="gallery" tagdir="/WEB-INF/tags" %>

<tiles:insertDefinition name="default">
    <tiles:putAttribute name="metadata">
        <title><spring:message code='meta.engineeringProjects.title'/></title>
        <meta name="keywords" content="<spring:message code='engineeringProjects.title'/>" />
        <meta name="description" content="<spring:message code='meta.engineeringProjects.description'/>" />
        <meta name="og:title" content="<spring:message code='meta.engineeringProjects.title'/>">
        <meta name="og:description" content="<spring:message code='meta.engineeringProjects.description'/>">
        <meta name="og:image" content="http://${pageContext.request.serverName}/resources/images/social/facebook-image.jpg">
    </tiles:putAttribute>

    <tiles:putAttribute name="body">
        <div class="engineering-projects container">
            <div class="mini-navigation">
                <ul>
                    <li>
                        <a href="<c:url value='/'/>"><spring:message code='homePage'/></a>
                    </li>
                    <li>
                        <spring:message code="nav.engineeringProjects"/>
                    </li>
                </ul>
            </div>
            <h1 class="main-title"><spring:message code='engineeringProjects.title'/></h1>

            <div class="categories">
                <ul>
                    <li>
                        <a href="<c:url value="/engineering-projects/power-supply"/>">
                            <div class="electricity"></div>
                            <div><spring:message code="engineeringProjects.powerSupply"/></div>
                        </a>
                    </li>
                    <li>
                        <a href="<c:url value="/engineering-projects/ventilation"/>">
                            <div class="ventilation"></div>
                            <div><spring:message code="engineeringProjects.ventilation"/></div>
                        </a>
                    </li>
                    <li>
                        <a href="<c:url value="/engineering-projects/plumbing"/>">
                            <div class="plumbing"></div>
                            <div><spring:message code="engineeringProjects.waterSupply"/></div>
                        </a>
                    </li>
                    <li>
                        <a href="<c:url value="/engineering-projects/conditioning"/>">
                            <div class="conditioner"></div>
                            <div><spring:message code="engineeringProjects.conditioning"/></div>
                        </a>
                    </li>
                    <li>
                        <a href="<c:url value="/engineering-projects/home-cinema"/>">
                            <div class="home-cinema"></div>
                            <div><spring:message code="engineeringProjects.homeCinema"/></div>
                        </a>
                    </li>
                    <li>
                        <a href="<c:url value="/engineering-projects/low-voltage"/>">
                            <div class="low-voltage"></div>
                            <div><spring:message code="engineeringProjects.lowVoltageSystem"/></div>
                        </a>
                    </li>
                    <li>
                        <a href="<c:url value="/engineering-projects/cctv"/>">
                            <div class="camera"></div>
                            <div><spring:message code="engineeringProjects.cctv"/></div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <jsp:include page="../partials/calculate.jsp"/>
        <jsp:include page="../partials/getConsultation.jsp"/>

    </tiles:putAttribute>
</tiles:insertDefinition>