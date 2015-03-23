<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Render Domain</title>
</head>
<body>
	<table>
		<tr>
			<td>First Name</td>
			<td>Last Name</td>
			<td>Age</td>
		</tr>
		<g:each in="${employeeInstanceList}" var="employee">
			<tr>
				<td>
					${employee.lastName}
				</td>
				<td>
					${employee.firstName}
				</td>
				<td>
					${employee.age}
				</td>
			</tr>
		</g:each>
	</table>
	<g:link action="create">
    Create new Employee
    </g:link>
</body>
</html>