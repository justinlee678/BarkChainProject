package barkchain

class User {
    String email
    String firstName
    String lastName
    String password
    Date dateRegistered
    Double balance
    int userId
    static constraints = {
        email nullable:true
        firstName nullable:true
        lastName nullable:true
        password nullable:true
        dateRegistered nullable:true
        balance nullable:true
        userId nullable:true
    }
}
