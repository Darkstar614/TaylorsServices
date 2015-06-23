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

		<h2>Are you sure you want to submit a request for the candidates
			below?</h2>
		<g:each in="${candidatesList}" status="i" var="candidateInstance">
			<div class="panel panel-info hover">
				<div class="panel-heading">
					<h4>
						${fieldValue(bean: candidateInstance, field: "firstName")}
						${fieldValue(bean: candidateInstance, field: "lastName")}
					</h4>
				</div>
				<div class="panel-body">
					<div class="float image-padding">
						<asset:image
							src="candidates/${fieldValue(bean: candidateInstance, field: "id")}.jpg"
							alt="temp icon" />
					</div>

					<div class="block black-text">
						<strong>City:</strong>
						${fieldValue(bean: candidateInstance, field: "city")}<br /> <strong>State:</strong>
						${fieldValue(bean: candidateInstance, field: "state")}<br /> <strong>Email
							Address:</strong>
						${fieldValue(bean: candidateInstance, field: "emailAddress")}<br />
						<strong>Phone Number:</strong> <span class="phone"> ${fieldValue(bean: candidateInstance, field: "phoneNumber")}
						</span><br /> <strong>Experience:</strong>
						${fieldValue(bean: candidateInstance, field: "experience")}<br /> <strong>Skills:</strong>
						${fieldValue(bean: candidateInstance, field: "skills")}<br /> <strong>Education:</strong>
						${fieldValue(bean: candidateInstance, field: "education")}<br /> <strong>Salary:</strong>
						${fieldValue(bean: candidateInstance, field: "salary")}<br />
					</div>
				</div>
			</div>
		</g:each>
		<g:form controller="request" action="submitRequest">
			<g:each in="${candidatesList}" var="candidate">
				<g:hiddenField name="candidates" value="${candidate.id}" />
			</g:each>
			<div class="right-align">
				<g:actionSubmit value="Submit Request" action="submitRequest"
					class="btn btn-primary btn-lg" />
			</div>
		</g:form>

	</div>
</body>
</html>
