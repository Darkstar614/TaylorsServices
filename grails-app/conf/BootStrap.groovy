import thinktank.taylors.Employee
import thinktank.taylors.News

class BootStrap {

	def init = { servletContext ->
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
	}
	def destroy = {
	}
}
