package linksharingapp

import grails.converters.JSON

class SubscriptionController {
    SubscriptionService subscriptionService

    def index() {}

    def save(Subscription subscription) {
        print(params)
        def user= User.get(session.user.id)
        String sub = subscription.seriousness.convertValue(params.seriousness)
        Topic topic = Topic?.get(params.topicid)


            subscriptionService.saveSubscription(topic, user, sub)
            flash.messagesub="subscription added"
            redirect(controller: 'user' , action:'dashboard')

    }


    def delete() {
        println(params)
        Topic topic = Topic.get(params.topicId)
        Subscription subs = Subscription.findByTopicAndUser(topic, session.user)
        if(subs){
            subs.delete(flush: true)
        }
//        if (topic){
//            println("params topic id "+params.topicId)
//            def tp = Topic.get(params.topicId)
//            tp.delete(flush: true)
//        }
//        def all_subs = Subscription.list()
//        render (model:[topicName:all_subs.topic.topicName, topicId:all_subs.topic.id] as JSON)
    }

    def getSubscribedTopics()
    {
        def user= session.user
        def topics=subscriptionService.subscribedTopics(user)
        render(view: '/template/_LinkSharing' , model:[topics: topics])
    }

}