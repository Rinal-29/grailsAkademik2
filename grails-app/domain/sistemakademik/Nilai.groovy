package sistemakademik

class Nilai {

    String nim
    String nama
    MataKuliah mataKuliah
    Integer uts
    Integer uas

    static constraints = {
        nim nullable: false
        nama nullable: false
        uts nullable: false
        uas nullable: false
    }
}
