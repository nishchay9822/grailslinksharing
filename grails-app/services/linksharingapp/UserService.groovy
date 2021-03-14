package linksharingapp

import grails.gorm.transactions.Transactional
import linksharingCO.UserCO
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class UserService {


    def register(UserCO userCO) {
        User user = new User(firstName: userCO.firstName, lastName: userCO.lastName,userName: userCO.userName, email: userCO.email, password: userCO.password)
          if(user.validate()) {


              user.save(flush: true, failOnError: true)
          }
        else
          {
              print "unvalid data"
          }
             return user
        }

    def updateuserinfo(long id, def params)
    {
         User user=User.findById(id)
        user.userName = params.userName
        user.firstName = params.firstName
        user.lastName = params.lastName

        user.save(flush:true, failOnError:true)
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

//    List<Topic> getSubscribedTopics()
//    {
//        List<Topic> topicList= Subscription.createCriteria().list
//                {
//                    projections{
//                        property('topic')
//                    }
//                    eq('user.id', id)
//                }
//        return topicList
//    }


}
