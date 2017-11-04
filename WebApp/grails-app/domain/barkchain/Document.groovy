package barkchain

class Document {

    String hashValue
    int userId
    Date dateUploaded
    static constraints = {
        dateUploaded nullable:true
        userId nullable:true
        hashValue nullable:true
    }
}
