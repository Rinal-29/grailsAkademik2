package sistemakademik

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "dashboard", action: "index") {
            lang = "id"
        }

        "500"(view:'/error')
        "404"(view:'/notFound')

        "/login/$action?"(controller: "login") {
            lang = "id"
        }

        "/$lang?/login/$action"(controller: "login")
        "/$lang?/dashboard"(controller: "dashboard", action: "index")
        "/$lang?/mahasiswa/$action?"(controller: "mahasiswa")
        "/$lang?/dosen/$action?"(controller: "dosen")
        "/$lang?/matakuliah/$action?"(controller: "matakuliah")
        "/$lang?/ruangan/$action?"(controller: "ruangan")
        "/$lang?/jurusan/$action?"(controller: "jurusan")
        "/$lang?/penasehatAkademik/$action?"(controller: "penasehatAkademik")
        "/$lang?/jadwal/$action?"(controller: "jadwal")
        "/$lang?/nilai/$action?"(controller: "nilai")
        "/$lang?/krs/$action?"(controller: "krs")
        "/$lang?/tahumAkademik/$action?"(controller: "tahunAkademik")
        "/$lang?/user/$action?"(controller: "user")
    }
}
