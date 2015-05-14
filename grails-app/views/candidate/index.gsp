
<%@ page import="thinktank.taylors.Candidate"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<meta name="nav" content="candidate" />
<g:set var="entityName"
	value="${message(code: 'candidate.label', default: 'Candidate')}" />
<title>TPS Candidates</title>
</head>
<body>

	<div id="list-candidate" class="content scaffold-list" role="main">
		<h1>TPS Candidates</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>

		<g:form controller="candidate" action="index">
		<g:actionSubmit value="Submit Candidates"/>
			<g:each in="${candidateInstanceList}" status="i"
				var="candidateInstance">


				<div class="panel panel-info">
					<div class="panel-heading">
						<h4 class="float">
							${fieldValue(bean: candidateInstance, field: "firstName")}
							${fieldValue(bean: candidateInstance, field: "lastName")}
							
						</h4>
						<div class="right-align"><g:checkBox name="${fieldValue(bean: candidateInstance, field: "id")}" value="${false}" /></div>
					</div>
					<div class="panel-body">
						<div class="float">
							<asset:image src="apple-touch-icon-retina.png" alt="temp icon" />
						</div>

						<strong>Address:</strong>
						${fieldValue(bean: candidateInstance, field: "address")}<br /> <strong>City:</strong>
						${fieldValue(bean: candidateInstance, field: "city")}<br /> <strong>State:</strong>
						${fieldValue(bean: candidateInstance, field: "state")}<br /> <strong>Zip
							Code:</strong>
						${fieldValue(bean: candidateInstance, field: "zipCode")}<br /> <strong>Email
							Address:</strong>
						${fieldValue(bean: candidateInstance, field: "emailAddress")}<br />
						<strong>Phone Number:</strong>
						${fieldValue(bean: candidateInstance, field: "phoneNumber")}<br />
						<strong>Skills:</strong>
						${fieldValue(bean: candidateInstance, field: "skills")}
					</div>

				</div>

			</g:each>
			<g:actionSubmit value="Submit Candidates"/>
		</g:form>

		<div class="pagination">
			<g:paginate action="index" total="${candidateInstanceCount ?: 0}" />
		</div>
	</div>
</body>
</html>
