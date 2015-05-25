package thinktank.taylors



import static org.springframework.http.HttpStatus.*

import java.util.Date;

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Transactional(readOnly = false)
class RequestController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	def candidateService
	
	@Secured(['ROLE_ADMIN'])
	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Request.list(params), model:[requestInstanceCount: Request.count()]
    }
	
	@Secured(['ROLE_ADMIN'])
    def show(Request requestInstance) {
        respond requestInstance
    }
	
	@Secured(['ROLE_USER'])
	def submitRequest() {
		//put try catch block
		candidateService.saveRequest(params)		
	}
    
    @Transactional
	@Secured(['ROLE_ADMIN'])
    def save(Request requestInstance) {
        if (requestInstance == null) {
            notFound()
            return
        }

        if (requestInstance.hasErrors()) {
            respond requestInstance.errors, view:'create'
            return
        }

        requestInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'request.label', default: 'Request'), requestInstance.id])
                redirect requestInstance
            }
            '*' { respond requestInstance, [status: CREATED] }
        }
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def update(Request requestInstance) {
        if (requestInstance == null) {
            notFound()
            return
        }

        if (requestInstance.hasErrors()) {
            respond requestInstance.errors, view:'edit'
            return
        }

        requestInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Request.label', default: 'Request'), requestInstance.id])
                redirect requestInstance
            }
            '*'{ respond requestInstance, [status: OK] }
        }
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def delete(Request requestInstance) {

        if (requestInstance == null) {
            notFound()
            return
        }

        requestInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Request.label', default: 'Request'), requestInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'request.label', default: 'Request'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
