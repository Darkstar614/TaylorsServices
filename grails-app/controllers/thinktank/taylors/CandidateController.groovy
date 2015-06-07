package thinktank.taylors



import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CandidateController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def candidateService
	def springSecurityService

	@Secured(['ROLE_USER', 'ROLE_ADMIN'])
	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond Candidate.list(params), model:[candidateInstanceCount: Candidate.count()]
	}

	@Secured(['ROLE_USER', 'ROLE_ADMIN'])
	def show(Candidate candidateInstance) {
		respond candidateInstance
	}
	
	@Secured(['ROLE_CAN'])
	def profile() {
		def candidateId = springSecurityService.currentUser.candidateId
		def candidateInstance = Candidate.findById(candidateId)
		respond candidateInstance, view:'show'
	}

	@Secured(['ROLE_USER', 'ROLE_ADMIN'])
	def create() {
		respond new Candidate(params)
	}

	@Secured(['ROLE_USER'])
	def confirmRequest() {
		def selectedCandidates = candidateService.getSelectedCandidates(params)

		if (selectedCandidates.size() > 3) {
			flash.message = "Please select no more than 3 candidates"
			redirect view:'index'
		}
		[candidatesList:selectedCandidates]

	}
	
	@Transactional
	@Secured(['ROLE_ADMIN', 'ROLE_CAN'])
	def save(Candidate candidateInstance) {
		if (candidateInstance == null) {
			notFound()
			return
		}

		if (candidateInstance.hasErrors()) {
			respond candidateInstance.errors, view:'create'
			return
		}

		candidateInstance.save flush:true

		confirmRequest.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'candidate.label', default: 'Candidate'),
					candidateInstance.id
				])
				redirect candidateInstance
			}
			'*' { respond candidateInstance, [status: CREATED] }
		}
	}

	@Secured(['ROLE_ADMIN', 'ROLE_CAN'])
	def edit(Candidate candidateInstance) {
		respond candidateInstance
	}

	@Transactional
	@Secured(['ROLE_ADMIN', 'ROLE_CAN'])
	def update(Candidate candidateInstance) {
		if (candidateInstance == null) {
			notFound()
			return
		}

		if (candidateInstance.hasErrors()) {
			respond candidateInstance.errors, view:'edit'
			return
		}

		candidateInstance.save flush:true

		confirmRequest.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Candidate.label', default: 'Candidate'),
					candidateInstance.id
				])
				redirect candidateInstance
			}
			'*'{ respond candidateInstance, [status: OK] }
		}
	}

	@Transactional
	@Secured(['ROLE_ADMIN'])
	def delete(Candidate candidateInstance) {

		if (candidateInstance == null) {
			notFound()
			return
		}

		candidateInstance.delete flush:true

		confirmRequest.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'Candidate.label', default: 'Candidate'),
					candidateInstance.id
				])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		confirmRequest.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'candidate.label', default: 'Candidate'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
