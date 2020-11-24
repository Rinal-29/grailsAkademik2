package sistemakademik

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN"])
class TahunAkademikController {

    def index() {
        def tahunAkademik = TahunAkademik.list()
        [listTA: tahunAkademik]
    }

    def create() {}

    def save() {
        def tahunAkademik = new TahunAkademik(params)
        tahunAkademik.save flush: true,  failOnError: true
        redirect(action: "index", controller: "tahunAkademik", params: [lang:params.lang])
    }

    def edit() {
        def tahunAkademik = TahunAkademik.get(params.id)
        [listTA: tahunAkademik]
    }

    def update() {
        def tahunAkademik = TahunAkademik.get(params.id)
        tahunAkademik.properties = params
        tahunAkademik.save flush: true, failOnError: true
        redirect(action: "index", controller: "tahunAkademik", params: [lang: params.lang])
    }

    def delete() {
        def tahunAkademik = TahunAkademik.get(params.id)
        tahunAkademik.delete()
        redirect(action: "index", controller: "tahunAkademik", params: [lang: params.lang])
    }
}
