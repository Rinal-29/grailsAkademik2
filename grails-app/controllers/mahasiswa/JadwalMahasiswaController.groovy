package mahasiswa

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import sistemakademik.Jadwal
import sistemakademik.Mahasiswa

@Secured(["ROLE_USER"])
class JadwalMahasiswaController {
    SpringSecurityService springSecurityService

    def index() {
        def mhs = Mahasiswa.findByNama(springSecurityService.principal.username)
        def jadwal = Jadwal.findAllByMahasiswa(mhs)
        [listJadwal : jadwal]
    }
}
