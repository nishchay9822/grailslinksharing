package linksharingapp

class ResourceRating {

    static belongsTo = [user: User , resource: Resource]
    Integer score

    static constraints = {
        user unique: 'resource'
        score nullable: true
    }
 }
