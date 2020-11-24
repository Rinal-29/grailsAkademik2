package sistemakademik

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USER"])
class JadwalController {

    def index() {
        def jadwal = Jadwal.list()
        [listJadwal: jadwal]
    }

    @Secured(["ROLE_ADMIN"])
    def create() {
        def mahasiswa = Mahasiswa.list()
        def dosen = Dosen.list()
        def matkul = MataKuliah.list()
        def tahunAkademik = TahunAkademik.list()
        def ruangan = Ruangan.list()
        [
                mahasiswa: mahasiswa,
                dosen: dosen,
                matkul: matkul,
                tahunAkademik: tahunAkademik,
                ruangan: ruangan
        ]
    }

    def save() {
        def jadwal = new Jadwal(params)
        def mahasiswa = Mahasiswa.list()
        def dosen = Dosen.list()
        def matkul = MataKuliah.list()
        def tahunAkademik = TahunAkademik.list()
        def ruangan = Ruangan.list()

        jadwal.validate()
        if (jadwal.hasErrors()){
            flash.message = "${message(code: 'input.error')}"
            render(view: "create", model: [
                    jadwal: jadwal,
                    dosen: dosen,
                    matkul: matkul,
                    tahunAkademik: tahunAkademik,
                    ruangan: ruangan,
                    mahasiswa: mahasiswa
            ])
            return
        } else {
            jadwal.save flush: true, failOnError: true
            redirect(controller: "jadwal", action: "index", params: [lang: params.lang])
        }
    }

    @Secured(["ROLE_ADMIN"])
    def edit() {
        def jadwal = Jadwal.get(params.id)
        def mahasiswa = Mahasiswa.list()
        def dosen = Dosen.list()
        def matkul = MataKuliah.list()
        def tahunAkademik = TahunAkademik.list()
        def ruangan = Ruangan.list()
        [
                jadwal: jadwal,
                dosen: dosen,
                matkul: matkul,
                tahunAkademik: tahunAkademik,
                ruangan: ruangan,
                mahasiswa: mahasiswa
        ]
    }

    def update() {
        def jadwal = Jadwal.get(params.id)
        jadwal.properties = params
        jadwal.save flush:true, failOnError: true
        redirect(controller: "jadwal", action: "index", params: [lang: params.lang])
    }

    @Secured(["ROLE_ADMIN"])
    def delete() {
        def jadwal = Jadwal.get(params.id)
        jadwal.delete()
        redirect(controller: "jadwal", action: "index", params: [lang: params.lang])
    }
}
