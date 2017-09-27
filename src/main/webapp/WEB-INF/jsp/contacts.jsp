<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="functions" uri="/WEB-INF/tld/erfn.tld" %>

<tiles:insertDefinition name="default">
    <tiles:putAttribute name="metadata">
        <title><spring:message code='meta.contacts.title'/></title>
        <meta name="description" content="<spring:message code='meta.contacts.description'/>"/>
        <meta name="og:title" content="<spring:message code='meta.contacts.title'/>">
        <meta name="og:description" content="<spring:message code='meta.contacts.description'/>">
        <meta name="og:image" content="http://${pageContext.request.serverName}/resources/images/social/facebook-image.jpg">
    </tiles:putAttribute>

    <tiles:putAttribute name="body">
        <div class="contacts-page">
            <div class="container">
                <div class="mini-navigation">
                    <ul>
                        <li>
                            <a href="<c:url value='/'/>"><spring:message code='homePage'/></a>
                        </li>
                        <li>
                            <spring:message code='contacts.title'/>
                        </li>
                    </ul>
                </div>
                <h1 class="main-title"><spring:message code='contacts.title'/></h1>

                <div class="image-slider">
                    <div class="image-cell">
                        <div class="slider-text ivan">
                            <h6><spring:message code='contacts.slider.text1'/></h6>
                            <div class="name">
                                <spring:message code='contacts.slider.text3'/>
                                <span> - <spring:message code='contacts.slider.text5'/></span>
                            </div>
                        </div>
                        <img src="<c:url value="/resources/images/contacts/contacts1.png"/>"/>
                    </div>
                    <div class="image-cell">
                        <div class="slider-text radion">
                            <h6><spring:message code='contacts.slider.text2'/></h6>
                            <div class="name">
                                <spring:message code='contacts.slider.text4'/>
                                <span> - <spring:message code='contacts.slider.text5'/></span>
                            </div>
                        </div>
                        <img src="<c:url value="/resources/images/contacts/contacts2.png"/>"/>
                    </div>
                </div>

                <div class="slider-footer">
                    <div class="left-content col-sm-6 col-xs-12 clear-padding">
                        <div class="phone-box">
                            <span>
                                <a href="tel:<spring:message code='info.phone.full'/>"><spring:message code='info.phone'/></a>
                            </span>
                            <span>
                                    <spring:message code='from'/> 9:00 <spring:message code='to'/> 20:00
                            </span>
                        </div>
                    </div>
                    <div class="right-content col-sm-6 col-xs-12 clear-padding">
                       <div class="col-md-6 col-xs-12 clear-padding top5">
                           <div class="info-container email">
                               <a href="mailto:<spring:message code='info.email'/>"><spring:message code='info.email'/></a>
                           </div>
                           <div class="info-container skype top5">
                               <a href="skype:<spring:message code='info.skype'/>"><spring:message code='info.skype'/></a>
                           </div>
                       </div>
                        <div class="col-md-6 col-xs-12 clear-padding top5">
                            <div class="info-container whatsapp">
                                <a href="tel:<spring:message code='info.phone1.full'/>">WhatsApp: +<spring:message code='info.phone1'/></a>
                            </div>
                            <div class="info-container viber top5">
                                <a href="tel:<spring:message code='info.phone1.full'/>">Viber: +<spring:message code='info.phone1'/></a>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div class="get-consultation-block top20">
                    <div class="title"><spring:message code='contacts.slider.text2'/></div>
                </div>
            </div>

            <div id="location-map"></div>
        </div>

        <jsp:include page="partials/calculate.jsp"/>
        <jsp:include page="partials/getConsultation.jsp"/>

        <script src="http://maps.googleapis.com/maps/api/js?language=${functions:curentLocaleCode(pageContext)}&key=${functions:appConfig(pageContext).googleMapsKey}"></script>
        <script src='<c:url value="/resources/js/min/contacts.min.js"/>' type="text/javascript"></script>
    </tiles:putAttribute>
</tiles:insertDefinition>