package sistemakademik

class LoginController {

    def index() {}

    def dashboard() {
        redirect action: "index", controller: "dashboard"
    }
}
