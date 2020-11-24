package sistemakademik

class LoginController {

    def index() {}

    def dashboard() {
        def username = params.username
        redirect action: "index", controller: "dashboard", params: username
    }
}
