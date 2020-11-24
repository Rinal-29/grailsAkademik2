package sistemakademik

class Nilai {

    Mahasiswa mahasiswa
    MataKuliah mataKuliah
    Integer uts
    Integer uas

    static constraints = {
        uts nullable: false
        uas nullable: false
    }
}
