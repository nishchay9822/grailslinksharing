package linksharingapp

class DocumentResource{

    String filePath
    static belongsTo =[resource: Resource]
    static constraints = {
        filePath nullable: false, blank: false
    }
}
