package thinktank.taylors

import grails.transaction.Transactional

@Transactional
class ClientService {

	def Client createClient(String companyName, String email) {
		Client client = new Client()
		client.companyName = companyName
		client.summary = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		client.address = '123 Fake Street'
		client.city = 'Columbus'
		client.state = 'OH'
		client.zipCode = '43010'
		client.emailAddress = email
		client.phoneNumber = '1234567890'
		client.partnersSince = new Date()
		client.save()
	}
	
	def registerClient(Client client, String username) {
		def clientUser = new User(username: username, password:'password')
        clientUser.setClient(client)
		clientUser.save()	
		UserRole.create clientUser, Role.findByAuthority('ROLE_USER'), true
	}
}
