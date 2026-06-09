import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Create a window that fills the screen
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // Set the root view controller
        window?.rootViewController = ViewController()
        
        // Make it visible
        window?.makeKeyAndVisible()
        return true
    }
}
