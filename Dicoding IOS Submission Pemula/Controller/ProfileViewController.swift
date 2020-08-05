import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileEmail: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let profile = profiles[0]
        profilePicture.image = profile.profilePhoto
        profileName.text = profile.profileName
        profileEmail.text = profile.profileEmail
        
    }
    


}
