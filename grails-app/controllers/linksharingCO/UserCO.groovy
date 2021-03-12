package linksharingCO
import linksharingapp.User
import grails.validation.Validateable
import org.apache.el.util.Validation

class UserCO implements Validateable{
    String firstName
    String lastName
    String userName
    String email
    String password
    String confirmPassword
//    Boolean isActive
//    Boolean isAdmin
//    Byte[] photo
    static constraints = {
        importFrom User

        email(nullable: false,unique: true,blank: false)
        firstName(nullable: false)
        lastName(nullable: false)
        userName(nullable: false, unique: true)
//        photo(nullable: true)
//        isActive(nullable: true)
//        isAdmin(nullable: true)
//        subscriptions(nullable: true)
//        resources(nullable: true)
//        resourceRatings(nullable: true)
//        readingItems(nullable: true)
//        topics(nullable: true)
        password blank: false, nullable: false
        confirmPassword blank: false, nullable: false , validator:{ val, obj->
        if(obj.password != obj.confirmPassword)
        return false
        }
    }
}

