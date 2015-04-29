
<%@ page import="thinktank.taylors.Client" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<meta name="nav" content="client"/>
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-client" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-client" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="companyName" title="${message(code: 'client.companyName.label', default: 'Company Name')}" />
					
						<g:sortableColumn property="summary" title="${message(code: 'client.summary.label', default: 'Summary')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'client.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'client.city.label', default: 'City')}" />
					
						<g:sortableColumn property="state" title="${message(code: 'client.state.label', default: 'State')}" />
					
						<g:sortableColumn property="zipCode" title="${message(code: 'client.zipCode.label', default: 'Zip Code')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clientInstanceList}" status="i" var="clientInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${clientInstance.id}">${fieldValue(bean: clientInstance, field: "companyName")}</g:link></td>
					
						<td>${fieldValue(bean: clientInstance, field: "summary")}</td>
					
						<td>${fieldValue(bean: clientInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: clientInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: clientInstance, field: "state")}</td>
					
						<td>${fieldValue(bean: clientInstance, field: "zipCode")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${clientInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
