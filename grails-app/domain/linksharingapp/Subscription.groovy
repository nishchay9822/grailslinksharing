package linksharingapp

class Subscription {

    static belongsTo = [user:User, topic:Topic]
    enum Seriousness{
        CASUAL,SERIOUS,VERY_SERIOUS;
    }
    Seriousness seriousness
    Date dateCreated
    Date lastUpdated
    static constraints = {
        user unique: 'topic'
    }
}