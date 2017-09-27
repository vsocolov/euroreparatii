<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="gallery" tagdir="/WEB-INF/tags" %>

<tiles:insertDefinition name="default">
    <tiles:putAttribute name="metadata">
        <title><spring:message code='meta.gallery.apartments.title'/></title>
        <meta name="keywords" content="<spring:message code='meta.gallery.apartments.keywords'/>" />
        <meta name="description" content="<spring:message code='meta.gallery.apartments.description'/>" />
        <meta name="og:title" content="<spring:message code='meta.gallery.apartments.title'/>">
        <meta name="og:description" content="<spring:message code='meta.gallery.apartments.description'/>">
        <meta name="og:image" content="http://${pageContext.request.serverName}/resources/images/social/facebook-image-gallery.jpg">
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
                        <spring:message code='apartments'/>
                    </li>
                </ul>
            </div>
            <h1 class="main-title"><spring:message code='gallery.title.apartments'/></h1>

            <div class="gallery-navigation top10 bottom30">
                <ul>
                    <li class="active"><a href="<c:url value="/gallery"/>"><span><spring:message code='apartments'/></span></a></li>
                    <li><a href="<c:url value="/gallery/non-dwelling"/>"><span><spring:message code='nonDwellingSpaces'/></span></a></li>
                    <li><a href="<c:url value="/gallery/cottage"/>"><span><spring:message code='housesCottage'/></span></a></li>
                </ul>
            </div>
            <div class="clearfix"></div>

            <div class="gallery-box bottom30">
                <div class="title">
                    <a href="<c:url value="/gallery"/>"><spring:message code='gallery.gallery15.title'/></a>
                </div>
                <div class="image-gallery-container">
                    <a href="<c:url value='/resources/images/galleries/gallery15/photo1.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery15/photo1.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery15/photo2.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery15/photo2-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery15/photo3.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery15/photo3-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery15/photo4.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery15/photo4-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery15/photo5.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery15/photo5-mini.jpg'/>">
                    </a>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="gallery-box bottom30">
                <div class="title">
                    <a href="<c:url value="/gallery"/>"><spring:message code='gallery.gallery8.title'/></a>
                </div>
                <div class="image-gallery-container">
                    <a href="<c:url value='/resources/images/galleries/gallery8/photo1.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery8/photo1.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery8/photo2.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery8/photo2-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery8/photo3.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery8/photo3-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery8/photo4.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery8/photo4-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery8/photo5.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery8/photo5-mini.jpg'/>">
                    </a>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="gallery-box bottom30">
                <div class="title">
                    <a href="<c:url value="/gallery"/>"><spring:message code='gallery.gallery11.title'/></a>
                </div>
                <div class="image-gallery-container">
                    <a href="<c:url value='/resources/images/galleries/gallery11/photo1.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery11/photo1.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery11/photo2.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery11/photo2-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery11/photo3.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery11/photo3-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery11/photo4.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery11/photo4-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery11/photo5.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery11/photo5-mini.jpg'/>">
                    </a>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="gallery-box bottom30">
                <div class="title">
                    <a href="<c:url value="/gallery"/>"><spring:message code='gallery.gallery12.title'/></a>
                </div>
                <div class="image-gallery-container">
                    <a href="<c:url value='/resources/images/galleries/gallery12/photo1.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery12/photo1.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery12/photo2.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery12/photo2-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery12/photo3.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery12/photo3-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery12/photo4.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery12/photo4-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery12/photo5.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery12/photo5-mini.jpg'/>">
                    </a>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="gallery-box bottom30">
                <div class="title">
                    <a href="<c:url value="/gallery"/>"><spring:message code='gallery.gallery13.title'/></a>
                </div>
                <div class="image-gallery-container">
                    <a href="<c:url value='/resources/images/galleries/gallery13/photo1.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery13/photo1.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery13/photo2.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery13/photo2-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery13/photo3.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery13/photo3-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery13/photo4.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery13/photo4-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery13/photo5.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery13/photo5-mini.jpg'/>">
                    </a>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="gallery-box bottom30">
                <div class="title">
                    <a href="<c:url value="/gallery"/>"><spring:message code='gallery.gallery3.title'/></a>
                </div>
                <div class="image-gallery-container">
                    <a href="<c:url value='/resources/images/galleries/gallery3/photo1.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery3/photo1.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery3/photo2.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery3/photo2-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery3/photo3.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery3/photo3-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery3/photo4.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery3/photo4-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery3/photo5.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery3/photo5-mini.jpg'/>">
                    </a>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="gallery-box bottom30">
                <div class="title">
                    <a href="<c:url value="/gallery"/>"><spring:message code='gallery.gallery4.title'/></a>
                </div>
                <div class="image-gallery-container">
                    <a href="<c:url value='/resources/images/galleries/gallery4/photo1.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery4/photo1.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery4/photo2.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery4/photo2-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery4/photo3.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery4/photo3-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery4/photo4.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery4/photo4-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery4/photo5.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery4/photo5-mini.jpg'/>">
                    </a>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="gallery-box bottom30">
                <div class="title">
                    <a href="<c:url value="/gallery"/>"><spring:message code='gallery.gallery7.title'/></a>
                </div>
                <div class="image-gallery-container">
                    <a href="<c:url value='/resources/images/galleries/gallery7/photo1.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery7/photo1.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery7/photo2.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery7/photo2-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery7/photo3.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery7/photo3-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery7/photo4.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery7/photo4-mini.jpg'/>">
                    </a>
                    <a href="<c:url value='/resources/images/galleries/gallery7/photo5.jpg'/>" data-gallery>
                        <img src="<c:url value='/resources/images/galleries/gallery7/photo5-mini.jpg'/>">
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