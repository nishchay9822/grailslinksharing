package linksharingapp

class Topic {
    String name
    Date dateCreated
    Date lastUpdated

    enum Visibility{
        PUBLIC,PRIVATE
        def convertValue(String val){
            if(val=='PUBLIC'){
                return Visibility.PUBLIC
            }else{
                return Visibility.PRIVATE
            }
        }
    }

    Visibility visibility;
    static belongsTo = [createdBy: User];
    static hasMany = [resources: Resource, subscriptions: Subscription]

    static constraints={
        name unique:true,nullable: false,blank: false
        visibility(nullable: true)
        createdBy nullable: false

    }
//    static mapping = {
//        createdBy lazy: true
//    }
}