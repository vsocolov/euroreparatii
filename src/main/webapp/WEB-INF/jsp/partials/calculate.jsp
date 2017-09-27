<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="calculate-container">
    <div class="container">
        <img class="bkg-image" src="<c:url value="/resources/images/caclulator-bkg.jpg"/>"/>
        <div class="content">
            <div class="price-container">
                <a class="repair-price" href="#"><spring:message code='reparationPrice'/></a>
            </div>
            <div class="calculator">
                <a href="<c:url value='/reparation/calculator'/>" class="calculator-btn"><spring:message code='calculator'/></a>
            </div>
        </div>
    </div>
</div>