
<%@ page import="thinktank.taylors.News" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<meta name="nav" content="news" />
		<g:set var="entityName" value="${message(code: 'news.label', default: 'News')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-news" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-news" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list news">
			
				<g:if test="${newsInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="news.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${newsInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${newsInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="news.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${newsInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${newsInstance?.postDate}">
				<li class="fieldcontain">
					<span id="postDate-label" class="property-label"><g:message code="news.postDate.label" default="Post Date" /></span>
					
						<span class="property-value" aria-labelledby="postDate-label"><g:formatDate date="${newsInstance?.postDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${newsInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="news.author.label" default="Author" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:fieldValue bean="${newsInstance}" field="author"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:newsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${newsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
