package sistemakademik

class Dosen {

    String nama
    String nip
    String alamat
    Jurusan jurusan

    static constraints = {
        nama nullable: false
        nip nullable: false
        alamat nullable: true
    }
}
