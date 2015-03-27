
<%@ page import="thinktank.taylors.News"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'news.label', default: 'News')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#list-news" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="list-news" class="content scaffold-list" role="main">
		<h1>
			<g:message code="default.list.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>


		<g:each in="${newsInstanceList}" status="i" var="newsInstance">

			<div class="list-group">
				<a href="#" class="list-group-item">
					<h4 class="list-group-item-heading">
						${fieldValue(bean: newsInstance, field: "title")}
					</h4>
					<p class="list-group-item-text">
						${fieldValue(bean: newsInstance, field: "content")}
					</p> <br />
					<p>
						<g:formatDate format="MM-dd-yy" date="${newsInstance.postDate}" />
					</p> <br />
					<p>
						Author:
						${fieldValue(bean: newsInstance, field: "author")}
					</p> <br /> <g:form url="[resource:newsInstance, action:'delete']"
						method="DELETE">
						<fieldset class="buttons">
							<g:link class="edit" action="edit" resource="${newsInstance}">
								<g:message code="default.button.edit.label" default="Edit" />
							</g:link>
							<g:actionSubmit class="delete" action="delete"
								value="${message(code: 'default.button.delete.label', default: 'Delete')}"
								onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</fieldset>
					</g:form>
				</a>
			</div>

		</g:each>

		<div class="pagination">
			<g:paginate total="${newsInstanceCount ?: 0}" />
		</div>
	</div>
</body>
</html>
