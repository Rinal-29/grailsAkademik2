package sistemakademik

class Ruangan {

    String namaRuangan
    Jurusan jurusan
    MataKuliah mataKuliah

    static constraints = {
        namaRuangan nullable: false
    }
}
