<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<tiles:insertDefinition name="default">
    <tiles:putAttribute name="metadata">
        <title><spring:message code='meta.calculator.title'/></title>
        <meta name="keywords" content="<spring:message code='reparationCalculator'/>" />
        <meta name="og:title" content="<spring:message code='meta.calculator.title'/>">
        <meta name="og:description" content="<spring:message code='meta.reparation.description'/>">
        <meta name="og:image" content="http://${pageContext.request.serverName}/resources/images/social/facebook-image.jpg">
    </tiles:putAttribute>

    <tiles:putAttribute name="body">
        <div class="calculator container">
            <div class="mini-navigation">
                <ul>
                    <li>
                        <a href="<c:url value='/'/>"><spring:message code='homePage'/></a>
                    </li>
                    <li>
                        <a href="<c:url value='/reparation'/>"><spring:message code='apartmentsReparation'/></a>
                    </li>
                    <li><spring:message code='reparationCalculator'/></li>
                </ul>
            </div>
            <h1 class="main-title"><spring:message code='reparationCalculator'/></h1>

            <div class="main-container">
                <div class="data">
                    <div class="row-container">
                        <label for="houseType"><spring:message code='calculator.houseType'/>:</label>
                        <select id="houseType" class="form-control">
                            <option value="1"><spring:message code='calculator.houseType.old'/></option>
                            <option value="2"><spring:message code='calculator.houseType.new'/></option>
                        </select>
                        <div class="clearfix"></div>
                    </div>
                    <div class="row-container">
                        <label for="spaceArea"><spring:message code='calculator.spaceArea'/>:</label>
                        <input type="number" class="form-control" id="spaceArea" min="1" value="1">
                        <div class="clearfix"></div>
                    </div>
                    <div class="row-container">
                        <label for="spaceType"><spring:message code='calculator.spaceType'/>:</label>
                        <select id="spaceType" class="form-control">
                            <option value="1"><spring:message code='calculator.spaceType.apartment'/></option>
                            <option value="2"><spring:message code='calculator.spaceType.office'/></option>
                            <option value="3"><spring:message code='calculator.spaceType.cottage'/></option>
                        </select>
                        <div class="clearfix"></div>
                    </div>
                    <div class="row-container">
                        <label for="reparationType"><spring:message code='calculator.reparationType'/>:</label>
                        <select id="reparationType" class="form-control">
                            <option value="1"><spring:message code='calculator.reparationType.standard'/></option>
                            <option value="2"><spring:message code='calculator.reparationType.businessClass'/></option>
                        </select>
                        <div class="clearfix"></div>
                    </div>
                    <div class="row-container"><spring:message code='calculator.tips'/></div>
                </div>
                <div class="estimated-costs">
                    <p>
                        <span><em id="estimatedCosts">0</em><i>&nbsp;<spring:message code='lei'/></i></span>
                        <spring:message code='calculator.estimatedCosts'/>
                    </p>
                    <p>
                        <span><em id="consumables">0</em><i>&nbsp;<spring:message code='lei'/></i></span>
                        <spring:message code='calculator.consumables'/>
                    </p>
                </div>
            </div>
            <div class="totals-container">
                <div class="costs">
                    <p>
                        <span><em id="totalPrice">0</em><i>&nbsp;<spring:message code='lei'/></i></span>
                        <spring:message code='total'/>
                    </p>
                    <p>
                        <span><em id="decorationMaterials">0</em><i>&nbsp;<spring:message code='lei'/></i></span>
                        <spring:message code='calculator.decorationMaterials'/>
                    </p>
                    <p>
                        <span><em id="grandTotal">0</em><i>&nbsp;<spring:message code='lei'/></i></span>
                        <spring:message code='calculator.total.decorationMaterials'/>
                    </p>
                </div>
            </div>

            <div class="notes">
                <div class="title"><spring:message code='note'/></div>
                <ul>
                    <li>
                        <spring:message code='calculator.note.text1'/>:&nbsp;
                        <a href="#"><spring:message code='calculator.note.text1.link'/></a>.
                    </li>
                    <li><spring:message code='calculator.note.text2'/></li>
                    <li><spring:message code='calculator.note.text3'/></li>
                </ul>
            </div>
        </div>

        <jsp:include page="../partials/calculate.jsp"/>
        <jsp:include page="../partials/getConsultation.jsp"/>

        <script src='<c:url value="/resources/js/min/calculator.min.js"/>' type="text/javascript"></script>
    </tiles:putAttribute>
</tiles:insertDefinition>