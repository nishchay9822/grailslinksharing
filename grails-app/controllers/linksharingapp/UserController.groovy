package linksharingapp
import linksharingCO.UserCO
class UserController {
    UserService userService
    TopicService topicService
    ResourceService resourceService

    def index() {

        def recentShare = topicService.recentshare()
//        def resourceShow = resourceService.postshow(topicShow)

        render(view: '/index', model:[recentList: recentShare])
    }

    def userlist(String userName) {
        def username = User.findAllByUserName(userName)
        if (username) {
            return true
        }

    }
    def emailcheck(String email)
    {
        def em = User.findAllByEmail(email)
        if(em) {
            return em
        }
    }

    def dashboard() {
        def topics =  Topic.findAllByCreatedBy(session.user,[sort: 'dateCreated' , offset: 0 , max: 4,])
//        def inboxView = topicServce.inbox()
        def recent=Topic.list(sort:'dateCreated',offset : 0 ,max: 4)

        render(view: '/user/Dashboard', model: [topicList: topics,trend: recent])
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

    def profile() {
        render(view: '/user/profile')
    }

//    def pass(String password){
//        def l = password.length()
//            String a = password.split("123456789@!#%&")
//        def l1 = a.length()
//                if(l==l1)
//                {
//                 render([password: password] as JSON)
//                }
//
//    }


//    def search(String search) {
//        def topic = Topief resource = Resource.findByDescriptionLike(search)
////
////        if (topic) {
////            render([topic: topic] as JSON)
////        } else {
////            render(status: 500)
////        }
////    }c.findByName(search)
//        d
}








//
//
//    def sendInvitation(){
//        params.user = session.user
//        Map respMap = userService.sendInvitation(params)
////        respMap.respData.respMessageCode = message(code: respMap.respData.respMessageCode)
//
//        render respMap as JSON
//
//        def topicCount=userService.getTopicCount(user)
//        def subscriptionCount=userService.getSubscriptionCount(user)
//        render(view: '/user/userDashboard' ,
//                model:[topicCountInfo: topicCount, subscriptionCountInfo: subscriptionCount , username:user])

//    def profile()
//    {
//        render(view: '/template/_userprofile')
//    }



