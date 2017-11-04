package barkchain
import groovy.sql.Sql

class LoginService {

    def getLoginPassword(String userId) {
        String query = '''select password from user where userName==userId'''
        Sql sql = Sql.newInstance("jdbc:mysql://localhost:3306/BarkChain", "root","room211a", "com.mysql.jdbc.Driver")
        def password
        try {
            sql.eachRow(query, [userId:userId]) {
                password=it['password']
            }
        } catch (Exception e) {
            log.error(e.message)
        }
        sql.close()
        return password
    }
}
