package thinktank.taylors

class News {
	
	String title
	String content
	Date postDate
	String author
	

    static constraints = {
		title size: 5..20, blank: false, nullable: false
		content size: 5..700, blank: false, nullable: false
		postDate blank: false, nullable: false
		author size: 1..20, blank:false, nullable: false
    }
	
	static mapping = {
		content type: 'text'
		sort "postDate"
	}
}