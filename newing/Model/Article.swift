
import Foundation

struct ArticleResponse: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

struct Article: Codable {
    var documentId: String?
    let userId: String?
    var title: String?
    var source: Source?
    var publishedAt: String?
    let url: String?
    var urlToImage: String?
    var content: String?
    var userMemo: String?
    
    init( userId: String?, title: String?, source: String?, date: String?, url: String?, urlToImage: String?, content: String?) {
        self.documentId = nil
        self.userId = userId
        self.title = title
        self.source = Source(id: nil, name: source)
        self.publishedAt = date
        self.url = url
        self.urlToImage = urlToImage
        self.content = content
        self.userMemo = nil
    }
    
    
    enum CodingKeys: String, CodingKey {
        case documentId
        case userId
        case title
        case source
        case publishedAt
        case url
        case urlToImage
        case content
        case userMemo
    }
    
}

struct Source: Codable {
    let id: String?
    var name: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
    }
}

