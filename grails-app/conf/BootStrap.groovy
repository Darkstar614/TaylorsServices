import thinktank.taylors.Employee

class BootStrap {

    def init = { servletContext ->
		def employee = new Employee()
		employee.firstName = 'John'
		employee.lastName = 'Leonardo'
		employee.age = 26
		employee.save()
		
		employee = new Employee()
		employee.firstName = 'Steven'
		employee.lastName = 'Fathbruckner'
		employee.age = 99
		employee.save()
		
		employee = new Employee()
		employee.firstName = 'Bob'
		employee.lastName = 'Marley'
		employee.age = 44
		employee.save()
		
		employee = new Employee()
		employee.firstName = 'Rick'
		employee.lastName = 'Grimes'
		employee.age = 41
		employee.save()
		
		employee = new Employee()
		employee.firstName = 'Abraham'
		employee.lastName = 'Ford'
		employee.age = 36
		employee.save()
		
    }
    def destroy = {
    }
}
