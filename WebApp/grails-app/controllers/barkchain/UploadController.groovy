package barkchain

import org.springframework.web.multipart.MultipartFile
import org.springframework.web.multipart.MultipartHttpServletRequest

class UploadController {

    def hashFileService
    def index() {
        redirect action:'uploadForm'
    }

    def uploadForm() {
        def hash
        def userFirstName = params.UserFirstName ?: null
        println(params)
        if(params.myFile) {
            if (request instanceof MultipartHttpServletRequest) {
                for (filename in request.getFileNames()) {
                    MultipartFile currentFile = request.getFile(filename)
                     hash=hashFileService.getHash(null,currentFile)
                }
            }
            Document doc = new Document()
            doc.hashValue = hash
            doc.documentTitle = params.docName
            doc.documentClassification = params.docClass
            doc.dateUploaded = new Date()
            doc.save()

        }
        println(hash)
        [userFirstName:userFirstName]
    }
}
