package thinktank.taylors


class Candidate {
	
	String firstName
	String lastName
	Date birthdate
	String address
	String city
	String state
	String zipCode
	String emailAddress
	String phoneNumber
	String skills
	String experience
	String education
	String salary
	boolean onAssignment
	
    static constraints = {
		
		firstName size: 1..20, blank: false, nullable: false
		lastName size: 1..30, blank: false, nullable: false
		birthdate blank: false, nullable: false
		address size: 5..20, blank: false, nullable: false
		city size: 1..30, blank:false, nullable: false
		state size: 2..2, blank:false, nullable: false
		zipCode size: 5..5, blank:false, nullable: false
		emailAddress email:true
		phoneNumber size: 10..10, blank:false, nullable: false
		skills size: 1..100, blank:false, nullable: false
		experience size: 0..500, blank: false, nullable: false
		education size: 1..30, blank: false, nullable: false
		salary size: 1..10, blank: false, nullable: false
		onAssignment blank: false, nullable: false
    }
	
	static mapping = {
//		id generator: 'guid'
	}
}
