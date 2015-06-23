
<%@ page import="thinktank.taylors.Candidate"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<meta name="nav" content="candidate" />
<g:set var="entityName"
	value="${message(code: 'candidate.label', default: 'Candidate')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<div id="show-candidate" class="content scaffold-show" role="main">
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>

		<div class="panel panel-info">
			<div class="panel-heading">
				<h4>
					${fieldValue(bean: candidateInstance, field: "firstName")}
					${fieldValue(bean: candidateInstance, field: "lastName")}
				</h4>
			</div>
			<div class="panel-body">
				<div>
					<img
						src="${resource(dir:'assets/candidates',file:candidateInstance.id.toString() + '.jpg')}"
						alt="Candidate Image" /> <br /> <br />
				</div>

				<div class="block">
					<strong>Address:</strong>
					${fieldValue(bean: candidateInstance, field: "address")}
					<br /> <strong>City:</strong>
					${fieldValue(bean: candidateInstance, field: "city")}
					<br /> <strong>State:</strong>
					${fieldValue(bean: candidateInstance, field: "state")}
					<br /> <strong>Zip Code:</strong>
					${fieldValue(bean: candidateInstance, field: "zipCode")}
					<br /> <strong>Phone:</strong> <span class="phone"> ${fieldValue(bean: candidateInstance, field: "phoneNumber")}
					</span> <br /> <strong>Email:</strong>
					${fieldValue(bean: candidateInstance, field: "emailAddress")}
					<br /> <strong>Skills:</strong>
					${fieldValue(bean: candidateInstance, field: "skills")}
				</div>

			</div>
			<br />
			<sec:ifAnyGranted roles="ROLE_ADMIN">
				<div class="float">
					<a class="edit link-font-increase pad-left"
						href="${resource(dir:'resumes',file:candidateInstance.id.toString() + '.docx')}">RESUME</a>
				</div>
				<div class="right-align">

					<g:form url="[resource:clientInstance, action:'delete']"
						method="DELETE">
						<fieldset class="buttons">
							<g:link class="edit link-font-increase pad-right" action="edit"
								resource="${candidateInstance}">
								<g:message code="default.button.edit.label" default="Edit" />
							</g:link>
						</fieldset>
					</g:form>
				</div>
			</sec:ifAnyGranted>
			<sec:ifAnyGranted roles="ROLE_USER,ROLE_CAN">
				<div class="float">
					<a class="edit link-font-increase pad-left"
						href="${resource(dir:'resumes',file:candidateInstance.id.toString() + '.docx')}">RESUME</a>
				</div>

				<div class="right-align">
					<fieldset class="buttons">
						<g:link class="edit link-font-increase pad-right" action="edit"
							resource="${candidateInstance}">
							<g:message code="default.button.edit.label" default="Edit" />
						</g:link>
					</fieldset>
				</div>
			</sec:ifAnyGranted>
		</div>
	</div>
</body>
</html>
