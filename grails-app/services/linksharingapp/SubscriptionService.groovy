package linksharingapp

import grails.gorm.transactions.Transactional
import groovy.transform.CompileStatic

@CompileStatic
@Transactional
class SubscriptionService {

    def saveSubscription(Topic topic, User user,String seriousness) {

            Subscription subscription = new Subscription(user: user, topic: topic , seriousness: seriousness).save(flush:true, failOnError: true)
            topic.addToSubscriptions(subscription).save(flush:true)
            user.addToSubscriptions(subscription).save(flush:true)

    }
    def subscribedTopics(User user) {
        def topicList = Subscription.createCriteria().list
                {
                    and {
                        eq('topic.visibility', 'PUBLIC')
                        eq('user', user)
                    }
                } 
        return topicList
    }
    def serviceMethod() {

    }
}
