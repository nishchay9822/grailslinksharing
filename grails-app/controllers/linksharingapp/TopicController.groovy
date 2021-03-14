package linksharingapp

import linksharingCO.TopicCO

class TopicController {
    TopicService topicService

    def index() {

    }

    def save(TopicCO topicCO) {
        //  controller="dashboard" action="addtopic"
        if (topicCO.validate()) {
print("validates")
            def user = session.user
            topicService.createTopic(user.id, topicCO);
            flash.messageontopiccreation = "topic created"
            redirect(controller: "user", action: 'dashboard')
        } else {
            render "error"
        }



    }
    def topicshow()
    {
        render(view: '/topic/topicshow')
    }

//    def showtopics()
//    {
//        List<Topic> topicshow = topicService.trendingtopic()
//       render(view: '/template/_trendingtopic' , model: [topiclist: topicshow])
//    }

//def save() {
//    params.createdBy=session.userData
//    Map respMap =topicService.createTopic(params)
//    respMap.respData.respMessageCode = message(code: respMap.respData.respMessageCode)
//
//    render respMap as JSON
//}
//
//def changeVisiblity(){
//    Map respMap =topicService.changeVisibility(params)
//    respMap.respData.respMessageCode = message(code: respMap.respData.respMessageCode)
//
//    render respMap as JSON

}