package sistemakademik

class Jurusan {

    String nama
    String fakultas

    static constraints = {
        nama nullable: false
        fakultas nullable: false
    }
}
