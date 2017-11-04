package barkchain

class Document {

    String hashValue
    Date dateUploaded
    String documentTitle
    String documentClassification
    static constraints = {
        dateUploaded nullable:true
        hashValue nullable:true
    }
}
