package linksharingapp

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap
import linksharingCO.TopicCO
import linksharingapp.Topic
import linksharingapp.User
import  linksharingapp.Subscription

@Transactional
class TopicService {


    def createTopic(long id,String visibility,def params) {

        User user = User.findById(id)
        Topic topic = new Topic(name: params.name, visibility: visibility, createdBy: user)

        user.addToTopics(topic)
        topic.save(flush: true,failOnError: true)
        Subscription subscription = new Subscription(user: user, topic: topic , seriousness: Subscription.Seriousness.VERY_SERIOUS).save(flush:true, failOnError: true)
        topic.addToSubscriptions(subscription)
        user.addToSubscriptions(subscription)
        print(topic.properties);

//        user.save(flush:true,failOnError: true)
        //  print( user.errors.allErrors)
    }

//   def trendingTopic()
//   {
//       def topic = Topic.findAllByName()
////      def topic= Topic.list(sort: 'dateCreated', order: 'desc' , offset : 0 ,max: 3)
//       return topic
//
//   }
    def recentshare()
    {
        def recent=Topic.list(sort:'dateCreated',offset : 0 ,max: 4)
        return recent
    }

    def fetchSubscribedTopic(User user){
        List<Topic> topics = user.subscriptions*.topic.sort{
            Topic topic -> topic.resources.lastUpdated
        }
        return topics
    }

    def trendingTopics(User user){
        def criteria = Topic.createCriteria()

        List<Topic> topicList = criteria.listDistinct {
            or{
                'subscriptions'{
                    eq('user',user)
                }
                eq('visibility', Topic.Visibility.PUBLIC)
            }
        }
        topicList.sort {
            Topic topic -> -topic.resources.size()
        }
         return topicList
    }

//    def inbox()
//    {
//       def posts=
//    }
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




