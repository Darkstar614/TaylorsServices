package thinktank.taylors



import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Transactional(readOnly = true)
class NewsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	@Secured(['ROLE_USER', 'ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 6, 100)
        respond News.list(params), model:[newsInstanceCount: News.count()]
    }

	@Secured(['ROLE_ADMIN'])
    def create() {
        respond new News(params)
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def save(News newsInstance) {
        if (newsInstance == null) {
            notFound()
            return
        }

        if (newsInstance.hasErrors()) {
            respond newsInstance.errors, view:'create'
            return
        }

        newsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'news.label', default: 'News'), newsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*' { respond newsInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_ADMIN'])
    def edit(News newsInstance) {
        respond newsInstance
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def update(News newsInstance) {
        if (newsInstance == null) {
            notFound()
            return
        }

        if (newsInstance.hasErrors()) {
            respond newsInstance.errors, view:'edit'
            return
        }

        newsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'News.label', default: 'News'), newsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ respond newsInstance, [status: OK] }
        }
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def delete(News newsInstance) {

        if (newsInstance == null) {
            notFound()
            return
        }

        newsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'News.label', default: 'News'), newsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'news.label', default: 'News'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
