import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var stopPressed: UIButton!
    
    var timer: Timer?
    let yuriImages = ["yuri4","yuri5",  "yuri3", "yuri2", "yuri6","yuri1"]
    let quotesImages = [#imageLiteral(resourceName: "12"), #imageLiteral(resourceName: "7"), #imageLiteral(resourceName: "8"), #imageLiteral(resourceName: "11"), #imageLiteral(resourceName: "9"), #imageLiteral(resourceName: "10")]
   
    // test this is yuri app
    
    
    @IBAction func startPressed(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
    }
    
    @objc func updateUI() {
        let image1RandomValue = UIImage(named:self.yuriImages.randomElement()!)!
        let image2RandomValue =  self.quotesImages.randomElement()
        
        self.image1.image = image1RandomValue
        self.image2.image = image2RandomValue
    }
    
    @IBAction func stopButtonPressed(_ sender: Any) {
        timer?.invalidate()
    }
}
