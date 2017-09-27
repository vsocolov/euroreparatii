<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="gallery" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="functions" uri="/WEB-INF/tld/functions.tld" %>

<tiles:insertDefinition name="default">
    <tiles:putAttribute name="metadata">
        <title><spring:message code='meta.reparation.title'/></title>
        <meta name="keywords" content="<spring:message code='meta.reparation.keywords'/>" />
        <meta name="description" content="<spring:message code='meta.reparation.description'/>" />
        <meta name="og:title" content="<spring:message code='meta.reparation.title'/>">
        <meta name="og:description" content="<spring:message code='meta.reparation.description'/>">
        <meta name="og:image" content="http://${pageContext.request.serverName}/resources/images/social/facebook-image.jpg">
    </tiles:putAttribute>

    <tiles:putAttribute name="body">
        <gallery:gallery/>

        <div class="reparation container">
            <div class="mini-navigation">
                <ul>
                    <li>
                        <a href="<c:url value='/'/>"><spring:message code='homePage'/></a>
                    </li>
                    <li>
                        <spring:message code='apartmentsReparation'/>
                    </li>
                </ul>
            </div>
            <h1 class="main-title"><spring:message code='apartmentsReparation'/></h1>

            <div class="text-area">
                <p><spring:message code='reparation.article.text1'/></p>
            </div>

            <div class="image-gallery-container">
                <a href="<c:url value='/resources/images/galleries/gallery1/photo1.jpg'/>" data-gallery>
                    <span class="price">
                        <spring:message code='from'/>&nbsp;2,250&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                    </span>
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
            <div class="order-btn-container bottom30">
                <a href="#"><spring:message code='reparation.orderThisReparation'/></a>
            </div>

            <div class="reparation-price-container">
                <div class="table-responsive">
                    <table class="table table-bordered custom-table text-center">
                        <tr class="active">
                            <th class="text-center"><spring:message code='calculator.reparationType'/></th>
                            <th class="text-center"><spring:message code='reparation.price.buildingMaterials'/></th>
                            <th class="text-center"><spring:message code='reparation.price'/></th>
                        </tr>
                        <tr>
                            <td class="active"><spring:message code='calculator.reparationType.standard'/></td>
                            <td>
                                <span class="old"><spring:message code='from'/>&nbsp;750</span>&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                                &nbsp;-&nbsp;
                                <span class="new"><spring:message code='from'/>&nbsp;500</span>&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                            </td>
                            <td>
                                <span class="old"><spring:message code='from'/>&nbsp;3,000</span>&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                                &nbsp;-&nbsp;
                                <span class="new"><spring:message code='from'/>&nbsp;2,250</span>&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                            </td>
                        </tr>
                        <tr>
                            <td class="active"><spring:message code='calculator.reparationType.businessClass'/></td>
                            <td>
                                <span class="old"><spring:message code='from'/>&nbsp;750</span>&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                                &nbsp;-&nbsp;
                                <span class="new"><spring:message code='from'/>&nbsp;500</span>&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                            </td>
                            <td>
                                <span class="old"><spring:message code='from'/>&nbsp;3,500</span>&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                                &nbsp;-&nbsp;
                                <span class="new"><spring:message code='from'/>&nbsp;2,625&nbsp;</span><spring:message code='lei'/>/<spring:message code='squareMeter'/>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="image-gallery-container">
                <a href="<c:url value='/resources/images/galleries/gallery12/photo1.jpg'/>" data-gallery>
                    <span class="price">
                        <spring:message code='from'/>&nbsp;2,250&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                    </span>
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
            <div class="order-btn-container bottom30">
                <a href="#"><spring:message code='reparation.orderThisReparation'/></a>
            </div>

            <div class="text-area top50 bottom20">
                <p><spring:message code='reparation.article.text2'/></p>
            </div>

            <div class="guarantee">
                <div class="content-container">
                    <div class="arrow">
                        <span><spring:message code='article.section.guarantee.text1'/></span>
                    </div>
                    <div class="arrow">
                        <span><spring:message code='article.section.guarantee.text4'/></span>
                    </div>
                    <div class="arrow">
                        <span><spring:message code='article.section.guarantee.text2'/></span>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>

            <div class="image-gallery-container top40">
                <a href="<c:url value='/resources/images/galleries/gallery13/photo1.jpg'/>" data-gallery>
                    <span class="price">
                        <spring:message code='from'/>&nbsp;2,250&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                    </span>
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
            <div class="order-btn-container bottom30">
                <a href="#"><spring:message code='reparation.orderThisReparation'/></a>
            </div>

            <div class="location-container">
                <p><spring:message code='reparation.location.comeToUs'/>!</p>
                <div class="title"><spring:message code='reparation.location.weAre'/>:</div>
                <div class="text">
                    <p><span><spring:message code='address'/>:&nbsp;</span><spring:message code='reparation.location.address'/></p>
                    <p class="with-arrow"><spring:message code='reparation.location.text1'/></p>
                </div>

                <div id="location-map"></div>
            </div>

            <div class="text-area top50 bottom20">
                <h2><spring:message code='reparation.article.price.text1'/></h2>
                <ul>
                    <li>
                        <spring:message code='reparation.article.price.text2'/> &mdash; <spring:message code='from'/>
                        &nbsp;2250&nbsp;<span class="to-lowercase"><spring:message code='lei'/>/<spring:message code='squareMeter'/></span>
                    </li>
                    <li>
                        <spring:message code='reparation.article.price.text3'/> &mdash; <spring:message code='from'/>
                        &nbsp;2625&nbsp;<span class="to-lowercase"><spring:message code='lei'/>/<spring:message code='squareMeter'/></span>
                    </li>
                    <li>
                        <spring:message code='reparation.article.price.text4'/> &mdash; <spring:message code='from'/>
                        &nbsp;1200&nbsp;<span class="to-lowercase"><spring:message code='lei'/>/<spring:message code='squareMeter'/></span>
                    </li>
                    <li>
                        <spring:message code='calculator.consumables'/> &mdash; <spring:message code='from'/>
                        &nbsp;500&nbsp;<span class="to-lowercase"><spring:message code='lei'/>/<spring:message code='squareMeter'/></span>
                    </li>
                    <li>
                        <spring:message code='calculator.decorationMaterials'/> &mdash; <spring:message code='from'/>
                        &nbsp;500&nbsp;<span class="to-lowercase"><spring:message code='lei'/>/<spring:message code='squareMeter'/></span>
                    </li>
                    <li>
                        <spring:message code='reparation.article.price.text5'/> &mdash; <spring:message code='from'/>
                        &nbsp;300&nbsp;<span class="to-lowercase"><spring:message code='lei'/>/<spring:message code='squareMeter'/></span>
                    </li>
                    <li>
                        <spring:message code='reparation.article.price.text6'/> &mdash; <spring:message code='from'/>
                        &nbsp;500&nbsp;<span class="to-lowercase"><spring:message code='lei'/>/<spring:message code='squareMeter'/></span>
                    </li>
                </ul>
                <p><spring:message code='reparation.article.obligation.text1'/></p>
                <ul>
                    <li><spring:message code='reparation.article.obligation.text2'/></li>
                    <li><spring:message code='reparation.article.obligation.text3'/></li>
                    <li><spring:message code='reparation.article.obligation.text4'/></li>
                    <li><spring:message code='reparation.article.obligation.text5'/></li>
                    <li><spring:message code='reparation.article.obligation.text6'/></li>
                </ul>
                <h2><spring:message code='reparation.article.workslist.title'/></h2>
                <p>
                    <span class="to-bold"><spring:message code='reparation.article.workslist.subtitle'/></span>
                </p>
                <ul>
                    <li><spring:message code='reparation.article.workslist.text1'/></li>
                    <li><spring:message code='reparation.article.workslist.text2'/></li>
                    <li><spring:message code='reparation.article.workslist.text3'/></li>
                    <li><spring:message code='reparation.article.workslist.text4'/></li>
                </ul>
                <p><spring:message code='reparation.article.workslist.text5'/></p>

                <p>
                    <spring:message code='reparation.article.epilog.text1'/>&nbsp;
                    "<a title="<spring:message code='worksGallery'/>" href="<c:url value="/gallery"/>"><spring:message code='worksGallery'/></a>".
                </p>
            </div>
        </div>

        <jsp:include page="../partials/calculate.jsp"/>
        <jsp:include page="../partials/getConsultation.jsp"/>

        <script src="http://maps.googleapis.com/maps/api/js?language=${functions:curentLocaleCode(pageContext)}&key=${functions:appConfig(pageContext).googleMapsKey}"></script>
        <script src='<c:url value="/resources/js/min/reparation.min.js"/>' type="text/javascript"></script>
    </tiles:putAttribute>
</tiles:insertDefinition>