
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
				<h3>
					<strong> ${flash.message}
					</strong>
				</h3>
			</div>
		</g:if>

		<div class="candidateFilter">
			<h3>Filter By Skills:</h3>
			<label> <input type="checkbox" rel="bowhunting" />
				Bowhunting
			</label> <label> <input type="checkbox" rel="database" /> Database
			</label> <label> <input type="checkbox" rel="programming" />
				Programming
			</label> <label> <input type="checkbox" rel="accounting" />
				Accounting
			</label> <label> <input type="checkbox" rel="hacking" /> Hacking
			</label> <label> <input type="checkbox" rel="bo-staff" /> Bo-staff
			</label>
		</div>

		<g:form controller="candidate" action="confirmRequest">
			<ul class="results">
				<g:each in="${candidateInstanceList}" status="i"
					var="candidateInstance">
					<li class="${candidateInstance.skills.replaceAll(',', '')}">
						<div class="panel panel-info hover">
							<div class="panel-heading">
								<sec:ifAnyGranted roles="ROLE_USER">
									<h4 class="float">
										${fieldValue(bean: candidateInstance, field: "firstName")}
										${fieldValue(bean: candidateInstance, field: "lastName")}
									</h4>
									<div class="right-align">
										<g:checkBox name="requestCandidate"
											value="${fieldValue(bean: candidateInstance, field: "id")}"
											checked="false" />
									</div>
								</sec:ifAnyGranted>

								<sec:ifAnyGranted roles="ROLE_ADMIN">
									<h4>
										${fieldValue(bean: candidateInstance, field: "firstName")}
										${fieldValue(bean: candidateInstance, field: "lastName")}
									</h4>
								</sec:ifAnyGranted>
							</div>
							<g:link action="show" id="${candidateInstance.id}">
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
										<strong>Phone Number:</strong> <span class="phone">
											${fieldValue(bean: candidateInstance, field: "phoneNumber")}
										</span><br /> <strong>Experience:</strong>
										${fieldValue(bean: candidateInstance, field: "experience")}<br />
										<strong>Skills:</strong>
										${fieldValue(bean: candidateInstance, field: "skills")}<br /> <strong>Education:</strong>
										${fieldValue(bean: candidateInstance, field: "education")}<br />
										<strong>Salary:</strong>
										${fieldValue(bean: candidateInstance, field: "salary")}<br />
									</div>
								</div>
							</g:link>
						</div>
					</li>
				</g:each>
			</ul>
			<sec:ifAnyGranted roles="ROLE_USER">
				<div class="right-align">
					<g:actionSubmit class="btn btn-primary btn-lg"
						value="Submit Request" action="confirmRequest" />
				</div>
			</sec:ifAnyGranted>
		</g:form>

		<div class="pagination">
			<g:paginate action="index" total="${candidateInstanceCount ?: 0}" />
		</div>
	</div>
</body>
</html>
