package barkchain

class HomeController {
def loginService
    def index() {
        User user=null
        println(params)
        if (params.containsKey('login')) {
            redirect action: "login"
        }
        if (params.containsKey('register')) {
            redirect action: "register"
        }
        if (params.containsKey('loginSuccess')){
            //logged in
            user=params.User
        }

        [user:user]
    }

    def login() {
        //login
        def errorMsg=null
        if (params.submit)//if login is called
        {
            User user=User.findByUserName(params.userName)
            if (user) {
                //User is found!
                if (user.password == params.password) {
                    params.put('loginSuccess',true)
                    params.put('User',user)
                   redirect controller: 'Home', action: 'index', params:params
                }
            }
            else
            {
                println("Not found!")
                errorMsg="User not found with entered Username and Password "
            }
        }
        [errorMsg:errorMsg]
    }
    def register(){
        if (params.containsKey('register')) {
            //save the user
            User newUser = null
            newUser.balance = 100
            newUser.password = params.password
            newUser.userName = params.userName
            newUser.firstName = params.firstName
            newUser.lastName = params.lastName
            newUser.dateRegistered = new Date()
            newUser.save()
            redirect action: 'login'
        }

    }
}
