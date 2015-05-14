
<%@ page import="thinktank.taylors.Candidate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidate.label', default: 'Candidate')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-candidate" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-candidate" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list candidate">
			
				<g:if test="${candidateInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="candidate.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${candidateInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="candidate.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${candidateInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.birthdate}">
				<li class="fieldcontain">
					<span id="birthdate-label" class="property-label"><g:message code="candidate.birthdate.label" default="Birthdate" /></span>
					
						<span class="property-value" aria-labelledby="birthdate-label"><g:formatDate date="${candidateInstance?.birthdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="candidate.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${candidateInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="candidate.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${candidateInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="candidate.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${candidateInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.zipCode}">
				<li class="fieldcontain">
					<span id="zipCode-label" class="property-label"><g:message code="candidate.zipCode.label" default="Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${candidateInstance}" field="zipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.emailAddress}">
				<li class="fieldcontain">
					<span id="emailAddress-label" class="property-label"><g:message code="candidate.emailAddress.label" default="Email Address" /></span>
					
						<span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${candidateInstance}" field="emailAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.phoneNumber}">
				<li class="fieldcontain">
					<span id="phoneNumber-label" class="property-label"><g:message code="candidate.phoneNumber.label" default="Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${candidateInstance}" field="phoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.skills}">
				<li class="fieldcontain">
					<span id="skills-label" class="property-label"><g:message code="candidate.skills.label" default="Skills" /></span>
					
						<span class="property-value" aria-labelledby="skills-label"><g:fieldValue bean="${candidateInstance}" field="skills"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:candidateInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${candidateInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
