<%@ page import="thinktank.taylors.Client"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<meta name="nav" content="client" />
<g:set var="entityName"
	value="${message(code: 'client.label', default: 'Client')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<div id="list-client" class="content scaffold-list" role="main">
		<h1>
			<g:message code="default.list.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>

		<div class="right-align">
			<g:link class="create link-font-increase-subtle" action="create">Create New Client</g:link>
		</div>

		<g:each in="${clientInstanceList}" status="i" var="clientInstance">
			<div class="panel panel-primary hover">
				<div class="panel-heading">
					<h4>
						${fieldValue(bean: clientInstance, field: "companyName")}
					</h4>
				</div>
				<g:link action="show" id="${clientInstance.id}">
					<div class="panel-body">
						<div class="float pad-right">
							<img
								src="${resource(dir:'assets/clients',file:clientInstance.id.toString() + '.jpg')}"
								alt="Client Image" />
						</div>

						<div class="block black-text">
							${fieldValue(bean: clientInstance, field: "summary")}
							<br /> <strong>City:</strong>
							${fieldValue(bean: clientInstance, field: "city")}
							<br /> <strong>State:</strong>
							${fieldValue(bean: clientInstance, field: "state")}
						</div>

					</div>
					<div class="panel-footer">
						<div class="float black-text">
							<strong>Phone:</strong> <span class="phone">
								${fieldValue(bean: clientInstance, field: "phoneNumber")}
							</span> <br /> <strong>Email:</strong>
							${fieldValue(bean: clientInstance, field: "emailAddress")}
						</div>
						<br />
						<div class="right-align">
							<g:form url="[resource:clientInstance, action:'delete']"
								method="DELETE">
								<fieldset class="buttons">
									<g:link class="edit" action="edit" resource="${clientInstance}">
										<g:message code="default.button.edit.label" default="Edit" />
									</g:link>
									<g:actionSubmit class="delete" action="delete"
										value="${message(code: 'default.button.delete.label', default: 'Delete')}"
										onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
								</fieldset>
							</g:form>
						</div>
					</div>
				</g:link>
			</div>
		</g:each>
		<div class="pagination">
			<g:paginate total="${clientInstanceCount ?: 0}" />
		</div>
	</div>
</body>
</html>