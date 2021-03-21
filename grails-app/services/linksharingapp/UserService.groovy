package linksharingapp

import grails.gorm.transactions.Transactional
import linksharingCO.UserCO
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class UserService {


    def register(UserCO userCO) {
        User user = new User(firstName: userCO.firstName, lastName: userCO.lastName,userName: userCO.userName, email: userCO.email, password: userCO.password, isActive: true)
              user.save(flush: true, failOnError: true)
//        else
//          {
//              print "invalid data"
//          }
             return user
        }



    def updatepassword(long id, def params) {
        User user = User.findById(id)
        println(params.password)
        println(params.confirmPassword)
        if (params.password == params.confirmPassword) {
            user.password = params.password
            user.save(flush: true, failOnError: true)
            return user
        }
    }

//
//        def dashboard()
//        {
//            render(view: '/user/Dashboard', model: [topicCountInfo: topicCount, subscriptionCountInfo: subscriptioncount, username: user])
//        }



    def serviceMethod() {

    }



}
