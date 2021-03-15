package linksharingapp

import grails.gorm.transactions.Transactional

@Transactional
class ResourceService {

    def createFileResource(String filePath, String description, String topicSaved, long id){
        def user = User.findById(id)
        def topic = Topic.findByName(topicSaved)
//        DocumentResource resource= new DocumentResource()
        Resource res = new Resource( topic: topic, createdBy: user, description: description)
        res.save(flush: true,failonError:true)
        DocumentResource doc = new DocumentResource(filePath: filePath, resource: res).save(flush: true, failOnError: true)
        res.addToDocumentResources(doc).save(flush: true, failOnError: true)
        topic.addToResources(res).save(flush: true, failOnError: true)



//                resource.save(flush: true , failonError: true)



    }
    def createLinkResource(String url, String description, String topicSaved, long id) {
        def user = User.findById(id)
        def topic = Topic.findByName(topicSaved)
//        LinkResource resource = new LinkResource()
        Resource res = new Resource(createdBy: user, topic: topic, description: description)

        res.save(flush: true, failonError: true)
        LinkResource link = new LinkResource(url: url, resource: res).save(flush: true, failOnError: true)
        res.addToLinkResources(link).save(flush: true, failOnError: true)
        topic.addToResources(res).save(flush: true, failOnError: true)
    }
    def postshow(List topicShow)
    {

        def resource=Resource.findAllByTopic(topicShow)
        return resource
    }




    def serviceMethod() {

    }
}
