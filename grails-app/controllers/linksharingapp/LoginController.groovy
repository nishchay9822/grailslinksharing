package linksharingapp

class LoginController {
    LoginService loginService
    def groovyPageRenderer
    def mailService

    def index() {}

    def loginuser() {

        def user = User.findWhere(userName: params['userName'], password: params['password'])
        if (user) {
            session.user = user
            println("user logged in")

            flash.messagesuccess = "Logged in as $user.firstName  $user.lastName | ($user.email)"
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

    def logincheck(String userName) {
        def user = User.findAllByUserName(userName)
        if (!user) {
            return false
        }
    }

    def sendInvitation() {
        params.user = session.user
        loginService.sendInvite(params)
        print("sent")
        redirect(controller: 'user', action: 'dashboard')
    }

    def forgetPassword() {

        User user = User.findByUserNameOrEmail(params.userName, params.email)
        if (user) {
//            Date date =getCurrentUTCDate()
//            use(TimeCategory) {
//                date = date + 2.days
//            }
            String uniqueToken = UUID.randomUUID().toString()
            user.verificationToken = uniqueToken
            String url = "http://localhost:8091/login/validateLink?token=" +uniqueToken
            Map mailMap = [:]
            mailMap.userName = user.userName
            mailMap.forgetPasswordUrl = url
            mailService.sendMail
                    {
                        to params.email
                        subject 'Update your password'
//                        body(view: "/template/forgotpassmail", model: [mailMap])
//
                        html groovyPageRenderer.render(template:"/template/forgotpassmail", model:mailMap)
                    }
        } else {
            flash.notexist = "User does not exist"

        }
    }


    def validateLink(String token) {
        def user = User.findByVerificationToken(token)
        if (user) {

            user.verificationToken = null
            user.merge()
        } else {
            Print("link expired")
        }

    }

}

//    def forgetPassword(Map map) {
//        User user = User.findByUserNameOrEmail(map.userName, map.email)
//        if (user) {
//            Date date = getCurrentUTCDate()
//            use(TimeCategory) {
//                date = date + 2.days
//            }
//            String uniqueToken = UUID.randomUUID().toString()
//            user.verificationExpiry = date
//            user.verificationToken = uniqueToken
//            String url = "http://localhost:8080/login/validateLink?token=" + uniqueToken
//            Map mailMap = [:]
//            mailMap.fullName = user.fullName
//            mailMap.forgetPasswordUrl = url
//            println(user.email.split(","))
//            userService.sendMail(user.email.split(","), "Forget password link", "forget_password_mail", mailMap)
//
////            respData = new ResponseData(respCode: LSConstants.SUCCESS_CODE ,respMessageCode: LSConstants.FORGET_PASSWORD_SUCCESS)
////        }else{
////            respData = new ResponseData(respCode: LSConstants.FAILURE_CODE ,respMessageCode: LSConstants.USERNAME_NOT_EXIST)
////        }
////        Map respMap =  ["respData":respData]
////        respMap
//        }
//    }
//}


