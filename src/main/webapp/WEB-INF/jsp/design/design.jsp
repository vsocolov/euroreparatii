<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="gallery" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="functions" uri="/WEB-INF/tld/functions.tld" %>

<tiles:insertDefinition name="default">
    <tiles:putAttribute name="metadata">
        <title><spring:message code='meta.design.title'/></title>
        <meta name="keywords" content="<spring:message code='meta.design.keywords'/>" />
        <meta name="description" content="<spring:message code='meta.design.description'/>" />
        <meta name="og:title" content="<spring:message code='meta.design.title'/>">
        <meta name="og:description" content="<spring:message code='meta.design.description'/>">
        <meta name="og:image" content="http://${pageContext.request.serverName}/resources/images/social/facebook-image-design.jpg">
    </tiles:putAttribute>

    <tiles:putAttribute name="body">
        <gallery:gallery/>

        <div class="design container">
            <div class="mini-navigation">
                <ul>
                    <li>
                        <a href="<c:url value='/'/>"><spring:message code='homePage'/></a>
                    </li>
                    <li>
                        <spring:message code='interiorDesign'/>
                    </li>
                </ul>
            </div>
            <h1 class="main-title"><spring:message code='interiorDesign.title'/></h1>

            <p><spring:message code='interiorDesign.text1'/></p>

            <div class="image-gallery-container">
                <a href="<c:url value='/resources/images/galleries/design1/photo1.jpg'/>" data-gallery>
                    <span class="price">
                        <spring:message code='from'/>&nbsp;120&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                    </span>
                    <img src="<c:url value='/resources/images/galleries/design1/photo1.jpg'/>">
                </a>
                <a href="<c:url value='/resources/images/galleries/design1/photo2.jpg'/>" data-gallery>
                    <img src="<c:url value='/resources/images/galleries/design1/photo2-mini.jpg'/>">
                </a>
                <a href="<c:url value='/resources/images/galleries/design1/photo3.jpg'/>" data-gallery>
                    <img src="<c:url value='/resources/images/galleries/design1/photo3-mini.jpg'/>">
                </a>
                <a href="<c:url value='/resources/images/galleries/design1/photo4.jpg'/>" data-gallery>
                    <img src="<c:url value='/resources/images/galleries/design1/photo4-mini.jpg'/>">
                </a>
                <a href="<c:url value='/resources/images/galleries/design1/photo5.jpg'/>" data-gallery>
                    <img src="<c:url value='/resources/images/galleries/design1/photo5-mini.jpg'/>">
                </a>
                <div class="clearfix"></div>
            </div>

            <h2 class="main-title"><spring:message code='interiorDesign.text2'/></h2>
            <p><spring:message code='interiorDesign.text3'/></p>
            <ul class="list">
                <li><spring:message code='interiorDesign.text4'/></li>
                <li><spring:message code='interiorDesign.text5'/></li>
                <li><spring:message code='interiorDesign.text6'/></li>
                <li><spring:message code='interiorDesign.text7'/></li>
                <li><spring:message code='interiorDesign.text8'/></li>
                <li><spring:message code='interiorDesign.text9'/></li>
                <li><spring:message code='interiorDesign.text10'/></li>
                <li><spring:message code='interiorDesign.text11'/></li>
            </ul>

            <div class="image-gallery-container">
                <a href="<c:url value='/resources/images/galleries/design2/photo1.jpg'/>" data-gallery>
                    <span class="price">
                        <spring:message code='from'/>&nbsp;120&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                    </span>
                    <img src="<c:url value='/resources/images/galleries/design2/photo1.jpg'/>">
                </a>
                <a href="<c:url value='/resources/images/galleries/design2/photo2.jpg'/>" data-gallery>
                    <img src="<c:url value='/resources/images/galleries/design2/photo2-mini.jpg'/>">
                </a>
                <a href="<c:url value='/resources/images/galleries/design2/photo3.jpg'/>" data-gallery>
                    <img src="<c:url value='/resources/images/galleries/design2/photo3-mini.jpg'/>">
                </a>
                <a href="<c:url value='/resources/images/galleries/design2/photo4.jpg'/>" data-gallery>
                    <img src="<c:url value='/resources/images/galleries/design2/photo4-mini.jpg'/>">
                </a>
                <a href="<c:url value='/resources/images/galleries/design2/photo5.jpg'/>" data-gallery>
                    <img src="<c:url value='/resources/images/galleries/design2/photo5-mini.jpg'/>">
                </a>
                <div class="clearfix"></div>
            </div>

            <div class="design-price-container">
                <div class="table-responsive">
                    <table class="table table-bordered custom-table">
                        <tr class="active">
                            <th class="text-center"><spring:message code='interiorDesign.text12'/></th>
                            <th class="text-center"><spring:message code='interiorDesign.text13'/></th>
                        </tr>
                        <tr>
                            <td class="text-center"><spring:message code='to'/> 80 <spring:message code='squareMeter'/></td>
                            <td class="text-center">
                                <span class="old"><spring:message code='from'/>&nbsp;200</span>&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                                &nbsp;-&nbsp;
                                <span class="new"><spring:message code='from'/>&nbsp;160</span>&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">80 - 120 <spring:message code='squareMeter'/></td>
                            <td class="text-center">
                                <span class="old"><spring:message code='from'/>&nbsp;190</span>&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                                &nbsp;-&nbsp;
                                <span class="new"><spring:message code='from'/>&nbsp;150</span>&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">120 - 200 <spring:message code='squareMeter'/></td>
                            <td class="text-center">
                                <span class="old"><spring:message code='from'/>&nbsp;180</span>&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                                &nbsp;-&nbsp;
                                <span class="new"><spring:message code='from'/>&nbsp;140</span>&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">200 - 400 <spring:message code='squareMeter'/></td>
                            <td class="text-center">
                                <span class="old"><spring:message code='from'/>&nbsp;170</span>&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                                &nbsp;-&nbsp;
                                <span class="new"><spring:message code='from'/>&nbsp;130</span>&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center"><spring:message code='from'/> 400 <spring:message code='squareMeter'/></td>
                            <td class="text-center">
                                <span class="old"><spring:message code='from'/>&nbsp;160</span>&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                                &nbsp;-&nbsp;
                                <span class="new"><spring:message code='from'/>&nbsp;120</span>&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

        <jsp:include page="../partials/calculate.jsp"/>
        <jsp:include page="../partials/getConsultation.jsp"/>

        <script src='<c:url value="/resources/js/min/design.min.js"/>' type="text/javascript"></script>
    </tiles:putAttribute>
</tiles:insertDefinition>