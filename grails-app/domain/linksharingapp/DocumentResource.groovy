package linksharingapp

class DocumentResource  {

    String filePath
    static constraints = {
        filePath nullable: false, blank: false
    }
}
