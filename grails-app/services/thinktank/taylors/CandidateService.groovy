package thinktank.taylors

import grails.transaction.Transactional
import java.util.UUID;

@Transactional
class CandidateService {

	def springSecurityService
	
	def createCandidate(String firstName, String lastName) {
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
	
	def getSelectedCandidates(params) {		
		def checkedCandidates = params.list('requestCandidate')
		
		return Candidate.getAll(checkedCandidates)
	}
	
	def saveRequest(params) {
		def candidates = params.list('candidates')
		
		def clientId = springSecurityService.currentUser.clientId
		
		def Request candidateRequest	
		
		def UUID uuid = UUID.randomUUID()
		
		for (candidateId in candidates) {
			candidateRequest = new Request()
			candidateRequest.requestNumber = uuid
			candidateRequest.candidateId = candidateId
			candidateRequest.clientId = clientId
			candidateRequest.dateRequested = new Date()
			candidateRequest.save()
		}
	}
}
