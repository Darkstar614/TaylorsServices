
<%@ page import="thinktank.taylors.Client" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-client" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-client" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list client">
			
				<g:if test="${clientInstance?.companyName}">
				<li class="fieldcontain">
					<span id="companyName-label" class="property-label"><g:message code="client.companyName.label" default="Company Name" /></span>
					
						<span class="property-value" aria-labelledby="companyName-label"><g:fieldValue bean="${clientInstance}" field="companyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.summary}">
				<li class="fieldcontain">
					<span id="summary-label" class="property-label"><g:message code="client.summary.label" default="Summary" /></span>
					
						<span class="property-value" aria-labelledby="summary-label"><g:fieldValue bean="${clientInstance}" field="summary"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="client.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${clientInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="client.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${clientInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="client.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${clientInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.zipCode}">
				<li class="fieldcontain">
					<span id="zipCode-label" class="property-label"><g:message code="client.zipCode.label" default="Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${clientInstance}" field="zipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.emailAddress}">
				<li class="fieldcontain">
					<span id="emailAddress-label" class="property-label"><g:message code="client.emailAddress.label" default="Email Address" /></span>
					
						<span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${clientInstance}" field="emailAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.phoneNumber}">
				<li class="fieldcontain">
					<span id="phoneNumber-label" class="property-label"><g:message code="client.phoneNumber.label" default="Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${clientInstance}" field="phoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.partnersSince}">
				<li class="fieldcontain">
					<span id="partnersSince-label" class="property-label"><g:message code="client.partnersSince.label" default="Partners Since" /></span>
					
						<span class="property-value" aria-labelledby="partnersSince-label"><g:formatDate date="${clientInstance?.partnersSince}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:clientInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${clientInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
