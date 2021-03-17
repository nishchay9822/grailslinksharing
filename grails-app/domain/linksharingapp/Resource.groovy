package linksharingapp

class Resource {


    String description
    Date dateCreated
    Date lastUpdated
    static belongsTo = [ createdBy : User, topic:Topic]
    static hasMany = [readingItems: ReadingItem, resourceRatings: ResourceRating, linkResources:LinkResource,documentResources:DocumentResource]


    static constraints = {
        description(nullable: false, maxSize: 255)
    }
    static mapping={
        table 'RESOURCE_INFO'
        description type: 'text'
    }

}