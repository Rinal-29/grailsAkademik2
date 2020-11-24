package mahasiswa

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import sistemakademik.Mahasiswa
import sistemakademik.Nilai

@Secured(["ROLE_USER"])
class KhsMahasiswaController {

    SpringSecurityService springSecurityService

    def index() {
        def mhs = Mahasiswa.findByNama(springSecurityService.principal.username)
        def listNilai = Nilai.findAllByMahasiswa(mhs)
        [listNilai: listNilai]
    }
}
