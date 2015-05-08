import thinktank.taylors.Client
import thinktank.taylors.Employee
import thinktank.taylors.News
import thinktank.taylors.Role
import thinktank.taylors.User
import thinktank.taylors.UserRole

class BootStrap {

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
		news.postDate = new Date()
		news.author = 'Curly'
		news.save()
		
		news = new News()
		news.title = 'Second post'
		news.content = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		news.postDate = new Date()
		news.author = 'Larry'
		news.save()
		
		news = new News()
		news.title = 'Third post'
		news.content = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		news.postDate = new Date()
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
		news.postDate = new Date()
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
		news.postDate = new Date() + 2
		news.author = 'Timmy2'
		news.save()
		
		news = new News()
		news.title = 'Eleventh post'
		news.content = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		news.postDate = new Date() + 1
		news.author = 'Timmy3'
		news.save()
		
		news = new News()
		news.title = 'Twelfth post'
		news.content = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		news.postDate = new Date() + 3
		news.author = 'Last Guy Jones'
		news.save()
		
		def client = new Client()
		client.companyName = 'First Company'
		client.summary = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		client.address = 'test address'
		client.city = 'Columbus'
		client.state = 'OH'
		client.zipCode = '12345'
		client.emailAddress = 'test@test.com'
		client.phoneNumber = '1234567890'
		client.partnersSince = new Date() + 1
		client.save()
		
		client = new Client()
		client.companyName = 'Second Company'
		client.summary = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		client.address = 'a different address'
		client.city = 'Nowhere'
		client.state = 'TN'
		client.zipCode = '12343'
		client.emailAddress = 'test@test.com'
		client.phoneNumber = '1234567890'
		client.partnersSince = new Date() + 1
		client.save()
		
		client = new Client()
		client.companyName = 'Third Company'
		client.summary = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		client.address = 'a third address 123'
		client.city = 'Bakersfield'
		client.state = 'CA'
		client.zipCode = '22345'
		client.emailAddress = 'test@test.com'
		client.phoneNumber = '1234567890'
		client.partnersSince = new Date() + 1
		client.save()
	}
	def destroy = {
	}
}
