package sistemakademik

class AdminController {

    def index() {
        def listAkun = Admin.list()
        [listAkun: listAkun]
    }
}
