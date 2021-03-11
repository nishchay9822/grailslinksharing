package linksharingapp

class Topic {
    String name
    Date dateCreated
    Date lastUpdated

    enum Visibility {PUBLIC , PRIVATE}

    Visibility visibility;
     static belongsTo = [createdBy: User];
    static hasMany = [resources: Resource, subscriptions: Subscription]

static constraints={
//    name (unique: 'createdBy')
      name(nullable: true)
    visibility(nullable: true)

}
    }