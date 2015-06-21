package thinktank.taylors

import grails.transaction.Transactional

@Transactional
class UserService {

    def Boolean usernameExists(String username) {
		if (User.findByUsername(username)) {
			return true
		}else {
			return false
		}
    }
	
	def Boolean validUsername(String username) {
		if (username.matches("[a-z0-9_-]{3,15}")) {
			return true
		}else {
			return false
		}
	}
}
