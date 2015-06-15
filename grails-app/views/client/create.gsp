<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'client.label', default: 'Client')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	</div>
	<div id="create-client" class="content scaffold-create" role="main">
		<h1>
			<g:message code="default.create.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				<h3>
					${flash.message}
				</h3>
			</div>
		</g:if>
		<br />
		<g:hasErrors bean="${clientInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${clientInstance}" var="error">
					<li
						<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
							error="${error}" /></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<g:form url="[resource:clientInstance, action:'save']"
			enctype="multipart/form-data">
			<fieldset class="form">
				<g:render template="form" />
				<label for="username"> Username: <span
					class="required-indicator">*</span>
				</label>
				<g:field class="username" type="text" name="username" />
				<g:remoteLink class="link-button" action="validateUsername"
					params="{username:\$('.username').val()}"
					onSuccess="enableCreateButton()" update="username-error">Check Availability</g:remoteLink>
				<br /> <span id="username-error"></span>
			</fieldset>
			<fieldset class="buttons">
				<g:submitButton id="create-client-button" disabled="true"
					name="create" class="save btn btn-primary"
					value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
