package linksharingapp

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap
import linksharingCO.TopicCO
import linksharingapp.Topic
import linksharingapp.User
import  linksharingapp.Subscription

@Transactional
class TopicService {


    def createTopic(long id, TopicCO topicCO) {

        User user = User.findById(id)
        Topic topic = new Topic(name: topicCO.name, visibility: topicCO.visibility, createdBy: user)
        topic.save(flush: true,failOnError: true)

        Subscription subscription = new Subscription(user: user, topic: topic , seriousness: Subscription.Seriousness.SERIOUS).save(flush:true, failOnError: true)
        topic.addToSubscriptions(subscription)
        user.addToSubscriptions(subscription)
        print(topic.properties);
        user.addToTopics(topic)
        user.save(flush:true,failOnError: true)
        //  print( user.errors.allErrors)
    }

   def trendingTopic()
   {
      def topic= Topic.list(sort: 'dateCreated')
       print(topic)
       return topic

   }

    def topiclist()
    {

    }
//
//    Map changeVisibility(Map map){
////        ResponseData respData = null
//        Topic topic = Topic.load(map.topicId)
//        topic.visibility=map.topicVisibility
////        respData = new ResponseData(respCode: LSConstants.SUCCESS_CODE ,respMessageCode: LSConstants.VISIBILITY_CHANGE_SUCCESS)
////        Map respMap =  ["respData":respData]
////        respMap
    def serviceMethod() {

    }

}









//
//        def newtopic(long id,TopicCO topicCO) {
//
//             User user=User.findById(id)
//            Topic topic= new Topic(name: topicCO.name, visibility: topicCO.visibility,user: user)
////            if(topic.validate())
////            {
//                topic.save(flush: true, failOnError: true)
//////            }
////            else
////            {
////                print "not valid data"
////            }
//            user.addToTopics(topic)
//            user.save(flush: true)
//
//
//        }




