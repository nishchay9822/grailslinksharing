package linksharingapp

class LoginController {
    LoginService loginService
    def groovyPageRenderer
    def mailService

    def index() {}


    def loginuser() {
        User user = User.findWhere(userName: params['userName'], password: params['password'])
        if (user && user.isActive) {
            session.user = user
            println("user logged in")

            flash.messagesuccess = "Logged in as $user.firstName  $user.lastName | ($user.email)"
            redirect(controller: 'user', action: 'dashboard')

        } else {
            flash.messagefail = "Username or password dont match TRY AGAIN"
            redirect(controller: 'user', action: 'index')
        }

    }


    def logout() {
        session.invalidate()
        flash.messagelogout="logout successful"
        redirect(controller: 'user', action: 'index')
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

            String uniqueToken = UUID.randomUUID()
            user.verificationToken = uniqueToken
            user.save(flush:true)
            String url = "http://localhost:8091/login/validateLink?token=" +uniqueToken
            Map mailMap = [:]
            mailMap.userName = user.userName
            mailMap.forgetPasswordUrl = url
            mailService.sendMail
                    {
                        to params.email
                        subject 'Update your password'

//
                        html groovyPageRenderer.render(template:"/template/forgotpassmail", model:mailMap)
                    }
            flash.messageforgot="Check your mail id to reset your password"
            redirect(controller: 'user' , action: 'index')
        } else {
            flash.notexist = "User does not exist"
            redirect(controller: 'login', action: 'loginuser')

        }
    }


    def validateLink(String token) {
        def user = User.findByVerificationToken(token)
        if (user) {

            user.verificationToken = null
            render(view: '/template/_forgotpassupdate', model:[user: user])
        } else {
            render("link expired")
        }
    }

    def changePass()
    {
            loginService.updatepass(params)
            println("\n\nvalues updated\n\n")
            flash.messagepassupdated = "Updated successfully. Please Login again."
            redirect(controller: 'user' , action:'dashboard')

    }

//    users list for admin page
    def users()
    {
        List<User> users = User.list(sort: 'dateCreated')
        render(view: '/user/adminview', model:[users: users])
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


