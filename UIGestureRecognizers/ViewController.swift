import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var purpleView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var blackView: UIView!
    
    var isHiddenPurpleView = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(doSomethingOnGesture(recognizer:)))        
        swipeGesture.direction = .left
        mainView.addGestureRecognizer(swipeGesture)
        
    }
    
    @objc
    func doSomethingOnGesture(recognizer: UIGestureRecognizer) {
        UIView.animate(withDuration: 0.4) {
            self.redView.transform = CGAffineTransform(scaleX: 4, y: 2)
            self.yellowView.transform = CGAffineTransform(scaleX: 4, y: 2)
            self.greenView.transform = CGAffineTransform(scaleX: 4, y: 2)
            self.purpleView.transform = CGAffineTransform(scaleX: 4, y: 2)
            self.blueView.transform = CGAffineTransform(scaleX: 4, y: 2)
            self.blackView.transform = CGAffineTransform(scaleX: 4, y: 2)
        }
    }
}

