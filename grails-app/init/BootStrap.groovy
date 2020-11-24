import sistemakademik.auth.Role
import sistemakademik.auth.User
import sistemakademik.auth.UserRole

class BootStrap {

    def init = { servletContext ->
//        def adminRole = Role.findOrSaveWhere(authority: "ROLE_ADMIN")
//        def userRole = Role.findOrSaveWhere(authority: "ROLE_USER")
//        def admin = User.findOrSaveWhere(username: "rinal", password: "rinal", email: "afrinal@gmail.com")
//        def user = User.findOrSaveWhere(username: "rinal2", password: "rinal2", email: "user@gmail.com")
//
//        if (!admin.authorities.contains(adminRole)) {
//            UserRole.create(admin, adminRole, true)
//        }
//
//        if (!user.authorities.contains(userRole)){
//            UserRole.create(user, userRole, true)
//        }
    }
    def destroy = {
    }
}
