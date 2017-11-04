import barkchain.User
class BootStrap {

    def init = { servletContext ->
        if (User.count()==0) {
            new User(userName:"mae04035",password: "123456",Date:new Date(),balance:0)

        }
    }
    def destroy = {
    }
}
