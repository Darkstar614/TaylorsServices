
<%@ page import="thinktank.taylors.Request" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'request.label', default: 'Request')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-request" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-request" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list request">
			
				<g:if test="${requestInstance?.candidateId}">
				<li class="fieldcontain">
					<span id="candidateId-label" class="property-label"><g:message code="request.candidateId.label" default="Candidate Id" /></span>
					
						<span class="property-value" aria-labelledby="candidateId-label"><g:fieldValue bean="${requestInstance}" field="candidateId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${requestInstance?.clientId}">
				<li class="fieldcontain">
					<span id="clientId-label" class="property-label"><g:message code="request.clientId.label" default="Client Id" /></span>
					
						<span class="property-value" aria-labelledby="clientId-label"><g:fieldValue bean="${requestInstance}" field="clientId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${requestInstance?.dateRequested}">
				<li class="fieldcontain">
					<span id="dateRequested-label" class="property-label"><g:message code="request.dateRequested.label" default="Date Requested" /></span>
					
						<span class="property-value" aria-labelledby="dateRequested-label"><g:formatDate date="${requestInstance?.dateRequested}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:requestInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${requestInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
