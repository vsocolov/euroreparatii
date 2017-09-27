<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="gallery" tagdir="/WEB-INF/tags" %>

<tiles:insertDefinition name="default">
    <tiles:putAttribute name="metadata">
        <title><spring:message code='meta.powerSupply.title'/></title>
        <meta name="keywords" content="<spring:message code='meta.powerSupply.keywords'/>" />
        <meta name="description" content="<spring:message code='meta.powerSupply.description'/>" />
        <meta name="og:title" content="<spring:message code='meta.powerSupply.title'/>">
        <meta name="og:description" content="<spring:message code='meta.powerSupply.description'/>">
        <meta name="og:image" content="http://${pageContext.request.serverName}/resources/images/social/facebook-image.jpg">
    </tiles:putAttribute>

    <tiles:putAttribute name="body">
        <div class="engineering-projects power-supply-container container">
            <div class="mini-navigation">
                <ul>
                    <li>
                        <a href="<c:url value='/'/>"><spring:message code='homePage'/></a>
                    </li>
                    <li>
                        <a href="<c:url value='/engineering-projects'/>"><spring:message code="nav.engineeringProjects"/></a>
                    </li>
                    <li>
                        <spring:message code="engineeringProjects.powerSupply"/>
                    </li>
                </ul>
            </div>
            <h1 class="main-title"><spring:message code='engineeringProjects.powerSupply.powerSupplyDesign'/></h1>

            <h3><spring:message code='engineeringProjects.powerSupply.electricalEquipmentProject'/></h3>
            <ul class="list">
                <li><spring:message code='engineeringProjects.powerSupply.projectComposition'/>;</li>
                <li><spring:message code='engineeringProjects.powerSupply.projectExplanation'/>;</li>
                <li><spring:message code='engineeringProjects.powerSupply.singleLineDiagrams'/>;</li>
                <li><spring:message code='engineeringProjects.powerSupply.powerDistributionGrids'/>;</li>
                <li><spring:message code='engineeringProjects.powerSupply.electricLighting'/>;</li>
                <li><spring:message code='engineeringProjects.powerSupply.potentialsEqualization'/>;</li>
                <li><spring:message code='engineeringProjects.powerSupply.referenceDocuments'/>;</li>
                <li><spring:message code='engineeringProjects.powerSupply.materialsSpecifications'/>;</li>
            </ul>

            <p><spring:message code='engineeringProjects.powerSupply.text1'/></p>
            <p><spring:message code='engineeringProjects.powerSupply.text2'/></p>
            <p>
                <img src="<c:url value="/resources/images/electricity-home.jpg"/>"/>
                <spring:message code='engineeringProjects.powerSupply.text3'/>
            </p>
            <p><spring:message code='engineeringProjects.powerSupply.text4'/></p>
            <p><spring:message code='engineeringProjects.powerSupply.text5'/></p>
            <p><spring:message code='engineeringProjects.powerSupply.text6'/></p>
            <p><spring:message code='engineeringProjects.powerSupply.text7'/></p>
            <p><spring:message code='engineeringProjects.powerSupply.text8'/></p>
            <p><spring:message code='engineeringProjects.powerSupply.text9'/></p>
            <p><spring:message code='engineeringProjects.powerSupply.text10'/></p>

            <h2><spring:message code='engineeringProjects.powerSupply.text11'/></h2>
            <p><spring:message code='engineeringProjects.powerSupply.text12'/></p>
        </div>

        <jsp:include page="../partials/calculate.jsp"/>
        <jsp:include page="../partials/getConsultation.jsp"/>

    </tiles:putAttribute>
</tiles:insertDefinition>