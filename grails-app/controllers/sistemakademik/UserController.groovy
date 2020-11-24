package sistemakademik

import grails.plugin.springsecurity.annotation.Secured
import sistemakademik.auth.Role
import sistemakademik.auth.User
import sistemakademik.auth.UserRole

@Secured(["ROLE_ADMIN"])
class UserController {

    def index() {
        def user = UserRole.list()
        [users:user]
    }

    def create() {}

    def save() {
        def user = new User(params)


        user.validate()
        if (user.hasErrors()){
            flash.message = "${message(code: 'input.error')}"
            render(view: "create", model: [user: user])
            return
        } else {
            user.save flush:true, failOnErorr: true
            def role = Role.findWhere(authority: "ROLE_USER")
            if (!user.authorities.contains(role)) {
                UserRole.create(user, role, true)
            }
            redirect(action: "index", controller: "user", params: [lang: params.lang])
        }
    }

    def delete() {
        def user = User.get(params.id)
        user.delete()
        redirect action: "index"
    }

    def edit() {
        def user = User.get(params.id)
        [users: user]
    }
}
