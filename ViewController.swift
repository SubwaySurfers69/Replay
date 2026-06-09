import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // Add a "Hello World" label
        let label = UILabel()
        label.text = "Hello, World!"
        label.textColor = .black
        label.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        label.center = view.center
        
        view.addSubview(label)
    }
}
