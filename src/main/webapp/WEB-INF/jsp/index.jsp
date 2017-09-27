<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<tiles:insertDefinition name="default">
    <tiles:putAttribute name="body">
        <div class="container-fluid clear-padding">
            <div class="image-slider">
                <div class="image-cell">
                    <img src="<c:url value="/resources/images/slider/banner1.jpg"/>" />
                </div>
                <div class="image-cell">
                    <img src="<c:url value="/resources/images/slider/banner2.jpg"/>" />
                </div>
                <div class="image-cell">
                    <img src="<c:url value="/resources/images/slider/banner3.jpg"/>" />
                </div>
                <div class="image-cell">
                    <img src="<c:url value="/resources/images/slider/banner4.jpg"/>" />
                </div>
                <div class="image-cell">
                    <img src="<c:url value="/resources/images/slider/banner5.jpg"/>" />
                </div>
                <div class="image-cell">
                    <img src="<c:url value="/resources/images/slider/banner6.jpg"/>" />
                </div>
            </div>
        </div>

        <div class="container clear-padding article-section">
            <h1><spring:message code='article.section.flatRepair'/></h1>
            <div class="article-title"><spring:message code='article.section.whyChooseUs.title'/></div>
            <div class="why-choose-us">
                <ul>
                    <li><spring:message code='article.section.whyChooseUs.text1'/></li>
                    <li><spring:message code='article.section.whyChooseUs.text2'/></li>
                    <li><spring:message code='article.section.whyChooseUs.text3'/></li>
                    <li><spring:message code='article.section.whyChooseUs.text4'/></li>
                    <li><spring:message code='article.section.whyChooseUs.text5'/></li>
                    <li><spring:message code='article.section.whyChooseUs.text6'/></li>
                    <li><spring:message code='article.section.whyChooseUs.text7'/></li>
                    <li><spring:message code='article.section.whyChooseUs.text8'/></li>
                    <li><spring:message code='article.section.whyChooseUs.text9'/></li>
                    <li><spring:message code='article.section.whyChooseUs.text10'/></li>
                </ul>
            </div>
            <div class="guarantee">
                <div class="content-container">
                    <div class="arrow">
                        <span><spring:message code='article.section.guarantee.text1'/></span>
                    </div>
                    <div class="arrow">
                        <span><spring:message code='article.section.guarantee.text2'/></span>
                    </div>
                    <div class="arrow">
                        <span><spring:message code='article.section.guarantee.text3'/></span>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>

        <jsp:include page="partials/calculate.jsp"/>

        <div class="container clear-padding article-section">
            <h1><spring:message code='article.section.howInterest'/></h1>
            <div class="article-title"><spring:message code='article.section.howInterest.title'/></div>
            <div class="how-interest-you">
                <ul>
                    <li><spring:message code='article.section.howInterest.text1'/></li>
                    <li><spring:message code='article.section.howInterest.text2'/></li>
                    <li><spring:message code='article.section.howInterest.text3'/></li>
                    <li><spring:message code='article.section.howInterest.text4'/></li>
                    <li><spring:message code='article.section.howInterest.text5'/></li>
                    <li><spring:message code='article.section.howInterest.text6'/></li>
                    <li><spring:message code='article.section.howInterest.text7'/></li>
                </ul>
                <p><spring:message code='article.section.howInterest.textBottom'/></p>
            </div>
            <div class="how-interest-you-info">
                <div>
                    <img src="<c:url value='/resources/images/worker1.png'/>" />
                </div>
                <div>
                    <img src="<c:url value='/resources/images/worker2.png'/>" />
                </div>
            </div>
        </div>

        <jsp:include page="partials/getConsultation.jsp"/>

        <script src='<c:url value="/resources/js/min/index.min.js"/>' type="text/javascript"></script>
    </tiles:putAttribute>
</tiles:insertDefinition>
