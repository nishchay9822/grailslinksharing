package linksharingCO

import grails.validation.Validateable
import linksharingapp.User

class TopicCO implements Validateable {
    String name
    String visibility

    static constraints = {
        name unique: true ,nullable: false,blank: false
//        createdBy nullable: false
    }
}