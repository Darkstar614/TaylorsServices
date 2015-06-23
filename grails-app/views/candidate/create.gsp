<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<meta name="nav" content="candidate" />
<g:set var="entityName"
	value="${message(code: 'candidate.label', default: 'Candidate')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<div id="create-candidate" class="content scaffold-create" role="main">
		<h1>
			<g:message code="default.create.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${candidateInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${candidateInstance}" var="error">
					<li
						<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
							error="${error}" /></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<g:form id="candidateForm"
			url="[resource:candidateInstance, action:'save']"
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
				<br /> <label for="password"> Password: <span
					class="required-indicator">*</span>
				</label>
				<g:field class="password required" type="password" name="password" />
				<br /> <span id="username-error"></span> <span id="password-error"
					class="message-red"></span>
			</fieldset>
			<fieldset class="buttons">
				<a id="dummy-create-entity" href="javascript:validateUserPass();"
					class="save btn btn-primary">Create</a>
				<g:submitButton id="create-entity-button" disabled="true"
					name="create" class="save btn btn-primary"
					value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
