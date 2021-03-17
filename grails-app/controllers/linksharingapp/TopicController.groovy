package linksharingapp

import grails.converters.JSON
import linksharingCO.TopicCO

class TopicController {
    TopicService topicService

    def index() {

    }

    def save(Topic topic) {
        //  controller="dashboard" action="addtopic"

            String vis = topic.visibility.convertValue(params.visibility)
            topicService.createTopic(session.user.id,vis,params);
            flash.messageontopiccreation = "topic created"
            redirect(controller: "user", action: 'dashboard')




    }
    def  topicshow()
    {
//
        def topicname = Topic.findById(params.tName)

        render(view: '/topic/topicshow' , model:[topicname:topicname])
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

//            def searchresult = Resource.findAllByDescriptionLike("%${params.search}%")
            def searchresult = Topic.findAllByNameLike("%${params.search}%")

            if (searchresult) {
                render([topic: searchresult.id,  description: searchresult.resources.description,
                        userName: searchresult.createdBy.userName] as JSON)
            } else {
                render(status: 500)
            }

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