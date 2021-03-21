package linksharingapp

import grails.converters.JSON
import linksharingCO.TopicCO

class TopicController {
    TopicService topicService

    def index() {

    }

    def save(Topic topic) {
            String visibility = topic.visibility.convertValue(params.visibility)
            topicService.createTopic(session.user.id,visibility,params);
            flash.messageontopiccreation = "topic created"
            redirect(controller: "user", action: 'dashboard')
    }


    def  topicshow()
    {
        def topicname = Topic.findById(params.tName)
        def substopic = Subscription.findAllByUser(session.user).topic.name
        render(view: '/topic/topicshow' , model:[topicname:topicname, substopic: substopic])
    }



    def unique(String topicName)
    {
        def topic = Topic.findAllByName(topicName)
        if(topic)
        {
            return true
        }
    }



    def search()
    {
            def result = Topic.findAllByNameLike("%${params.search}%")

            if (result) {
                render([topic: result.id,  description: result.resources.description,
                        userName: result.createdBy.userName] as JSON)
            } else {
                render(status: 500)
            }

    }


    def delete(Topic topic)
    {

        if(topic) {
            def topicc = Topic.findById(params.topicid)
            topicc.delete(flush: true)
        }
        def topics=Topic.list()
        render(model:[topicname: topics.name , topicid: topics.id] as JSON)
    }
















//    def showtopics()
//    {
//        List<Topic> topicshow = topicService.trendingtopic()
//       render(view: '/template/_trendingtopic' , model: [topiclist: topicshow])
//    }


//def changeVisiblity(){
//    Map respMap =topicService.changeVisibility(params)
//    respMap.respData.respMessageCode = message(code: respMap.respData.respMessageCode)
//
//    render respMap as JSON

//    params="${[id: it.conference.id, role: it.role, status: it.status]}"
}