import UIKit
import Darwin

// Main Module
extension ApiClient {
    func login(completion: (LoggedInUser) -> Void) {}
}

extension ApiClient {
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}

// API MODULE
class ApiClient {
    static let shared = ApiClient()
        
    func execute(_ : URLRequest, completion: (Data) -> Void) {}
}

// Login Module
struct LoggedInUser {}

class LoginViewController: UIViewController {
    var login: (((LoggedInUser) -> Void) -> Void)?
    
    func didTapLoginButton() {
        login? { user in
            //Show feed scree
        }
    }
}

// Feed Module
struct FeedItem {}

class FeedVService {
    var loadFeed: ((([FeedItem]) -> Void) -> Void)?
    
    func load() {
        loadFeed? { loadedItems in
            // Update UI
        }
    }
}
