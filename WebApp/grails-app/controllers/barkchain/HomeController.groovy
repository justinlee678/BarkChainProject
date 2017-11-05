package barkchain

class HomeController {
def loginService
    def index() {
        def user=null
        println(params)
        if (params.containsKey('login')) {
            redirect action: "login"
        }
        if (params.containsKey('register')) {
            redirect action: "register"
        }
        if (params.containsKey('loginSuccess')){
            //logged in
            user=params['User']
        }

        [user:user]
    }

    def login() {
        //login
        println(params)
        def errorMsg=null
        if (params.containsKey('submit'))//if login is called
        {
            User user=User.findByEmail(params.email)
            if (user) {
                //User is found!
                if (user.password == params.password) {
                    params.put('firstName',user.firstName)
                    params.put('lastName',user.lastName)
                    params.put('email',user.email)
                    params.password="********"
                   redirect controller: 'upload', action: 'uploadForm', params:params
                }
                else{
                    println("Not found!")
                    errorMsg="User not found with entered Username and Password "
                }
            }
            else
            {
                println("Not found!")
                errorMsg="Wrong username and password combination "
            }
        }
        [errorMsg:errorMsg]
    }
    def register(){
        println (params)
        if (params.containsKey('register')) {
            //save the user
            User newUser=new User()
            newUser.balance = 100
            newUser.password = params.password
            newUser.firstName = params.firstName
            newUser.lastName = params.lastName
            newUser.email=params.email
            newUser.dateRegistered = new Date()
            newUser.save()
            redirect action: 'login'
        }

    }
    def about(){

    }
    def validate(){

    }
}
