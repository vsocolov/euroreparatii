<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="gallery" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="functions" uri="/WEB-INF/tld/functions.tld" %>

<tiles:insertDefinition name="default">
    <tiles:putAttribute name="metadata">
        <title><spring:message code='meta.gallery.cottage.title'/></title>
        <meta name="keywords" content="<spring:message code='meta.gallery.apartments.keywords'/>" />
        <meta name="description" content="<spring:message code='meta.gallery.apartments.description'/>" />
        <meta name="og:title" content="<spring:message code='meta.gallery.cottage.title'/>">
        <meta name="og:description" content="<spring:message code='meta.gallery.apartments.description'/>">
        <meta name="og:image" content="http://${pageContext.request.serverName}/resources/images/social/facebook-image.jpg">
    </tiles:putAttribute>

    <tiles:putAttribute name="body">
        <gallery:gallery/>

        <div class="gallery-container container">
            <div class="mini-navigation">
                <ul>
                    <li>
                        <a href="<c:url value='/'/>"><spring:message code='homePage'/></a>
                    </li>
                    <li>
                        <a href="<c:url value='/gallery'/>"><spring:message code='photoGallery'/></a>
                    </li>
                    <li>
                        <spring:message code='housesCottage'/>
                    </li>
                </ul>
            </div>
            <h1 class="main-title"><spring:message code='gallery.title.cottage'/></h1>

            <div class="gallery-navigation top10 bottom30">
                <ul>
                    <li><a href="<c:url value="/gallery"/>"><span><spring:message code='apartments'/></span></a></li>
                    <li><a href="<c:url value="/gallery/non-dwelling"/>"><span><spring:message code='nonDwellingSpaces'/></span></a></li>
                    <li class="active"><a href="<c:url value="/gallery/cottage"/>"><span><spring:message code='housesCottage'/></span></a></li>
                </ul>
            </div>
            <div class="clearfix"></div>

            <div class="gallery-box bottom30">
                <div class="title">
                    <a href="<c:url value="/gallery/cottage"/>"><spring:message code='gallery.gallery1.title'/></a>
                </div>
                <div class="image-gallery-container">
                    <a href="<c:url value='/resources/images/galleries/gallery1/photo1.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery1/photo1.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery1/photo2.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery1/photo2-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery1/photo3.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery1/photo3-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery1/photo4.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery1/photo4-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery1/photo5.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery1/photo5-mini.jpg'/>">
                    </a>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="gallery-box bottom30">
                <div class="title">
                    <a href="<c:url value="/gallery/cottage"/>"><spring:message code='gallery.gallery2.title'/></a>
                </div>
                <div class="image-gallery-container">
                    <a href="<c:url value='/resources/images/galleries/gallery2/photo1.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery2/photo1.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery2/photo2.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery2/photo2-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery2/photo3.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery2/photo3-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery2/photo4.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery2/photo4-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery2/photo5.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery2/photo5-mini.jpg'/>">
                    </a>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="gallery-box bottom30">
                <div class="title">
                    <a href="<c:url value="/gallery/cottage"/>"><spring:message code='gallery.gallery5.title'/></a>
                </div>
                <div class="image-gallery-container">
                    <a href="<c:url value='/resources/images/galleries/gallery5/photo1.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery5/photo1.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery5/photo2.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery5/photo2-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery5/photo3.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery5/photo3-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery5/photo4.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery5/photo4-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery5/photo5.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery5/photo5-mini.jpg'/>">
                    </a>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="gallery-box bottom30">
                <div class="title">
                    <a href="<c:url value="/gallery/cottage"/>"><spring:message code='gallery.gallery6.title'/></a>
                </div>
                <div class="image-gallery-container">
                    <a href="<c:url value='/resources/images/galleries/gallery6/photo1.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery6/photo1.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery6/photo2.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery6/photo2-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery6/photo3.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery6/photo3-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery6/photo4.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery6/photo4-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery6/photo5.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery6/photo5-mini.jpg'/>">
                    </a>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>

        <jsp:include page="../partials/calculate.jsp"/>
        <jsp:include page="../partials/getConsultation.jsp"/>

        <script src='<c:url value="/resources/js/min/gallery.min.js"/>' type="text/javascript"></script>
    </tiles:putAttribute>
</tiles:insertDefinition>