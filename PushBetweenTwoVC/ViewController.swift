import UIKit

class ViewController: UIViewController {
    @IBOutlet var button: UIButton!
    @IBOutlet var presentButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button.addTarget(self, action: #selector(goToNextViewController(_:)), for: .touchUpInside)
        presentButton.addTarget(self, action: #selector(goToFlyViewController(_:)), for: .touchUpInside)
        setupPushButton()
        setupPresentButton()
        
    }

    @objc func goToNextViewController(_ sender: UIButton){
        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "photoSB")
        navigationController?.pushViewController(secondViewController!, animated: true)
    }
    
    @objc func goToFlyViewController(_ sender: UIButton){
        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "fly")
        self.present(secondViewController!, animated: true, completion: nil)
    }
    
    
    func setupPushButton(){
        let layer = button.layer
        let red = UIColor(red: 100.0/255.0, green: 130.0/255.0, blue: 230.0/255.0, alpha: 1.0)
        layer.backgroundColor = red.cgColor
        layer.masksToBounds = true
        layer.cornerRadius = 15
        button.setTitleColor(.white, for: .normal)
    }
    
    func setupPresentButton(){
        let layer = presentButton.layer
        let red = UIColor(red: 237.0/255.0, green: 41.0/255.0, blue: 57.0/255.0, alpha: 1.0)
        layer.backgroundColor = red.cgColor
        layer.masksToBounds = true
        layer.cornerRadius = 15
        presentButton.setTitleColor(.white, for: .normal)
    }
}

