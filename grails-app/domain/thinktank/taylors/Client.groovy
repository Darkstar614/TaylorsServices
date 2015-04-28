package thinktank.taylors

class Client {
	
	String companyName;
	String summary;
	String address;
	String city;
	String state;
	String zipCode;
	String emailAddress;
	String phoneNumber;
	Date partnersSince
	

    static constraints = {
		companyName size: 5..20, blank: false, nullable: false
		summary size: 0..500, blank: true, nullable: true
		address size: 5..20, blank: false, nullable: false
		city size: 1..30, blank:false, nullable: false
		state size: 2..2, blank:false, nullable: false
		zipCode size: 5..5, blank:false, nullable: false
		emailAddress email:true
		phoneNumber size: 10..10, blank:false, nullable: false	
    }
}
