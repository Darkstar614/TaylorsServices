
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
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4>${fieldValue(bean: newsInstance, field: "title")}</h4>
				</div>
				<div class="panel-body">
					${fieldValue(bean: newsInstance, field: "content")}
				</div>
				<div class="panel-footer">
				<div class="float">
					<strong>Author:</strong>
					${fieldValue(bean: newsInstance, field: "author")}
					<br /><strong>Date:</strong>
					<g:formatDate format="MM-dd-yy" date="${newsInstance.postDate}" />
					</div>
					<br />
					<div class="right-align">
					<g:form url="[resource:newsInstance, action:'delete']"
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
					</div>
				</div>
			</div>
		</g:each>

		<div class="pagination">
			<g:paginate total="${newsInstanceCount ?: 0}" />
		</div>
	</div>
</body>
</html>
