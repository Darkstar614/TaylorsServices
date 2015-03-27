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
		news.content = 'Who is ldfngsjggnsoggohgouhngkosjhoujgnjffhfhfhfhfhfhfhfhwoehfughogwougwuogiuwieufghsoghigus'
		news.postDate = new Date()
		news.author = 'Curly'
		news.save()
		
		news = new News()
		news.title = 'Second post'
		news.content = 'Who is ldfngsjggnsoggohgouhngkosjhoujgnjffhfhfhfhfhfhfhfhwoehfughogwougwuogiuwieufghsoghigus'
		news.postDate = new Date()
		news.author = 'Larry'
		news.save()
		
		news = new News()
		news.title = 'Third post'
		news.content = 'Who is ldfngsjggnsoggohgouhngkosjhoujgnjffhfhfhfhfhfhfhfhwoehfughogwougwuogiuwieufghsoghigus'
		news.postDate = new Date()
		news.author = 'Moe'
		news.save()
		
		news = new News()
		news.title = 'Fith post'
		news.content = 'Who is ldfngsjggnsoggohgouhngkosjhoujgnjffhfhfhfhfhfhfhfhwoehfughogwougwuogiuwieufghsoghigus'
		news.postDate = new Date()
		news.author = 'Shimp'
		news.save()
	}
	def destroy = {
	}
}
