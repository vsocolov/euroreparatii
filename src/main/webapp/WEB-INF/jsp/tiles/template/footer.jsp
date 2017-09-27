<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="footer-menu">
    <ul>
        <li>
            <a href="#"><spring:message code='aboutUs'/></a>
        </li>
        <li>
            <a href="<c:url value="/reparation"/>"><spring:message code='apartmentRepair'/></a>
        </li>
        <li>
            <a href="<c:url value="/design-project"/>"><spring:message code='designProject'/></a>
        </li>
        <li>
            <a href="<c:url value='/engineering-projects'/>"><spring:message code="nav.engineeringProjects"/></a>
        </li>
        <li>
            <a href="<c:url value="/gallery"/>"><spring:message code='photoGallery'/></a>
        </li>
        <li>
            <a href="<c:url value="/design"/>"><spring:message code='interiorDesign'/></a>
        </li>
        <li>
            <a href="<c:url value="/contacts"/>"><spring:message code='contacts.title'/></a>
        </li>
        <li>
            <a href="<c:url value="/websitemap"/>"><spring:message code='siteMap'/></a>
        </li>
    </ul>
</div>
<footer id="footer">
    <div class="container">
        <div itemscope itemtype="http://schema.org/Organization" class="address">
            <span><spring:message code='studio'/></span>&nbsp;<span itemprop="name">"<spring:message code='site.name'/>"</span><br>
            <div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
                <span itemprop="addressLocality"><spring:message code='info.city'/></span>,
                <span itemprop="streetAddress"><spring:message code='info.address'/></span>,
                <span itemprop="postalCode"><spring:message code='info.postalCode'/></span>
            </div>
            <div>
                <spring:message code='phone'/>.:
                <a itemprop="telephone" href="<spring:message code='info.phone.full'/>"><spring:message code='info.phone'/></a>,&nbsp;
                <a itemprop="telephone" href="<spring:message code='info.phone.full'/>"><spring:message code='info.phone1'/></a><br>
                E-mail: <a itemprop="email" href="<spring:message code='info.email'/>"><spring:message code='info.email'/></a>
            </div>
            <noindex>
                <div class="social">
                    <a href="http://www.facebook.com/euroreparatii.md" target="_blank" class="fb" rel="nofollow"></a>
                    <a href="http://twitter.com" target="_blank" class="twitter" rel="nofollow"></a>
                    <a href="http://ok.ru" target="_blank" class="ok" rel="nofollow"></a>
                    <a href="http://plus.google.com" target="_blank" class="google-plus" rel="nofollow"></a>
                    <a href="http://youtube.com" target="_blank" class="youtube" rel="nofollow"></a>
                </div>
            </noindex>
        </div>
    </div>
</footer>