package linksharingapp

class SubscriptionController {
    SubscriptionService subscriptionService
    def index() { }

    def save(Long userId, Long topicId) {

        User user = User?.get(userId)
        Topic topic = Topic?.get(topicId)
        if (user && topic) {

            if (subscriptionService.saveSubscription(topic, user)) {
//                flash.message = g.message(code: "subscription.saved")
            } else {
//                flash.error = g.message(code: "subscription.not.saved")
            }
        } else {
//            flash.error = g.message(code: "topic.user.not.set")
        }
        redirect(controller: 'user' , action: 'dashboard')
    }

}
