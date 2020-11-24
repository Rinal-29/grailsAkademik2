package sistemakademik

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USER"])
class DosenController {

    def index () {
        def dosen = Dosen.list()
        [listDosen: dosen]
    }

    @Secured(["ROLE_ADMIN"])
    def create() {
        def jurusan = Jurusan.list()
        [jurusan: jurusan]
    }

    def save() {
        def dosen = new Dosen(params)
        def jurusan = Jurusan.list()

        dosen.validate()
        if(dosen.hasErrors()){
            flash.message = "${message(code: 'input.error')}"
            render(view: "create", model: [dosen: dosen, jurusan: jurusan])
            return
        } else {
            dosen.save flush: true, failOnErorr: true
            redirect(action: "index", controller: "dosen", params: [lang: params.lang])
        }


        if (dosen.validate()) {
        } else  {
            redirect(action: "create", controller: "dosen", params: [lang: params.lang])
        }
    }

    @Secured(["ROLE_ADMIN"])
    def edit() {
        def dosen = Dosen.get(params.id)
        def jurusan = Jurusan.list()
        [dosen: dosen, jurusan: jurusan]
    }

    def update() {
        def dosen = Dosen.get(params.id)
        if (dosen.validate()){
            dosen.properties = params
            dosen.save flush: true, failOnError:true
            redirect(action: "index", controller: "dosen", params: [lang: params.lang])
        } else {
            flash.message = "Masukkan Semua Data Dengan Benar"
            redirect(action: "edit", controller: "dosen", params: [lang: params.lang, id: params.id])
        }
    }

    @Secured(["ROLE_ADMIN"])
    def delete() {
        def dosen = Dosen.get(params.id)
        dosen.delete()
        redirect(controller: "dosen", action: "index", params: [lang :params.lang])
    }
}
