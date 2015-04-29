package thinktank.taylors

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class EmployeeController {

    def index() {
		redirect(action: "list", params: params)
	}
	
	def save() {
		def employee = new Employee(params)
		employee.save()
		render (view:'list.gsp')
	}
	
	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [employeeInstanceList: Employee.list(params), employeeInstanceTotal: Employee.count()]
    }
	
	def create(){
		
	}
}
