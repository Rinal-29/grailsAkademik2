package sistemakademik

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN","ROLE_USER"])
class MahasiswaController {
    def index() {
        redirect action: "list"
    }

    @Secured(["ROLE_ADMIN"])
    def create() {
        def jurusan = Jurusan.list()
        [jurusan: jurusan]
    }

    def list () {
        def mahasiswa = Mahasiswa.list(params)
        [mahasiswa: mahasiswa]
    }

    def save () {
        def mahasiswa = new Mahasiswa(params)
        def jurusan = Jurusan.list()

        mahasiswa.validate()
        if (mahasiswa.hasErrors()){
            flash.message = "${message(code: 'input.error')}"
            render(view: "create", model: [mahasiswa: mahasiswa, jurusan: jurusan])
            return
        } else {
            mahasiswa.save flush:true, failOnError:true
            redirect(controller: "mahasiswa", action: "list", params: [lang: params.lang])
        }
    }

    @Secured(["ROLE_ADMIN"])
    def edit() {
        def mahasiswa = Mahasiswa.get(params.id)
        def jurusan =  Jurusan.list()
        [mhs:mahasiswa, jurusan: jurusan]
    }

    def update() {
        def mhs = Mahasiswa.get(params.id)
        if (mhs.validate()){
            mhs.properties = params
            mhs.save flush:true, failOnError:true
            redirect(controller: "mahasiswa", action: "list", params: [lang: params.lang])
        } else {
            flash.message = "Masukkan Semua data dengan benar"
            redirect(controller: "mahasiswa", action: "edit", params: [lang: params.lang, id: params.id] )
        }
    }

    @Secured(["ROLE_ADMIN"])
    def delete() {
        def mahasiswa = Mahasiswa.get(params.id)
        mahasiswa.delete()
        redirect(controller: "mahasiswa", action: "list", params: [lang: params.lang])
    }
}
