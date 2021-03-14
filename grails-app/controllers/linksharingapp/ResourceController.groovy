package linksharingapp

class ResourceController {
    ResourceService resourceService
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

}