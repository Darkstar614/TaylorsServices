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
				${candidate.firstName}
				${candidate.lastName}
			</li>
			
			<br />
		</g:each>
		<g:form controller="request" action="submitRequest">
		<g:hiddenField name="firstCandidate" value="${candidatesList[0].id}" />
		<g:hiddenField name="secondCandidate" value="${candidatesList[1].id}" />
		<g:hiddenField name="thirdCandidate" value="${candidatesList[2].id}" />
		<g:actionSubmit value="Submit Request" action="submitRequest"/>
		</g:form>
		
	</div>
</body>
</html>
