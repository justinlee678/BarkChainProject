package barkchain

class Document {

    String firstName
    String lastName
    String email
    Date addedToBlockchainDate
    String transactionId
    String hashValue
    Date dateUploaded
    String documentTitle
    String documentClassification
    static constraints = {
        firstName nullable:true
        lastName nullable:true
        dateUploaded nullable:true
        hashValue nullable:true
        addedToBlockchainDate nullable:true
        transactionId nullable:true
    }
}
