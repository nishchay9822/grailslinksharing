package linksharingapp

class ReadingItem {

    Boolean isRead
    static belongsTo = [user:User, resource:Resource]


    static constraint= {

         isRead nullable: true
    }

    }
