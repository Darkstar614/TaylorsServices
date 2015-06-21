package thinktank.taylors

import grails.transaction.Transactional

import java.util.UUID;

@Transactional
class CandidateService {

	def springSecurityService
	
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
		
		def allSkills = ['bowhunting', 'hacking', 'bo-staff', 'programming', 'database', 'accounting']
		def skillSet = []
		def random = new Random()
		
		while (skillSet.size() < 3) {
			def i = random.nextInt(allSkills.size())
			if (!skillSet.contains(allSkills[i])) {
				skillSet << allSkills[i]
			}
		}
		
		candidate.skills = skillSet.join(", ")
		candidate.experience = 'Has worked in lumber yard. Can use various woodworking tools.'
		candidate.education = 'Bachelor\'s of Science'
		candidate.salary = '$25,000'
		candidate.onAssignment = false
		candidate.save()
	}
	
	def registerCandidate(Candidate candidate, String username) {
		def candidateUser = new User(username: username, password:'password')
		candidateUser.setCandidate(candidate)
		candidateUser.save()
		UserRole.create candidateUser, Role.findByAuthority('ROLE_CAN'), true
	}
	
	def getSelectedCandidates(params) {		
		def checkedCandidates = params.list('requestCandidate')
		
		return Candidate.getAll(checkedCandidates)
	}
	
	def saveRequest(params) {
		def candidates = params.list('candidates')
		
		def clientId = springSecurityService.currentUser.clientId
		
		def candidatesRequest = new Request(dateRequested: new Date(), approved: 'N')
		
		candidatesRequest.setClient(Client.findById(clientId))
		
		def requestDetail
		
		for (candidateId in candidates) {
			requestDetail = new RequestDetail()
			requestDetail.setCandidate(Candidate.findById(candidateId))
			candidatesRequest.addToRequestDetail(requestDetail)
		}
		
		candidatesRequest.save()
	}
}
