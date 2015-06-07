package thinktank.taylors

class Request {

	Date dateRequested
	char approved
	
	static hasMany = [requestDetail: RequestDetail]
	static belongsTo = [client : Client]
	
    static constraints = {
    }
}
