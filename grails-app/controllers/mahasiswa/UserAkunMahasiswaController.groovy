package mahasiswa

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import sistemakademik.auth.User

@Secured(["ROLE_USER"])
class UserAkunMahasiswaController {
    SpringSecurityService springSecurityService

    def index() {
        def user = User.findByUsername(springSecurityService.principal.username)
        [user: user]
    }

    def save() {
        def user = User.get(params.id)
        user.properties = params
        user.save flush:true, failOnError: true
        redirect(action: "index")
    }
}
