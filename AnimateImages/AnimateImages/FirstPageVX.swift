import UIKit

class FirstPageVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
            imageview.animationImages = imageset
            imageview.animationDuration = 20
            imageview.animationRepeatCount = 50
            imageview.startAnimating()

    }
    

    @IBAction func MaintoSinUp(_ sender: Any){
        performSegue(withIdentifier: "MaintoSignUp", sender: nil)
    }
    
    @IBAction func MaintoLogin(_ sender: Any){
        performSegue(withIdentifier: "MaintoLogin", sender: nil)
    }
    
    @IBAction func FirstoAbout(_ sender: Any){
        performSegue(withIdentifier: "FirsttoAbout", sender: nil)
    }
    
    var imageset: [UIImage] = [UIImage(named:"img1")!,
                               UIImage(named:"img2")!,]
    @IBOutlet var imageview: UIImageView!
    
    
}
