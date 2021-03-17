package linksharingapp


class User {
    String firstName
    String lastName
    String userName
    String email
    String password
    Boolean isActive
    Boolean isAdmin
    Date dateCreated
    Date lastUpdated
    Byte[] photo
    String verificationToken
    static hasMany = [
            subscriptions: Subscription, resources: Resource, resourceRatings: ResourceRating,
            readingItems : ReadingItem, topics: Topic
    ]

    static constraints = {
        email(nullable: false,email: true,unique: true,blank: false)
        firstName(nullable: false)
        lastName(nullable: true)
        userName(nullable: false, unique: true)
        password(nullable: false)
        photo(nullable: true)
        subscriptions(nullable: true)
        resources(nullable: true)
        resourceRatings(nullable: true)
        readingItems(nullable: true)
        topics(nullable: true)
        isActive(nullable: true)
        isAdmin(nullable: true)
        verificationToken(nullable: true)
    }
static mapping={
    table 'USER_DATA'
}

}