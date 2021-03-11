package linksharingapp

import linksharingCO.TopicCO

class TopicController {
    TopicService topicService
    def index() {

        }

    def save(){
        params.createdBy=session.user
//         User user =  User?.get(createdByTd)
//        Topic topic = TopicCO.findByNameAndCreatedBy(name,session.user)
        if (topicCO.validate())
        {
            topicService.createTopic(params)
            flash.message=g.message(code: "topic.saved.updated")
            redirect(controller: 'user', action: 'dashboard')

        }
//        else {
//        Topic topic1 = new Topic(topicName: name ,User: createdBy, visibility: visibility)
//
//
//            if (topic1) {
//                if(topic1.validate()){
//
//                    if(topic1.save(flush:true))
//                        flash.message=g.message(code: "topic.saved.updated")
//                    else
//                        flash.error=g.message(code: "topic.not.saved.updated")
//                }
//                else{
//                    flash.error = g.message(code:"topic.save.update.error" )
//                }
//            } else{
//                flash.error = "user


        render(view: '/user/Dashboard')
    }
}
def save() {
    params.createdBy=session.userData
    Map respMap =topicService.createTopic(params)
    respMap.respData.respMessageCode = message(code: respMap.respData.respMessageCode)

    render respMap as JSON
}

def changeVisiblity(){
    Map respMap =topicService.changeVisibility(params)
    respMap.respData.respMessageCode = message(code: respMap.respData.respMessageCode)

    render respMap as JSON
}