package linksharingapp

class LinkResource {

        String url
        static constraints = {
            url(url: true, nullable: false, blank: false)
        }

}
