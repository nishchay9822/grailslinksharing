package linksharingapp

class Resource {


    String description

    Date dateCreated
    Date lastUpdated
    static belongsTo = [ createdBy : User, topic:Topic]
    static hasMany = [readingItems: ReadingItem, resourceRatings: ResourceRating]
    static constraints = {
        description(nullable: false, maxSize: 255)
    }

}