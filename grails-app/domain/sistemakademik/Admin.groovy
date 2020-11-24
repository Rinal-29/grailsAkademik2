package sistemakademik

class Admin {

    String name
    String email
    String password
    Date date = new Date()

    static constraints = {
        name nullable: false
        email email: true
        password nullable: false
    }
}
