<%@ page import="thinktank.taylors.Candidate"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<meta name="nav" content="candidate" />
<g:set var="entityName"
	value="${message(code: 'candidate.label', default: 'Candidate')}" />
<title>Selected Candidates</title>
</head>
<body>
	<div id="list-candidate" class="content scaffold-list" role="main">
		<h1>Confirm Candidates Selection</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:each in="${candidatesList}" var="candidate">
			<li>
				${candidate.firstName} ${candidate.lastName}
			</li>

			<br />
		</g:each>
		<g:form controller="request" action="submitRequest">
			<g:each in="${candidatesList}" var="candidate">
				<g:hiddenField name="candidates" value="${candidate.id}" />
			</g:each>
			<g:actionSubmit value="Submit Request" action="submitRequest" />
		</g:form>

	</div>
</body>
</html>
