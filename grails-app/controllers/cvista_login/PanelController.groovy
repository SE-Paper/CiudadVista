package cvista_login

class PanelController {

	def main() { }
	def blank() { }
	
	def retrieveLatestMessages() {
		def messages = Mensaje.listOrderByDate(order: 'desc', max:10)
		[messages:messages.reverse()]
	}
	
	def submitMessage(String message) {
		new Mensaje(nickname: session.nickname, message:message).save()
		render "<script>retrieveLatestMessages()</script>"
	}
}
