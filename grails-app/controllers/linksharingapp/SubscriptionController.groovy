package linksharingapp

class SubscriptionController {
    SubscriptionService subscriptionService

    def index() {}

    def save(Subscription subscription) {
        print(params)
        def user= session.user
        String sub = subscription.seriousness.convertValue(params.seriousness)
        Topic topic = Topic?.get(params.topicid)


            subscriptionService.saveSubscription(topic, user, sub)
            flash.messagesub="subscription added"

    }

    def getSubscribedTopics()
    {
        def user= session.user
        def topics=subscriptionService.subscribedTopics(user)
        render(view: '/template/_LinkSharing' , model:[topics: topics])
    }

}