<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<tiles:insertDefinition name="default">
    <tiles:putAttribute name="metadata">
        <title><spring:message code='meta.designProject.title'/></title>
        <meta name="keywords" content="<spring:message code='meta.designProject.keywords'/>"/>
        <meta name="description" content="<spring:message code='meta.designProject.description'/>"/>
        <meta name="og:title" content="<spring:message code='meta.designProject.title'/>">
        <meta name="og:description" content="<spring:message code='meta.designProject.description'/>">
        <meta name="og:image" content="http://${pageContext.request.serverName}/resources/images/social/facebook-image.jpg">
    </tiles:putAttribute>

    <tiles:putAttribute name="body">
        <div class="design-project container">
            <div class="mini-navigation">
                <ul>
                    <li>
                        <a href="<c:url value='/'/>"><spring:message code='homePage'/></a>
                    </li>
                    <li>
                        <spring:message code='designProject.title'/>
                    </li>
                </ul>
            </div>
            <h1 class="main-title"><spring:message code='designProject.title'/></h1>

            <div class="text">
                <p><spring:message code='designProject.text1'/></p>
                <p><b><spring:message code='designProject.text2'/></b></p>
            </div>

            <div class="steps-container">
                <div class="steps">
                    <div class="step step1">
                        <div class="title"><spring:message code='designProject.text3'/></div>
                    </div>
                    <div class="step step2">
                        <div class="title"><spring:message code='designProject.text4'/></div>
                    </div>
                    <div class="step step3">
                        <div class="title"><spring:message code='designProject.text5'/></div>
                    </div>
                    <div class="step step4">
                        <div class="title"><spring:message code='designProject.text6'/></div>
                    </div>
                    <div class="step step5">
                        <div class="title"><spring:message code='designProject.text7'/></div>
                    </div>
                </div>
                <div class="result">
                    <img src="<c:url value='/resources/images/design-project-result.jpg'/>" />
                    <a><spring:message code='result'/></a>
                </div>
            </div>

            <h2 class="main-title"><spring:message code='designProject.text8'/></h2>

            <div class="rectangle-title"><spring:message code='designProject.text9'/></div>
            <ul class="list">
                <li><spring:message code='designProject.text10'/></li>
                <li><spring:message code='designProject.text11'/></li>
                <li><spring:message code='designProject.text12'/></li>
                <li><spring:message code='designProject.text13'/></li>
                <li><spring:message code='designProject.text14'/></li>
                <li><spring:message code='designProject.text15'/></li>
                <li><spring:message code='designProject.text16'/></li>
                <li><spring:message code='designProject.text17'/></li>
            </ul>

            <div class="rectangle-title"><spring:message code='designProject.text18'/></div>
            <ul class="list">
                <li><spring:message code='designProject.text19'/></li>
                <li><spring:message code='designProject.text20'/></li>
                <li><spring:message code='designProject.text21'/></li>
                <li><spring:message code='designProject.text22'/></li>
                <li><spring:message code='designProject.text23'/></li>
                <li><spring:message code='designProject.text24'/></li>
                <li><spring:message code='designProject.text25'/></li>
                <li><spring:message code='designProject.text26'/></li>
                <li><spring:message code='designProject.text27'/></li>
                <li><spring:message code='designProject.text28'/></li>
                <li><spring:message code='designProject.text29'/></li>
                <li><spring:message code='designProject.text30'/></li>
                <li><spring:message code='designProject.text31'/></li>
                <li><spring:message code='designProject.text32'/></li>
                <li><spring:message code='designProject.text33'/></li>
                <li><spring:message code='designProject.text34'/></li>
            </ul>

            <div class="text">
                <p><spring:message code='designProject.text35'/></p>
            </div>

            <h2 class="main-title"><spring:message code='designProject.text36'/></h2>

            <div class="design-project-price">
                <div class="col-xs-12 col-sm-6 table-panel">
                    <div class="table-responsive">
                        <table class="table table-bordered custom-table text-center">
                            <tr class="active">
                                <th class="text-center"><spring:message code='designProject'/></th>
                                <th class="text-center"><spring:message code='price'/></th>
                            </tr>
                            <tr>
                                <td class="text-center"><spring:message code='designProject.text9'/></td>
                                <td class="text-center">
                                    <spring:message code='from'/>&nbsp;<span class="old">&nbsp;400</span>
                                    <span class="new">&nbsp;200&nbsp;</span>
                                    <spring:message code='lei'/>/<spring:message code='squareMeter'/>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center"><spring:message code='designProject.text18'/></td>
                                <td class="text-center">
                                    <spring:message code='from'/>&nbsp;<span class="old">&nbsp;600</span>
                                    <span class="new">&nbsp;350&nbsp;</span>
                                    <spring:message code='lei'/>/<spring:message code='squareMeter'/>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 present-panel"><spring:message code='designProject.text37'/></div>
                <div class="col-xs-12 text-center clear-padding">
                    <a class="order-btn" href="#"><spring:message code='designProject.text38'/></a>
                </div>
                <div class="clearfix"></div>
            </div>

            <div class="services-container">
                <h2 class="main-title"><spring:message code='designProject.text39'/></h2>

                <a href="#">
                    <div class="service">
                        <img src="<c:url value="/resources/images/services/service-1.jpg"/>" />
                        <div class="text-area">
                            <div>
                                <spring:message code='designProject.text40'/>
                                <span><spring:message code='from'/>&nbsp;200&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/></span>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="<c:url value="/engineering-projects"/>">
                    <div class="service">
                        <img src="<c:url value="/resources/images/services/service-2.jpg"/>" />
                        <div class="text-area">
                            <div>
                                <spring:message code='nav.engineeringProjects'/>
                                <span><spring:message code='from'/>&nbsp;90&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/></span>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="service">
                        <img src="<c:url value="/resources/images/services/service-3.jpg"/>" />
                        <div class="text-area">
                            <div>
                                <spring:message code='designProject.text41'/>
                                <span><spring:message code='from'/>&nbsp;270&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/></span>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="service">
                        <img src="<c:url value="/resources/images/services/service-4.jpg"/>" />
                        <div class="text-area">
                            <div>
                                <spring:message code='designProject.text42'/>
                                <span><spring:message code='from'/>&nbsp;25&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/></span>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="service">
                        <img src="<c:url value="/resources/images/services/service-5.jpg"/>" />
                        <div class="text-area">
                            <div>
                                <spring:message code='designProject.text43'/>
                                <span><spring:message code='from'/>&nbsp;110&nbsp;<spring:message code='lei'/>/<spring:message code='squareMeter'/></span>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="service">
                        <img src="<c:url value="/resources/images/services/service-6.jpg"/>" />
                        <div class="text-area">
                            <div>
                                <spring:message code='designProject.text44'/>
                                <span><spring:message code='from'/>&nbsp;23500&nbsp;<spring:message code='lei'/></span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>

        <jsp:include page="partials/calculate.jsp"/>
        <jsp:include page="partials/getConsultation.jsp"/>

        <script src='<c:url value="/resources/js/min/designProject.min.js"/>' type="text/javascript"></script>
    </tiles:putAttribute>
</tiles:insertDefinition>