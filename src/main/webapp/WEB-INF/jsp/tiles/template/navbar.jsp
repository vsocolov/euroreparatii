<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div id="custom-navbar-menu" class="navbar navbar-default top13" role="navigation">
    <div class="container clear-padding">
        <div class="navbar-header clear-margin">
            <button type="button" class="navbar-toggle pull-left left10" data-toggle="collapse" data-target=".navbar-menubuilder">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span><span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse navbar-menubuilder">
            <ul class="nav navbar-nav navbar-left">
                <li id="navbar-reparation"><a href="<c:url value='/reparation'/>"><spring:message code="nav.repairDecoration"/></a></li>
                <li id="navbar-design-project"><a href="<c:url value='/design-project'/>"><spring:message code="designProject"/></a></li>
                <li id="navbar-gallery"><a href="<c:url value='/gallery'/>"><spring:message code="photoGallery"/></a></li>
                <li id="navbar-design"><a href="<c:url value='/design'/>"><spring:message code="interiorDesign"/></a></li>
                <li id="navbar-contacts"><a href="<c:url value='/contacts'/>"><spring:message code="contacts.title"/></a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <div class="language">
                        <div class="pull-left">
                            <a href="?lang=ro" class="ro" title="<spring:message code='label.lang.ro'/>"></a>
                        </div>
                        <div class="pull-right">
                            <a href="?lang=ru" class="ru" title="<spring:message code='label.lang.ru'/>"></a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>