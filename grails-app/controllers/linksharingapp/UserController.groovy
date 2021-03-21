package linksharingapp
import linksharingCO.UserCO

import javax.imageio.ImageIO
import java.awt.image.BufferedImage

class UserController {
    UserService userService
    TopicService topicService
    ResourceService resourceService

    def index() {

        def recentShare = topicService.recentshare()

        def recent = Topic.list(sort: 'dateCreated', offset: 0, max: 4)
        render(view: '/index', model: [recentList: recentShare, recent: recent])
    }

//    def userlist(String userName) {
//        def username = User.findAllByUserName(userName)
//        if (username) {
//            return true
//        }
//
//    }


    def emailcheck(String email) {
        def em = User.findAllByEmail(email)
        if (em) {
            return em
        }
    }


    def dashboard() {
        def user = User.get(session.user.id)
        def topics = Topic.findAllByCreatedBy(user, [sort: 'dateCreated', offset: 0, max: 4,])
        def subs = Subscription.findAllByUser(user, [sort: 'dateCreated', offset: 0, max: 2,]).reverse()
        def recent = Topic.list(sort: 'dateCreated', offset: 0, max: 4)
        def substopic = Subscription.findAllByUser(session.user).topic.name

        render(view: '/user/Dashboard', model: [topicList: topics, trend: recent, substopic: substopic, subList: subs])
    }


    def save(UserCO userCO) {
        if (userCO.validate()) {
//        if (userCO.password == userCO.confirmPassword) {
            User user = userService.register(userCO)
            if (user) {
                flash.messageregistered="Now login using credentials"
                render(controller: "user", action: "index")
            } else {
                flash.messageregister = "Registration failed"
                redirect(controller: "user", action: "index")
            }
        }
        render(view: '/index')
    }

    def updateDetails() {
        User user = User.findById(session.user.id)
        if (user) {
            user.userName = params.userName
            user.firstName = params.firstName
            user.lastName = params.lastName

            String a = "profilePic/${user.userName}.jpeg"
            user.photo = a
            session.user.photo = user.photo
            if (session.user.photo) {
                ByteArrayInputStream bis = new ByteArrayInputStream(params.photo.getBytes());
                BufferedImage bImage2 = ImageIO.read(bis);
                ImageIO.write(bImage2, "jpeg", new File("/home/nischay/Desktop/grailstest/linksharingapp/grails-app/assets/images/profilePic/${user.userName}.jpeg"));
            }

            user.save(flush: true, failOnError: true)
            session.user = user//userService.updateUserDetails(user.id, params, session.user)
            flash.messageUpdateDetails = "Updated successfully"
            redirect(action: 'dashboard')
        } else {
            flash.errorUpdateDetails = "Something went wrong... Please try again."
            redirect(action: 'dashboard')
        }
    }



    def updatePassword() {
//        User user = User.findById(params.id)
        def user = session.user
        session.user = userService.updatepassword(user.id, params)
        println("\n\nvalues updated\n\n")
        flash.messagepassupdated = "Updated successfully. Please Login again."
        redirect(action: 'dashboard')

    }


    def profile() {
        render(view: '/user/profile')
    }

    def activateaccount() {
              def user = User.get(params.userid)
              user.isActive = true
              user.save(flush:true)
          flash.meassgeactive="User activated"
          redirect(controller:"login" ,  action:"users")
    }



    def deactivateaccount()
    {
        def user = User.get(params.userid)
        user.isActive = false
        user.save(flush:true)
        flash.meassgedeactivate="User deactivated"
        redirect(controller:"login" ,  action:"users")
    }
}







