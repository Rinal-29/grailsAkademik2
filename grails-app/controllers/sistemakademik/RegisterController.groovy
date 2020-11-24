package sistemakademik

import grails.plugin.springsecurity.annotation.Secured
import sistemakademik.auth.Role
import sistemakademik.auth.User
import sistemakademik.auth.UserRole

@Secured(["permitAll"])
class RegisterController {

    def index() {}

    def save () {
        def akun = new User(params)
        if (akun.validate()) {

            akun.save flush:true, failOnError: true
            
            def role = Role.findWhere(authority: "ROLE_USER")
            if (!akun.authorities.contains(role)){
                UserRole.create(akun, role, true)
            }
            redirect action: "auth", controller:"login"

        } else {
            flash.message = "Lengkapi semua data dengan benar"
            redirect action: "index"
        }
    }
}
