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


//
//    def search()
//    {         def result = Topic.findAllByNameLikeAndVisibility("%${params.search}%" , Topic.Visibility.PUBLIC)
//             if (result) {
//                render([topic: result.id,
//                        topicname: result.name] as JSON)
//            }
//             else {
//                render(status: 500)
//            }
//
//    }
//

    def searching() {


        if (params) {
            def criteria = Topic.createCriteria()
            def result = criteria.list() {
                if(Topic.cre)

                and {
                    ilike("name", "${params.search}%")



                       eq('visibility', Topic.Visibility.PUBLIC)

                             ('createdBy', session.user)
                         }

                }
            }
            render(view: '/search/searchview', model: [result: result])
        }
    }


//    def search()
//    {
//        for(String token: tokenize(description)) map.get(token).add(item)
//    }

//    def search()
//    {
//        def criteria = Resource.createCriteria()
//        params.user = session.user
//       List<Resource> resourceList = criteria.list {
//            if(params.user && params.user.isAdmin){
//
//            }else if(params.user){
//                'topic' {
//                    'subscriptions' {
//                        eq('user', params.user)
//                    }
//                }
//            }else{
//                'topic' {
//                    eq('visibility', Topic.Visibility.PUBLIC)
//                }
//            }
//
//            or{
//                ilike('description',"%${params.search}%")
//                'topic'{
//                    ilike('name',"%${params.search}%")
//                }
//            }
//        }
//        if(resourceList) {
//            render([topic: resourceList.topic.id, description: resourceList.description,
//                    topicname: resourceList.createdBy.userName] as JSON)
//        }

//    }


    def delete(Topic topic)
    {

        if(topic) {
            def topicc = Topic.findById(params.topicid)
//            List<Resource> res =  topicc.resources.toList()
//            res.delete()
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