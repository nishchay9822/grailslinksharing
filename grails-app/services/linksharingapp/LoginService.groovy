package linksharingapp

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class LoginService {


    def sendInvite(def params) {

        def topic = Topic.findByName(params.topic)
        String url = "http://localhost:8091/topic/topicshow?tName=" + topic.id
        params.topicUrl = url
//        params.sendersName = params.user.userName
//        params.topicName = topic.name
        params.subject = "Join the Topic using the  Invitation link"
        sendMail
                {
                    to params.email
                    subject params.subject
                    text params.topicUrl

                }
    }
    def updatepass(def params) {
         def user = User.findById(params.user)
        println(params.password)
        println(params.confirmPassword)
        if (params.password == params.confirmPassword) {
            user.password =params.password
                    user.save(flush:true)



        }
    }
//
//            respData = new ResponseData(respCode: LSConstants.SUCCESS_CODE ,respMessageCode: LSConstants.TOPIC_INVITATION_SENT_SUCCESS)
//            Map respMap =  ["respData":respData]
//            respMap





        def serviceMethod() {

        }
    }
