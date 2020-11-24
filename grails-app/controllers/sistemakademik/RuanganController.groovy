package sistemakademik

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USER"])
class RuanganController {

    def index() {
        def ruangan = Ruangan.list()
        [ruangan:ruangan]
    }

    @Secured(["ROLE_ADMIN"])
    def create() {
        def jurusan = Jurusan.list()
        def matkul = MataKuliah.list()
        [jurusan: jurusan, matkul: matkul]
    }

    def save() {
        def ruangan = new Ruangan(params)
        def jurusan = Jurusan.list()
        def matkul = MataKuliah.list()

        ruangan.validate()
        if(ruangan.hasErrors()){
            flash.message = "${message(code: 'input.error')}"
            render(view: "create", model: [ruangan: ruangan,jurusan: jurusan, matkul: matkul])
        }else {
            ruangan.save flush:true, failOnError: true
            redirect(controller: "ruangan", action: "index", params: [lang: params.lang])
        }
    }

    @Secured(["ROLE_ADMIN"])
    def edit() {
        def ruangan = Ruangan.get(params.id)
        def jurusan = Jurusan.list()
        def matkul = MataKuliah.list()
        [ruangan: ruangan, jurusan: jurusan, matkul: matkul]
    }

    def update() {
        def ruangan = Ruangan.get(params.id)
        ruangan.properties = params
        ruangan.save flush:true, failOnError:true
        redirect(controller: "ruangan", action: "index", params: [lang: params.lang])
    }

    @Secured(["ROLE_ADMIN"])
    def delete() {
        def ruangan = Ruangan.get(params.id)
        ruangan.delete()
        redirect(controller: "ruangan", action: "index", params:[lang:params.lang])
    }
}
