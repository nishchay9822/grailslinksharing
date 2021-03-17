package linksharingapp

class SubscriptionController {
    SubscriptionService subscriptionService

    def index() {}

    def save(Subscription subscription) {
        print(params)
        def user= session.user
        String vis = subscription.seriousness.convertValue(params.seriousness)
        Topic topic = Topic?.get(params.topicid)
//        if (user && topic) {

            subscriptionService.saveSubscription(topic, user, vis)
            flash.messagesub="subscription added"




    }

    def getSubscribedTopics()
    {
        def user= session.user
        def topics=subscriptionService.subscribedTopics(user)
        render(view: '/template/_LinkSharing' , model:[topics: topics])
    }

}