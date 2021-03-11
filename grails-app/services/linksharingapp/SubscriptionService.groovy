package linksharingapp

import grails.gorm.transactions.Transactional

@Transactional
class SubscriptionService {

    Subscription saveSubscription(Topic topic, User user) {
        if (user && topic) {
            Subscription subscription = new Subscription(topic: topic, user: user, seriousness:Constants.SERIOUSNESS)
            return saveSubscription(subscription,user)
        }
        return null
    }
    def serviceMethod() {

    }
}
