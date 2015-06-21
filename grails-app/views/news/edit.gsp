<%@ page import="thinktank.taylors.News" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<meta name="nav" content="news" />
		<g:set var="entityName" value="${message(code: 'news.label', default: 'News')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="edit-news" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${newsInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${newsInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:newsInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${newsInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
