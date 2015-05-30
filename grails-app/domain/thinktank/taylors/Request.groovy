package thinktank.taylors

class Request {

	Date dateRequested
	String clientId
	
	static hasMany = [requestDetail: RequestDetail]
	
    static constraints = {
		clientId blank: false, nullable: false
    }
}
