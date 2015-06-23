<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<meta name="nav" content="client" />
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
		<g:form id="clientForm" url="[resource:clientInstance, action:'save']"
			enctype="multipart/form-data">
			<fieldset class="form">
				<g:render template="form" />
				<label for="username"> Username: <span
					class="required-indicator">*</span>
				</label>
				<g:field class="username required" type="text" name="username" />
				<g:remoteLink class="link-button" action="validateUsername"
					params="{username:\$('.username').val()}"
					onSuccess="enableDummyButton()" update="username-error">Check Availability</g:remoteLink>
				<br />
				<label for="password"> Password: <span
					class="required-indicator">*</span>
				</label>
				<g:field class="password required" type="password" name="password" />
				<br /> <span id="username-error"></span>
				<span id="password-error" class="message-red"></span>
			</fieldset>
			<fieldset class="buttons">
			<a id="dummy-create-entity" href="javascript:validateUserPass();" class="save btn btn-primary">Create</a>
				<g:submitButton id="create-entity-button" disabled="true"
					name="create" class="save btn btn-primary"
					value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
