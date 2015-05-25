package thinktank.taylors

class Request {

	String requestNumber
	String candidateId
	String clientId
	Date dateRequested
	
    static constraints = {
		
		requestNumber blank: false, nullable: false
		candidateId blank: false, nullable: false
		clientId blank: false, nullable: false
				
    }
}
