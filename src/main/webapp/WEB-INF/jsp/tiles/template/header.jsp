<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<header id="header">
    <div class="container clear-padding">
        <div class="col-xs-12 col-sm-6 col-md-6 clear-padding">
            <a class="site-logo" href="<c:url value='/'/>">
                <img src="<c:url value='/resources/images/site-logo.png'/>" />
            </a>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6 clear-padding">
            <div class="call-center">
                <div class="pull-left info">
                    <div class="schedule">
                        <spring:message code="header.schedule"/>
                    </div>
                    <div class="phone-container top8">
                        <div class="phone-icon pull-left"></div>
                        <div>
                            <spring:message code="info.phone"/>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="phone-container top8">
                        <div>
                            <spring:message code="info.phone1"/>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="email-container top8">
                        <div class="email-icon pull-left"></div>
                        <div>
                            E-mail:
                            <a href="mailto:<spring:message code='info.email'/>">
                                <spring:message code="info.email"/>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="pull-right">
                    <div class="logo">
                        <img src="<c:url value='/resources/images/call-center-logo.jpg'/>" />
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</header>