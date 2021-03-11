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

    def save() {
        UserCO userCO = new UserCO()
        bindData(userCO, params, [exclude: ['photo', 'isActive', 'isAdmin']])
        if (userCO.validate()) {
//        if (userCO.password == userCO.confirmPassword) {
            User user = userService.register(userCO)

            if (user) {
                render(view: '/index')
            } else {
                render 'registration unsuccessful'
            }
//        }
//        }
//        else
//            print "password dont match"
        }
        render(view: '/index')

    }

//            render "SUCCESS FULLY REGISTERED!"





    def profile() {
        render(view: '/user/profile')
    }


    def sendInvitation(){
        params.user = session.user
        Map respMap = userService.sendInvitation(params)
//        respMap.respData.respMessageCode = message(code: respMap.respData.respMessageCode)

//        render respMap as JSON
    }
//        def topicCount=userService.getTopicCount(user)
//        def subscriptionCount=userService.getSubscriptionCount(user)
//        render(view: '/user/userDashboard' ,
//                model:[topicCountInfo: topicCount, subscriptionCountInfo: subscriptionCount , username:user])

//    def profile()
//    {
//        render(view: '/template/_userprofile')
//    }


}
