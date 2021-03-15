package linksharingapp

class LoginController {
    LoginService loginService

    def index() {}

    def loginuser() {

        def user = User.findWhere(userName: params['userName'], password: params['password'])
        if (user) {
            session.user = user
            println("\n\n---user logged in---\n\n")

            flash.messagesuccess = "Logged in as <b>$user.firstName $user.lastName ($user.email)</b>"
            redirect(controller: 'user', action: 'dashboard')

        } else {
            flash.messagefail = "Username or password dont match"

            redirect(controller: 'user', action: 'index')
        }
//        else {
//          if()
//        }
    }


    def logout() {
        session.invalidate()
        redirect(controller: 'login', action: 'loginuser')
    }
    def logincheck(String userName)
    {
        def user = User.findAllByUserName(userName)
        if(!user)
        {
            return false
        }
    }
}

