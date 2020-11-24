package sistemakademik

class Mahasiswa {

    Integer nim
    String nama
    String alamat
    String tanggalLahir
    Integer noTelp
    Jurusan jurusan

    static constraints = {
        nim nullable: false
        nama nullable: false
        alamat nullable: true
        tanggalLahir nullable: false
        noTelp nullable: false
    }
}
