<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="MobileTags" prefix="m" %>

<div id="topbar">
	<c:if test="${account == null}">
		<a href="<c:url value="/signin" />">Sign In</a>
	</c:if>
	<c:if test="${account != null}">
		<s:url var="profileUrl" value="/members/{profileKey}">
			<s:param name="profileKey" value="${account.memberProfileKey}" />
		</s:url>
		<a href="${profileUrl}"><c:out value="${account.firstName}" escapeXml="true"/></a> | <a href="<c:url value="/invite" />">Invite</a> | <a href="<c:url value="/events" />">Events</a> | <a href="<c:url value="/settings" />">Settings</a> | <a href="<c:url value="/signout" />">Sign Out</a>
	</c:if>
</div>
<h1>
	<a href="<c:url value="/" />">Greenhouse</a>
</h1>