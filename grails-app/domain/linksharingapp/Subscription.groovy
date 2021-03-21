package linksharingapp

class Subscription {

    static belongsTo = [user:User, topic:Topic]
    enum Seriousness{
        CASUAL,SERIOUS,VERY_SERIOUS;
        def convertValue(String val){
            if(val=='CASUAL'){
                return Seriousness.CASUAL
            }else if (val=='SERIOUS'){
                return Seriousness.SERIOUS
            }else{
                return Seriousness.VERY_SERIOUS
            }
        }
    }
    Seriousness seriousness
    Date dateCreated
    Date lastUpdated
    static constraints = {
        user unique: 'topic'
    }

//    static mapping = {
//        topic lazy: true
//        user lazy: true
//    }
}