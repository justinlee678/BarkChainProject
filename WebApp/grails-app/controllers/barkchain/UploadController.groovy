package barkchain

import org.bitcoinj.core.InsufficientMoneyException
import org.bitcoinj.wallet.Wallet
import org.springframework.web.multipart.MultipartFile
import org.springframework.web.multipart.MultipartHttpServletRequest

class UploadController {

    def bitcoinBlockchainService
    def hashFileService
    def index() {
        redirect action:'uploadForm'
    }

    def uploadForm() {
        println(params)
        def hash
        def receipt
        Document doc = new Document()
        def errorMsg=null
        def user=['firstName':params.firstName,'lastName':params.lastName,'email':params.email]
        if(params.myFile) {
            if (request instanceof MultipartHttpServletRequest) {
                for (filename in request.getFileNames()) {
                    MultipartFile currentFile = request.getFile(filename)
                     hash=hashFileService.getHash(null,currentFile)
            doc.documentName=params.fileName
            doc.hashValue = hash
            doc.documentTitle = params.docName
            doc.documentClassification = params.docClass
            doc.dateUploaded = new Date()
            doc.email=params.email
            doc.firstName=params.firstName
            doc.lastName=params.lastName
                }
            }
            try {
                receipt = bitcoinBlockchainService.sendTransaction(hash)
            }
            catch (InsufficientMoneyException e){
                errorMsg='Error occured. You do not have enough money'
                return
            }
            catch (Wallet.DustySendRequested e){
                errorMsg='Error occured. Dust rule of the blockchain violated'
                return
            }
            doc.addedToBlockchainDate=receipt.blockChainDate
            doc.transactionId=receipt.transactionId
            doc.save()
            params.put('transactionId',receipt.transactionId)
            params.put('errorMsg',errorMsg)
            redirect action:'uploadResult', params:params
        }
        println(receipt)
        [user:user]
    }
    def uploadResult(){
        def user=['firstName':params.firstName,'lastName':params.lastName]
        Document doc=Document.findByTransactionId(params.transactionId)
        [user: user, doc:doc]
    }
}
