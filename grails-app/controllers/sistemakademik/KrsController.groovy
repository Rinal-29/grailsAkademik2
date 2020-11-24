package sistemakademik

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USER"])
class KrsController {

    def index() {
        def krs = Krs.list()
        [lisKrs: krs]
    }

    @Secured(["ROLE_ADMIN"])
    def create() {
        def mahasiswa = Mahasiswa.list()
        def mataKuliah = MataKuliah.list()
        def tahunAkademik = TahunAkademik.list()
        def penasehat = PenasehatAkademik.list()
        [
                mahasiswa: mahasiswa,
                matakuliah: mataKuliah,
                tahunAkademi: tahunAkademik,
                penasehat: penasehat
        ]
    }

    def save() {
        def krs = new Krs(params)
        krs.save flush: true, failOnError: true
        redirect(action: "index", controller: "krs", params: [lang: params.lang])
    }

    @Secured(["ROLE_ADMIN"])
    def edit() {
        def krs = Krs.get(params.id)
        def mahasiswa = Mahasiswa.list()
        def mataKuliah = MataKuliah.list()
        def tahunAkademik = TahunAkademik.list()
        def penasehat = PenasehatAkademik.list()
        [
                krs: krs,
                mahasiswa: mahasiswa,
                matakuliah: mataKuliah,
                tahunAkademi: tahunAkademik,
                penasehat: penasehat
        ]
    }

    def update() {
        def krs = Krs.get(params.id)
        krs.properties = params
        krs.save flush: true, failOnError: true
        redirect(action: "index", controller: "krs", params: [lang: params.lang])
    }

    @Secured(["ROLE_ADMIN"])
    def delete() {
        def krs = Krs.get(params.id)
        krs.delete()
        redirect(action: "index", controller: "krs", params: [lang: params.lang])
    }
}
