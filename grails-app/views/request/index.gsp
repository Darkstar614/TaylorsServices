
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
		<h3>
			<g:if test="${flash.approve}">
				<div class="message message-green" role="status">
					<strong> ${flash.approve}
					</strong>
				</div>
			</g:if>
			<g:if test="${flash.deny}">
				<div class="message" role="status">
					<strong> ${flash.deny}
					</strong>
				</div>
			</g:if>
		</h3>
		<g:each in="${requestInstanceList}" status="i" var="requestInstance">

			<div class="panel panel-primary">
				<div class="panel-heading">
					<div class="float">
						<h4>Request Number: #${fieldValue(bean: requestInstance,
							field: "id")}</h4>
						<p>
							Date:
							<g:formatDate date="${requestInstance.dateRequested}" />
						</p>
					</div>
					<br />
					<div class="right-align">
						<h4>
							STATUS:
							${requestInstance.approved}
						</h4>
					</div>
				</div>
				<div class="panel-body">
					<div class="float pad-right">
						<strong>Client: </strong>
						${fieldValue(bean: requestInstance, field: "client.companyName")}
						<br />
						<asset:image
							src="clients/${fieldValue(bean: requestInstance, field: "client.id")}.jpg"
							alt="temp icon" class="pad-bottom"/>
					</div>
					<strong>Candidates:</strong>
					<table class="cellspace">
						<tbody>
							<tr>
								<td>
									${requestInstance.requestDetail[0].candidate.firstName}
								</td>
								<td>
									${requestInstance.requestDetail[0].candidate.lastName}
								</td>
							</tr>
							<g:if test="${requestInstance.requestDetail[1] != null}">

								<tr>
									<td>
										${requestInstance.requestDetail[1].candidate.firstName}
									</td>
									<td>
										${requestInstance.requestDetail[1].candidate.lastName}
									</td>
								</tr>
							</g:if>
							<g:if test="${requestInstance.requestDetail[2] != null}">
								<tr>
									<td>
										${requestInstance.requestDetail[2].candidate.firstName}
									</td>
									<td>
										${requestInstance.requestDetail[2].candidate.lastName}
									</td>
								</tr>
							</g:if>
						</tbody>
					</table>
					<div class="clear-both">
						<g:form controller="request" action="approveRequest">
							<g:hiddenField name="requestId" value="${requestInstance.id}" />
							<div class="float">
								<g:actionSubmit value="Deny Request" action="denyRequest"
									onclick="return confirm('Are you sure?')" />
							</div>
							<div class="right-align">
								<g:actionSubmit value="Approve Request" action="approveRequest"
									onclick="return confirm('Are you sure?')" />
							</div>
						</g:form>
					</div>
				</div>
			</div>
		</g:each>
		<div class="pagination">
			<g:paginate total="${requestInstanceCount ?: 0}" />
		</div>
	</div>
</body>
</html>
