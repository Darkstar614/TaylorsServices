package thinktank.taylors

class EmployeeController {

    def index() {
		redirect(action: "list", params: params)
	}
	
	def save() {
		def employee = new Employee(params)
		employee.save()
		render "Success!"
	}
	
	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [employeeInstanceList: Employee.list(params), employeeInstanceTotal: Employee.count()]
    }
	
	def create(){
		
	}
}
