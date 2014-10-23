package cvista_login

class Admin {
	String username
	String email
	String password

    static constraints = {
		username()
		email()
		password()
    }
}
