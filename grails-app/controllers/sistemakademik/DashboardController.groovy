package sistemakademik

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USER"])
class DashboardController {

    def index() {
        String test = params.lang
        def mahasiswa = Mahasiswa.count
        def dosen = Dosen.count
        def matkul = MataKuliah.count
        def ruangan = Ruangan.list().size()
        def jurusan = Jurusan.count
        def penasehat = PenasehatAkademik.count
        def jadwal = Jadwal.count
        def ta = TahunAkademik.count
        def nilai = Nilai.count
        def krs = Krs.count
        [
                mahasiswa: mahasiswa,
                dosen: dosen,
                matkul: matkul,
                ruangan: ruangan,
                jurusan: jurusan,
                penasehat: penasehat,
                jadwal: jadwal,
                ta: ta,
                nilai: nilai,
                krs: krs
        ]
    }
}
