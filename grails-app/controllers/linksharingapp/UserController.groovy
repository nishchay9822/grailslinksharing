package linksharingapp
import linksharingCO.UserCO
class UserController {
    UserService userService
    TopicService topicService

    def index() {
//        userService.getSubscriptionCount()
//        userService.getTopicCount()
        render(view: '/index')
    }

    def userlist(String userName) {
        def username = User.findAllByUserName(userName)
        if (username) {
            return true
        }

    }

    def dashboard() {
        def topicShow = topicService.trendingTopic()
//        def topicsCount = userService.topicsCount(session.user.userName)
//        def subsCount  = userService.subscriptionsCount(session.user.userName)

        render(view: '/user/Dashboard', model: [topicList: topicShow])
    }

    def save(UserCO userCO) {

        if (userCO.validate()) {
//        if (userCO.password == userCO.confirmPassword) {
            User user = userService.register(userCO)

            if (user) {
                render(view: '/index')
            } else {
                flash.messageregister = "Registration failed"
            }
            redirect(controller: "user", action: "index")
//        }
//        }
//        else
//            print "password dont match"
        }
        render(view: '/index')

    }

    def updateDetails() {
        def user = session.user

        session.user = userService.updateuserinfo(user.id, params)
        println(user)
        println("\n\nvalues updated\n\n")
        flash.messageprofile = "Updated successfully. "
        redirect(action: 'dashboard')

//        else{
//            println("\n\nvalues not updated\n\n")
//            flash.error = "Something went wrong... Please try again."
//            redirect(action: 'profile')
//        }
    }

    def updatePassword() {
//        User user = User.findById(params.id)
        def user = session.user
        session.user = userService.updatepassword(user.id, params)
        println("\n\nvalues updated\n\n")
        flash.messagepassupdated = "Updated successfully. Please Login again."
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

//    def search(String search) {
//        def topic = Topic.findByName(search)
//        def resource = Resource.findByDescriptionLike(search)
//
//        if (topic) {
//            render([topic: topic] as JSON)
//        } else {
//            render(status: 500)
//        }
//    }
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



