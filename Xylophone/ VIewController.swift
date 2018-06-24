
import UIKit
import AVKit

class ViewController: UIViewController,AVAudioPlayerDelegate{
    var myFile = ["note1","note2","note3","note4","note5","note6","note7"]
var audioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        let sound = Bundle.main.url(forResource: myFile[sender.tag-1], withExtension: "wav")
        do{
            try audioPlayer = AVAudioPlayer(contentsOf: sound!)
        }catch { print(error)}
            audioPlayer.play()
    }
    
  

}

