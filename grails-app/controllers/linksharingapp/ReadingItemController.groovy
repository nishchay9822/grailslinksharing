package linksharingapp

import grails.converters.JSON

class ReadingItemController {
    ReadingItemService readingItemService

    def index() { }

    def read(Topic topic)
    {

        if(topic) {
            def tp = Topic.findById(params.topicid)
            def user= User.get(params.topicid.createdBy.id)
            def resource = Resource.findByTopic(tp)
            ReadingItem item = new ReadingItem(user: user, resource: resource )
            item.save(flush:true)
            user.addToReadingItems(item)
            resource.addToReadingItems(item)

        }
//        def topics=Topic.list()
//        render(model:[topicname: topics.name , topicid: topics.id] as JSON)
    }
}
