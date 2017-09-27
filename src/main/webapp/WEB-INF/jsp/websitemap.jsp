<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="gallery" tagdir="/WEB-INF/tags" %>

<tiles:insertDefinition name="default">
    <tiles:putAttribute name="metadata">
        <title><spring:message code='siteMap'/></title>
        <meta name="keywords" content="<spring:message code='meta.index.keywords'/>" />
        <meta name="description" content="<spring:message code='meta.websitemap.description'/>" />
        <meta name="og:title" content="<spring:message code='siteMap'/>">
        <meta name="og:description" content="<spring:message code='meta.websitemap.description'/>">
        <meta name="og:image" content="http://${pageContext.request.serverName}/resources/images/social/facebook-image.jpg">
    </tiles:putAttribute>

    <tiles:putAttribute name="body">
        <div class="engineering-projects websitemap container">
            <div class="mini-navigation">
                <ul>
                    <li>
                        <a href="<c:url value='/'/>"><spring:message code='homePage'/></a>
                    </li>
                    <li>
                        <spring:message code='siteMap'/>
                    </li>
                </ul>
            </div>
            <h1 class="main-title"><spring:message code='siteMap'/></h1>

            <h3>
                <a href="<c:url value='/reparation'/>"><spring:message code="nav.repairDecoration"/></a>
            </h3>
            <ul class="sitemap-list">
                <li>
                    <a href="<c:url value='/reparation'/>"><spring:message code='apartmentsReparation'/></a>
                </li>
                <li>
                    <a href="<c:url value='/reparation/calculator'/>"><spring:message code='reparationCalculator'/></a>
                </li>
            </ul>

            <h3>
                <a href="<c:url value='/gallery'/>"><spring:message code="photoGallery"/></a>
            </h3>
            <ul class="sitemap-list">
                <li>
                    <a href="<c:url value='/gallery'/>"><spring:message code='gallery.title.apartments'/></a>
                </li>
                <li>
                    <a href="<c:url value='/gallery/non-dwelling'/>"><spring:message code='gallery.title.offices'/></a>
                </li>
                <li>
                    <a href="<c:url value='/gallery/cottage'/>"><spring:message code='gallery.title.cottage'/></a>
                </li>
            </ul>

            <h3>
                <a href="<c:url value='/engineering-projects'/>"><spring:message code="nav.engineeringProjects"/></a>
            </h3>
            <ul class="sitemap-list">
                <li>
                    <a href="<c:url value='/engineering-projects/power-supply'/>"><spring:message code='engineeringProjects.powerSupply'/></a>
                </li>
                <li>
                    <a href="<c:url value='/engineering-projects/ventilation'/>"><spring:message code='engineeringProjects.ventilation'/></a>
                </li>
                <li>
                    <a href="<c:url value='/engineering-projects/plumbing'/>"><spring:message code='engineeringProjects.waterSupply'/></a>
                </li>
                <li>
                    <a href="<c:url value='/engineering-projects/conditioning'/>"><spring:message code='engineeringProjects.conditioning'/></a>
                </li>
                <li>
                    <a href="<c:url value='/engineering-projects/home-cinema'/>"><spring:message code='engineeringProjects.homeCinema'/></a>
                </li>
                <li>
                    <a href="<c:url value='/engineering-projects/low-voltage'/>"><spring:message code='engineeringProjects.lowVoltageSystem'/></a>
                </li>
                <li>
                    <a href="<c:url value='/engineering-projects/cctv'/>"><spring:message code='engineeringProjects.cctv'/></a>
                </li>
            </ul>

            <h3>
                <a href="<c:url value='/design-project'/>"><spring:message code="designProject"/></a>
            </h3>
            <h3>
                <a href="<c:url value='/design'/>"><spring:message code="interiorDesign"/></a>
            </h3>
            <h3>
                <a href="<c:url value='/contacts'/>"><spring:message code="contacts.title"/></a>
            </h3>
            <h3>
                <a href="<c:url value='/websitemap'/>"><spring:message code="siteMap"/></a>
            </h3>
        </div>

        <jsp:include page="partials/calculate.jsp"/>
        <jsp:include page="partials/getConsultation.jsp"/>
    </tiles:putAttribute>
</tiles:insertDefinition>