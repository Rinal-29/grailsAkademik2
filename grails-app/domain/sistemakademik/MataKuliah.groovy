package sistemakademik

class MataKuliah {

    String namaMatkul
    Integer sks
    String semester

    static constraints = {
        namaMatkul nullable: false
        sks nullable: false
        semester nullable: false
    }
}
