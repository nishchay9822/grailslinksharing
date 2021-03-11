package linksharingapp

import grails.gorm.transactions.Transactional
import linksharingCO.UserCO

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

//    def getTopicCount(User user){
//        def getTopicSet = user.topics
//        def topicCount = getTopicSet.size()
//        return topicCount
//    }
//
//    def getSubscriptionCount(User user){
//        def getSubscriptionSet = user.subscriptions
//        def subscriptionCount= getSubscriptionSet.size()
//        return subscriptionCount
//    }
}
