
<%@ page import="thinktank.taylors.Client"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'client.label', default: 'Client')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<div id="show-client" class="content scaffold-show" role="main">
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>

		<div class="panel panel-primary">
			<div class="panel-heading">
				<h4>
					${fieldValue(bean: clientInstance, field: "companyName")}
				</h4>
			</div>
			<div class="panel-body">
				<div>
					<asset:image
						src="clients/${fieldValue(bean: clientInstance, field: "id")}.jpg"
						alt="temp icon" />
					<br /> <br />
				</div>

				<div class="block">
					${fieldValue(bean: clientInstance, field: "summary")}
					<br /> <br /> <br /> <br /> <strong>City:</strong>
					${fieldValue(bean: clientInstance, field: "city")}
					<br /> <strong>State:</strong>
					${fieldValue(bean: clientInstance, field: "state")}
					<br /> <strong>Phone:</strong>
					<span class="phone">${fieldValue(bean: clientInstance, field: "phoneNumber")}</span>
					<br /> <strong>Email:</strong>
					${fieldValue(bean: clientInstance, field: "emailAddress")}
				</div>

			</div>
			<br />
			<div class="right-align">
				<g:form url="[resource:clientInstance, action:'delete']"
					method="DELETE">
					<fieldset class="buttons">
						<g:link class="edit link-font-increase pad-right" action="edit"
							resource="${clientInstance}">
							<g:message code="default.button.edit.label" default="Edit" />
						</g:link>
					</fieldset>
				</g:form>
			</div>
		</div>
	</div>
</body>
</html>
