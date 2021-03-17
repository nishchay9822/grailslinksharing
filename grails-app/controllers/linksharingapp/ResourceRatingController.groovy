package linksharingapp

import grails.converters.JSON

class ResourceRatingController {

    def index() { }

    def rating()
    {
        print(params)
        if(params) {

            def user = session.user
            ResourceRating ratings = new ResourceRating(score: params.rate, user: user, resource: params.resource)
            ratings.save(flush: true, failOnError: true)
            def score = params.rate
           return score
        }

    }
}
