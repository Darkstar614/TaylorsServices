import thinktank.taylors.Candidate
import thinktank.taylors.Client
import thinktank.taylors.News
import thinktank.taylors.Role
import thinktank.taylors.User
import thinktank.taylors.UserRole

class BootStrap {

	def clientService	
	def candidateService
	def newsService

	def init = { servletContext ->
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def clientRole = new Role(authority: 'ROLE_USER').save(flush: true)
		def candidateRole = new Role(authority: 'ROLE_CAN').save(flush: true)

		def testUser = new User(username: 'manager', password:'thinktank55')
		testUser.save(flush: true)

		UserRole.create testUser, adminRole, true
		
		if (News.count() == 0 ) {
			// if no news in the database, create some test data
			newsService.createNews("First post", "Curly", new Date())
			newsService.createNews("Second post", "Furly", new Date() + 1)
			newsService.createNews("Third post", "Joe", new Date() + 5)
			newsService.createNews("Fourth post", "Bobby", new Date() +2)
			newsService.createNews("Fifth post", "Ricky", new Date() + 7)
			newsService.createNews("Sixth post", "Ted", new Date() + 3)
			newsService.createNews("Seventh post", "Hank", new Date() + 20)
			newsService.createNews("Eighth post", "Timmy", new Date() + 4)
			newsService.createNews("Ninth post", "Curly", new Date() + 6)
			newsService.createNews("Tenth post", "Curly", new Date() + 12)
			newsService.createNews("Eleventh post", "Ron", new Date() + 2)
			newsService.createNews("Twelfth post", "Curly", new Date())
		}

		if (Client.count() == 0 ) {
			// if no clients in the database, create some test data
			def client
			client = clientService.createClient("Fakes And Stuff LLC", "test@test.com")
			clientService.registerClient(client, "client${client.id.toString()}")
			client = clientService.createClient("Other Brackets INC", "fake@test.com")
			clientService.registerClient(client, "client${client.id.toString()}")
			client = clientService.createClient("Fathbruckner Ltd", "steve@test.com")
			clientService.registerClient(client, "client${client.id.toString()}")
			client = clientService.createClient("Harvard Law", "steve@test.com")
			clientService.registerClient(client, "client${client.id.toString()}")
			client = clientService.createClient("Fenders R US", "steve@test.com")
			clientService.registerClient(client, "client${client.id.toString()}")
			client = clientService.createClient("Junkstation", "steve@test.com")
			clientService.registerClient(client, "client${client.id.toString()}")
		}
		
		if (Candidate.count() == 0 ) {
			// if no candidates in the database, create some test data
			def candidate
			candidate = candidateService.createCandidate("Napoleon", "Dynamite")
			candidateService.registerCandidate(candidate, "candidate${candidate.id.toString()}")
			candidate = candidateService.createCandidate("John", "Leonardo")
			candidateService.registerCandidate(candidate, "candidate${candidate.id.toString()}")
			candidate = candidateService.createCandidate("Steven", "Fathbrckner")
			candidateService.registerCandidate(candidate, "candidate${candidate.id.toString()}")
			candidate = candidateService.createCandidate("Rick", "Grimes")
			candidateService.registerCandidate(candidate, "candidate${candidate.id.toString()}")
			candidate = candidateService.createCandidate("Greg", "Gulman")
			candidateService.registerCandidate(candidate, "candidate${candidate.id.toString()}")
			candidate = candidateService.createCandidate("Bob", "Costas")
			candidateService.registerCandidate(candidate, "candidate${candidate.id.toString()}")
		}
		
	}

	def destroy = {
	}
}
