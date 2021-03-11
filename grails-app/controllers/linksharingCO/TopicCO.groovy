package linksharingCO

import grails.validation.Validateable

class TopicCO implements Validateable {
    String name
    String visibility

    static constraints = {
        name(nullable: true)
        visibility(nullable: true)
    }
}