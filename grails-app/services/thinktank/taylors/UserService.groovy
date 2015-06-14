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
}
