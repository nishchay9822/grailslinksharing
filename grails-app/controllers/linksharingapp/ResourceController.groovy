package linksharingapp

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
        render(view: '/resource/viewpost' , model: [topicList: topicShow, resource: resource, trend: recent]);
    }
}