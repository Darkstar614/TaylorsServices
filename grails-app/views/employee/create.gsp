<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<meta name="nav" content="candidate"/>
		<title>Render Domain</title>
	</head>
	<body>
		<g:form controller="employee" action="save">
            <label>First Name: </label>
            <g:textField name="firstName"/><br/>

            <label>Last Name: </label>
            <g:textField name="lastName"/><br/>

            <label>Age: </label>
            <g:textField name="age"/><br/>

            <g:actionSubmit value="Save"/>
        </g:form>
	</body>
</html>