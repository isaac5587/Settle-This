//MARK: This App works best with iPhone 11 Simulator
import UIKit
import Foundation
import SpriteKit

class ViewController: UIViewController {
    
 // variables for images on UI
    @IBOutlet weak var gameDecisionOutput: UITextView!
    
    @IBOutlet weak var PlayerOne: UIImageView!
    
    @IBOutlet weak var PlayerTwo: UIImageView!
    
    @IBOutlet weak var goOutletButton: UIButton!
    
    //Array for rock paper scissors icon on Ui
    
    var images = ["Token1", "Token2", "Token3",]
    var Token = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for image in images{
            Token.append(UIImage(named: image)!)
        }
    }
    
    
    @IBAction func actionFunction(_ sender: UIButton) {
        print("ButtonPressed")
        gameDecisionOutput.text = nil
        PlayerOne.image = UIImage(named: images.randomElement()!)
        PlayerTwo.image = UIImage(named: images.randomElement()!)
        animation()
        let secondsToDelay = 3.0
        DispatchQueue.main.asyncAfter(deadline: .now() + secondsToDelay) {
           print("This message is delayed")
            self.result()
    }
}
   
        func animation (){
        PlayerOne.animationImages = Token
        PlayerOne.animationDuration = 3
        PlayerOne.animationRepeatCount = 1
        PlayerOne.startAnimating()
        PlayerTwo.animationImages = Token
        PlayerTwo.animationDuration = 3
        PlayerTwo.animationRepeatCount = 1
        PlayerTwo.startAnimating()
            
        }
    
    func result (){
        
        if PlayerOne.image == #imageLiteral(resourceName: "Token1") && PlayerTwo.image == #imageLiteral(resourceName: "Token3") {
            gameDecisionOutput.text = "Player One is the Winner!"
        }
        
        else if PlayerOne.image == #imageLiteral(resourceName: "Token2") && PlayerTwo.image == #imageLiteral(resourceName: "Token1") {
            gameDecisionOutput.text = "Player One is the Winner!"
        }
        
        else if PlayerOne.image == #imageLiteral(resourceName: "Token3") && PlayerTwo.image == #imageLiteral(resourceName: "Token2") {
            gameDecisionOutput.text = "Player One is the Winner!"
        }
        
        if PlayerTwo.image == #imageLiteral(resourceName: "Token1") && PlayerOne.image == #imageLiteral(resourceName: "Token3") {
            gameDecisionOutput.text = "Player Two is the Winner !"
        }
        
        else if PlayerTwo.image == #imageLiteral(resourceName: "Token2") && PlayerOne.image == #imageLiteral(resourceName: "Token1") {
            gameDecisionOutput.text = "Player Two is the Winner !"
        }
        
        else if PlayerTwo.image == #imageLiteral(resourceName: "Token3") && PlayerOne.image == #imageLiteral(resourceName: "Token2") {
            gameDecisionOutput.text = "Player Two is the Winner !"
        }
        
        else if PlayerTwo.image == #imageLiteral(resourceName: "Token1") && PlayerOne.image == #imageLiteral(resourceName: "Token1") {
            gameDecisionOutput.text = "Damn this was a Tie. Try Again !"
        }
        
        else if PlayerTwo.image == #imageLiteral(resourceName: "Token2") && PlayerOne.image == #imageLiteral(resourceName: "Token2") {
            gameDecisionOutput.text = "Damn this was a Tie. Try Again !"
        }
        
        else if PlayerTwo.image == #imageLiteral(resourceName: "Token3") && PlayerOne.image == #imageLiteral(resourceName: "Token3") {
            gameDecisionOutput.text = "Damn this was a Tie. Try Again !"
        }
    }
}
