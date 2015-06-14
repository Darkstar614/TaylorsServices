package thinktank.taylors



import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.context.ServletContextHolder
import org.springframework.web.multipart.MultipartFile

@Transactional(readOnly = true)
class ClientController {

	static allowedMethods = [save: "POST", update: ["PUT", "POST"], delete: "DELETE"]

	def springSecurityService
	def fileUploadService
	def userService

	@Secured(['ROLE_ADMIN'])
	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond Client.list(params), model:[clientInstanceCount: Client.count()]
	}

	@Secured(['ROLE_ADMIN'])
	def show(Client clientInstance) {
		respond clientInstance
	}

	@Secured(['ROLE_USER'])
	def profile() {
		def clientId = springSecurityService.currentUser.clientId
		def clientInstance = Client.findById(clientId)
		respond clientInstance, view:'show'
	}

	@Secured(['ROLE_ADMIN'])
	def create() {
		respond new Client(params)
	}

	@Secured(['ROLE_ADMIN'])
	def validateUsername() {
		if (userService.usernameExists(params.username)) {
			render "<p class=\"message-red\">Username of ${params.username} already exists. Please Choose another one</p>"
		} else {
			render "<p class=\"message-green\">Username of ${params.username} is available!</p>"
		}
	}

	@Transactional
	@Secured(['ROLE_ADMIN'])
	def save(Client clientInstance) {

		if (clientInstance == null) {
			notFound()
			return
		}

		if (clientInstance.hasErrors()) {
			respond clientInstance.errors, view:'create'
			return
		}

		if (userService.usernameExists(params.username)) {
			flash.message = "Username of ${params.username} was already in use. Please try again."
			redirect view:'create'
			return
		}

		clientInstance.save flush:true

		def uploadedFile = request.getFile("cfile")
		fileUploadService.persistFile(uploadedFile, "${clientInstance.id}.jpg", "assets/clients/")

		def newUser = new User(username: params.username, password:'password', clientId: clientInstance.id, candidateId: 0)
		newUser.save(flush: true)

		UserRole.create newUser, Role.findByAuthority('ROLE_USER'), true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'client.label', default: 'Client'),
					clientInstance.id
				])
				redirect clientInstance
			}
			'*' { respond clientInstance, [status: CREATED] }
		}
	}

	@Secured(['ROLE_ADMIN'])
	def edit(Client clientInstance) {
		respond clientInstance
	}

	@Transactional
	@Secured(['ROLE_ADMIN'])
	def update(Client clientInstance) {
		if (clientInstance == null) {
			notFound()
			return
		}

		if (clientInstance.hasErrors()) {
			respond clientInstance.errors, view:'edit'
			return
		}

		clientInstance.save flush:true

		def uploadedFile = request.getFile("cfile")
		fileUploadService.persistFile(uploadedFile, "${clientInstance.id}.jpg", "assets/clients/")

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Client.label', default: 'Client'),
					clientInstance.id
				])
				redirect clientInstance
			}
			'*'{ respond clientInstance, [status: OK] }
		}
	}

	@Transactional
	@Secured(['ROLE_ADMIN'])
	def delete(Client clientInstance) {

		if (clientInstance == null) {
			notFound()
			return
		}

		fileUploadService.deleteImageFromFolder(clientInstance.id.toString(), 'clients')

		clientInstance.delete flush:true


		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'Client.label', default: 'Client'),
					clientInstance.id
				])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'client.label', default: 'Client'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
