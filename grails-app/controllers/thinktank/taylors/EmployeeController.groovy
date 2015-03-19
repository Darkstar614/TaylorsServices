package thinktank.taylors

class EmployeeController {

    def index() { 
		Employee employee = new Employee(firstName: 'Bob', lastName: 'Bobby', dateOfBirth: '01/01/1987')
		[ employee:employee ]
	}
}
