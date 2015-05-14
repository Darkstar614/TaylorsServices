import java.util.Date;

import thinktank.taylors.Candidate
import thinktank.taylors.Client
import thinktank.taylors.Employee
import thinktank.taylors.News
import thinktank.taylors.Role
import thinktank.taylors.User
import thinktank.taylors.UserRole

class BootStrap {

	def clientService

	def init = { servletContext ->
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

		def testUser = new User(username: 'manager', password:'thinktank55')
		testUser.save(flush: true)

		UserRole.create testUser, adminRole, true

		testUser = new User(username: 'tom', password:'password')
		testUser.save(flush: true)

		UserRole.create testUser, userRole, true

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

		def news = new News()
		news.title = 'First post'
		news.content = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		news.postDate = new Date() + 6
		news.author = 'Curly'
		news.save()

		news = new News()
		news.title = 'Second post'
		news.content = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		news.postDate = new Date() + 2
		news.author = 'Larry'
		news.save()

		news = new News()
		news.title = 'Third post'
		news.content = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		news.postDate = new Date() + 7
		news.author = 'Moe'
		news.save()

		news = new News()
		news.title = 'Fourth post'
		news.content = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		news.postDate = new Date()
		news.author = 'Moe'
		news.save()

		news = new News()
		news.title = 'Fifth post'
		news.content = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		news.postDate = new Date() + 2
		news.author = 'Shimp'
		news.save()

		news = new News()
		news.title = 'Sixth post'
		news.content = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		news.postDate = new Date()
		news.author = 'Steve'
		news.save()

		news = new News()
		news.title = 'Seventh post'
		news.content = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		news.postDate = new Date()
		news.author = 'Rick'
		news.save()

		news = new News()
		news.title = 'Eighth post'
		news.content = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		news.postDate = new Date()
		news.author = 'Bobby'
		news.save()

		news = new News()
		news.title = 'Ninth post'
		news.content = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		news.postDate = new Date()
		news.author = 'Timmy'
		news.save()

		news = new News()
		news.title = 'Tenth post'
		news.content = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		news.postDate = new Date() + 5
		news.author = 'Timmy2'
		news.save()

		news = new News()
		news.title = 'Eleventh post'
		news.content = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		news.postDate = new Date() + 9
		news.author = 'Timmy3'
		news.save()

		news = new News()
		news.title = 'Twelfth post'
		news.content = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		news.postDate = new Date() + 13
		news.author = 'Last Guy Jones'
		news.save()


		if (Client.count() == 0 ) {
			// if no clients in the database, create some test data
			clientService.createClient("Fakes And Stuff LLC", "test@test.com")
			clientService.createClient("Other Brackets INC", "fake@test.com")
			clientService.createClient("Fathbruckner Ltd", "steve@test.com")
		}

		def candidate = new Candidate()
		candidate.firstName = 'Joe'
		candidate.lastName = 'Jib'
		candidate.birthdate = new Date() + 5 
		candidate.address = ' 123 Turn pike road'
		candidate.city = 'That city'
		candidate.state = 'mi'
		candidate.zipCode = '12345'
		candidate.emailAddress = 'email@gil.com'
		candidate.phoneNumber = '1234567890'
		candidate.skills = 'lumber jack, metal worker and shinnagins'
		candidate.save()
		
		candidate = new Candidate()
		candidate.firstName = 'Janice'
		candidate.lastName = 'Jibronie'
		candidate.birthdate = new Date() + 8
		candidate.address = ' 123 Killer street'
		candidate.city = 'Other place'
		candidate.state = 'mi'
		candidate.zipCode = '12345'
		candidate.emailAddress = 'email@gil.com'
		candidate.phoneNumber = '1234567890'
		candidate.skills = 'lumber jack, metal worker and shinnagins'
		candidate.save()
		
		
	}

	def destroy = {
	}
}
