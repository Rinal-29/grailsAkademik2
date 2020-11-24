package sistemakademik

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USER"])
class DashboardController {
    SpringSecurityService springSecurityService

    def index() {
        def mhs = Mahasiswa.findByNama(springSecurityService.principal.username)
        def listNilaiuser = Nilai.findAllByMahasiswa(mhs).size()
        def listKrsUser = Krs.findAllByMahasiswa(mhs).size()
        def listJadwalUser = Jadwal.findAllByMahasiswa(mhs).size()

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
                krs: krs,
                listNilai: listNilaiuser,
                listKrs: listKrsUser,
                listJadwal: listJadwalUser
        ]
    }
}
