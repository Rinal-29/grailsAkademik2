package sistemakademik

class Jadwal {

    Mahasiswa mahasiswa
    Dosen dosen
    MataKuliah mataKuliah
    String hari
    String jam
    TahunAkademik tahunAkademik
    Ruangan ruangan

    static constraints = {
        hari nullable: false
        jam nullable: false
    }
}
