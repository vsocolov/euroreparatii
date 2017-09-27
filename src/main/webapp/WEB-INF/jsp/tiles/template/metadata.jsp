<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<title><spring:message code='meta.index.title'/></title>
<meta name="keywords" content="<spring:message code='meta.index.keywords'/>" />
<meta name="description" content="<spring:message code='meta.index.description'/>" />
<meta name="og:title" content="<spring:message code='meta.index.title'/>">
<meta name="og:description" content="<spring:message code='meta.index.description'/>">
<meta name="og:image" content="http://${pageContext.request.serverName}/resources/images/social/facebook-image.jpg">