package linksharingapp

class LinkResource {

        String url
        static belongsTo = [resource: Resource]
       static constraints = {
            url(url: true, nullable: false, blank: false)
        }

}
