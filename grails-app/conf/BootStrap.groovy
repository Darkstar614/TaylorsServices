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

		def testUser = new User(username: 'manager', password:'thinktank55', clientId: 0, candidateId: 0)
		testUser.save(flush: true)

		UserRole.create testUser, adminRole, true

		//clients
		////////////////////////////////////////////////////////////////////////////
		
		testUser = new User(username: 'client1', password:'password', clientId: 1, candidateId: 0)
		testUser.save(flush: true)

		UserRole.create testUser, clientRole, true
		
		testUser = new User(username: 'client2', password:'password', clientId: 2, candidateId: 0)
		testUser.save(flush: true)

		UserRole.create testUser, clientRole, true
		
		testUser = new User(username: 'client3', password:'password', clientId: 3, candidateId: 0)
		testUser.save(flush: true)

		UserRole.create testUser, clientRole, true
		
		testUser = new User(username: 'client4', password:'password', clientId: 4, candidateId: 0)
		testUser.save(flush: true)

		UserRole.create testUser, clientRole, true
		
		testUser = new User(username: 'client5', password:'password', clientId: 5, candidateId: 0)
		testUser.save(flush: true)

		UserRole.create testUser, clientRole, true
		
		testUser = new User(username: 'client6', password:'password', clientId: 6, candidateId: 0)
		testUser.save(flush: true)

		UserRole.create testUser, clientRole, true
		
		//candidates
		////////////////////////////////////////////////////////////////////////
		
		testUser = new User(username: 'candidate1', password:'password', clientId: 0, candidateId: 1)
		testUser.save(flush: true)

		UserRole.create testUser, candidateRole, true
		
		testUser = new User(username: 'candidate2', password:'password', clientId: 0, candidateId: 2)
		testUser.save(flush: true)

		UserRole.create testUser, candidateRole, true
		
		testUser = new User(username: 'candidate3', password:'password', clientId: 0, candidateId: 3)
		testUser.save(flush: true)

		UserRole.create testUser, candidateRole, true
		
		testUser = new User(username: 'candidate4', password:'password', clientId: 0, candidateId: 4)
		testUser.save(flush: true)

		UserRole.create testUser, candidateRole, true
		
		testUser = new User(username: 'candidate5', password:'password', clientId: 0, candidateId: 5)
		testUser.save(flush: true)

		UserRole.create testUser, candidateRole, true
		
		testUser = new User(username: 'candidate6', password:'password', clientId: 0, candidateId: 6)
		testUser.save(flush: true)

		UserRole.create testUser, candidateRole, true
		
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
			clientService.createClient("Fakes And Stuff LLC", "test@test.com")
			clientService.createClient("Other Brackets INC", "fake@test.com")
			clientService.createClient("Fathbruckner Ltd", "steve@test.com")
			clientService.createClient("Harvard Law", "steve@test.com")
			clientService.createClient("Fenders R US", "steve@test.com")
			clientService.createClient("Junkstation", "steve@test.com")
		}
		
		if (Candidate.count() == 0 ) {
			// if no candidates in the database, create some test data
			candidateService.createCandidate("Napoleon", "Dynamite")
			candidateService.createCandidate("John", "Leonardo")
			candidateService.createCandidate("Steven", "Fathbrckner")
			candidateService.createCandidate("Rick", "Grimes")
			candidateService.createCandidate("Greg", "Gulman")
			candidateService.createCandidate("Bob", "Costas")
		}
		
	}

	def destroy = {
	}
}
