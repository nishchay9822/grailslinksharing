package linksharingapp

import grails.converters.JSON

class ResourceController {
    ResourceService resourceService
    TopicService topicService
    def index() {}


    def createLinkResource(String url, String description, String topicSaved ){

        resourceService.createLinkResource(url,description,topicSaved,session.user.id)
        flash.messagelink="resource added"
        redirect(controller: 'user', action: 'dashboard')

    }

    def createFileResource(String filePath, String description, String topicSaved){
        resourceService.createFileResource(filePath,description,topicSaved,session.user.id)
        flash.messageresource="resource added"
        redirect(controller: 'user', action: 'dashboard')

    }

    def postview()
    {  def topicShow = Topic.findById(params.topicId)
        def recent=Topic.list(sort:'dateCreated',offset : 0 ,max: 4)
        def resource = Resource.findById(params.resource)
        def substopic = Subscription.findAllByUser(session.user).topic.name
        render(view: '/resource/viewpost' , model: [topicList: topicShow, resource: resource, trend: recent ,substopic: substopic]);
    }

    def delete(Resource resource)
    {

        if(resource) {
            def res = Resource.findById(params.resourceid)
            res.delete(flush: true)

        }
        def res=Resource.list()
        render(model:[resdescritpion: res.description , resourceid: res.id] as JSON)
    }
    }

