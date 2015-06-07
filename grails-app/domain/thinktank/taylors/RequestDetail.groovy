package thinktank.taylors

class RequestDetail {

//	String candidateId	
	
	static belongsTo = [request: Request, candidate :Candidate]
	
    static constraints = {
    }
}
