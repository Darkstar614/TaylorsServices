package thinktank.taylors

import grails.transaction.Transactional

@Transactional
class CandidateService {

	def Candidate createCandidate(String firstName, String lastName) {
		Candidate candidate = new Candidate()
		candidate.firstName = firstName
		candidate.lastName = lastName
		candidate.birthdate = new Date()
		candidate.address = '123 Fake Street'
		candidate.city = 'Columbus'
		candidate.state = 'OH'
		candidate.zipCode = '43010'
		candidate.emailAddress = 'test@test.com'
		candidate.phoneNumber = '1234567890'
		candidate.skills = 'bowhunting, computer hacking, bo staff'
		candidate.save()
	}
}
