package linksharingapp

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap
import linksharingCO.TopicCO

@Transactional
class TopicService {

    def createTopic(Map map) {
//        ResponseData respData = null

        Topic topic1=Topic.findByCreatedByAndName(map.createdBy,map.name)
        if(topic1){
//            respData = new ResponseData(respCode: LSConstants.FAILURE_CODE ,respMessageCode: LSConstants.TOPIC_ALREADY_EXIST)
            print "already exists"
        }else{
            Topic topic = new Topic(map)

            Subscription subscription = new Subscription(user: topic.createdBy, topic: topic)
            topic.subscriptions=[subscription]
            topic.save(flush:true)
//            respData = new ResponseData(respCode: LSConstants.SUCCESS_CODE ,respMessageCode: LSConstants.TOPIC_CREATE_SUCCESS)
              print "topic added"
             }

//        Map respMap =  ["respData":respData]
//        respMap
    }

    Map changeVisibility(Map map){
//        ResponseData respData = null
        Topic topic = Topic.load(map.topicId)
        topic.visibility=map.topicVisibility
//        respData = new ResponseData(respCode: LSConstants.SUCCESS_CODE ,respMessageCode: LSConstants.VISIBILITY_CHANGE_SUCCESS)
//        Map respMap =  ["respData":respData]
//        respMap
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

    def serviceMethod() {

    }
}
