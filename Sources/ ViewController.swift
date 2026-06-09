import UIKit
import ReplayKit

class ViewController: UIViewController {
    let recorder = RPScreenRecorder.shared()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 150, height: 50))
        button.setTitle("Start Recording", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(toggleRecording), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc func toggleRecording() {
        if recorder.isRecording {
            recorder.stopRecording { (preview, error) in
                // Handle the finished video
            }
        } else {
            recorder.startRecording { error in
                if let error = error { print("Error: \(error)") }
            }
        }
    }
}
