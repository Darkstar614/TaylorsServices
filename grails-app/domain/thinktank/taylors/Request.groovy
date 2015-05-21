package thinktank.taylors

class Request {

	String candidateId
	String clientId
	Date dateRequested
	
    static constraints = {
		
		candidateId blank: false, nullable: false
		clientId blank: false, nullable: false
				
    }
}
