
<%@ page import="thinktank.taylors.Request"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'request.label', default: 'Request')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<div id="list-request" class="content scaffold-list" role="main">
		<h1>
			<g:message code="default.list.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<table class="cellspace">
			<thead>
				<tr>

					<g:sortableColumn property="requestNumber"
						title="${message(code: 'request.requestNumber.label', default: 'Request Number')}" />

					<g:sortableColumn property="candidateId"
						title="${message(code: 'request.candidateId.label', default: 'Candidate Id')}" />

					<g:sortableColumn property="clientId"
						title="${message(code: 'request.clientId.label', default: 'Client Id')}" />

					<g:sortableColumn property="dateRequested"
						title="${message(code: 'request.dateRequested.label', default: 'Date Requested')}" />



				</tr>
			</thead>
			<tbody>
				<g:each in="${requestInstanceList}" status="i" var="requestInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td>
							${fieldValue(bean: requestInstance, field: "requestNumber")}
						</td>

						<td><g:link action="show" id="${requestInstance.id}">
								${fieldValue(bean: requestInstance, field: "candidateId")}
							</g:link></td>

						<td>
							${fieldValue(bean: requestInstance, field: "clientId")}
						</td>

						<td><g:formatDate date="${requestInstance.dateRequested}" /></td>



					</tr>
				</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${requestInstanceCount ?: 0}" />
		</div>
	</div>
</body>
</html>
