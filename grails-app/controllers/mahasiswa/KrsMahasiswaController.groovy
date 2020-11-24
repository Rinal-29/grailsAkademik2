package mahasiswa

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import sistemakademik.Krs
import sistemakademik.Mahasiswa

@Secured(["ROLE_USER"])
class KrsMahasiswaController {
    SpringSecurityService springSecurityService

    def index() {
        def mhs = Mahasiswa.findByNama(springSecurityService.principal.username)
        def krs = Krs.findAllByMahasiswa(mhs)
        if (krs) {
            [listKrs: krs]
        }
    }
}