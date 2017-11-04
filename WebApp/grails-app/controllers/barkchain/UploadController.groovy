package barkchain

class UploadController {

    def index() {
        redirect action:'uploadForm'
    }

    def uploadForm(){
        def userFirstName=params.UserFirstName?:null
        [userFirstName:userFirstName]
    }
}
