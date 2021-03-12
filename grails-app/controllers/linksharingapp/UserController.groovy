package linksharingapp
import linksharingCO.UserCO
class UserController {
    UserService userService
    def index() {
//        userService.getSubscriptionCount()
//        userService.getTopicCount()
        render(view: '/index')
    }

    def dashboard()
    {
        render(view: '/user/Dashboard')
    }

    def save(UserCO userCO) {

        if (userCO.validate()) {
//        if (userCO.password == userCO.confirmPassword) {
            User user = userService.register(userCO)

            if (user) {
                render(view: '/index')
            } else {
                flash.messageregister= "Registration failed"
            }
            redirect(controller:"user" , action:"index")
//        }
//        }
//        else
//            print "password dont match"
        }
        render(view: '/index')

    }
    def updateDetails(){
             def user=session.user

            session.user=userService.updateuserinfo(user.id, params)
            println(user)
            println("\n\nvalues updated\n\n")
            flash.message = "Updated successfully. "
            redirect(action: 'dashboard')

//        else{
//            println("\n\nvalues not updated\n\n")
//            flash.error = "Something went wrong... Please try again."
//            redirect(action: 'profile')
//        }
    }
    def updatePassword(){
//        User user = User.findById(params.id)
                 def user=session.user
                userService.updatepassword(user.id,params)
                println("\n\nvalues updated\n\n")
                flash.message = "Updated successfully. Please Login again."
                redirect(action: 'dashboard')
            }
//            else{
//                println("\n\nvalues not updated\n\n")
//                flash.error = "Something went wrong... Please try again."
//                redirect(action: 'profile')
//            }
//        }
//        else{
//            println("\n\nvalues not updated\n\n")
//            flash.error = "Something went wrong... Please try again."
//            redirect(action: 'profile')
//        }
    def profile() {
        render(view: '/user/profile')
    }
    }








//
//    def sendInvitation(){
//        params.user = session.user
//        Map respMap = userService.sendInvitation(params)
////        respMap.respData.respMessageCode = message(code: respMap.respData.respMessageCode)

//        render respMap as JSON

//        def topicCount=userService.getTopicCount(user)
//        def subscriptionCount=userService.getSubscriptionCount(user)
//        render(view: '/user/userDashboard' ,
//                model:[topicCountInfo: topicCount, subscriptionCountInfo: subscriptionCount , username:user])

//    def profile()
//    {
//        render(view: '/template/_userprofile')
//    }



