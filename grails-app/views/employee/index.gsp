<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Render Domain</title>
	</head>
	<body>
		<g:form action="save">
			<label for="lastName">Last Name</label>
			<g:textField name="lastName" value="${employee.lastName}"/>
			<br/>
			<label for="firstName">First Name</label>
			<g:textField name="firstName" value="${employee.firstName}"/>
			<br/>
			<label for="dateOfBirth">Birthdate</label>
			<g:textField name="age" value="${employee.dateOfBirth}"/>
			<br/>
			<g:submitButton name="create" value="Save" />
		</g:form>
	</body>
</html>