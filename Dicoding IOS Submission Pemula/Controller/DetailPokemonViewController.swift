import UIKit

class DetailPokemonViewController: UIViewController {
    @IBOutlet weak var pokeName: UILabel!
    @IBOutlet weak var pokePhoto: UIImageView!
    @IBOutlet weak var pokeDesc: UILabel!
    
    var pokemon : Pokemon?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let result = pokemon {
            pokePhoto.image = result.photo
            pokeName.text = result.name
            pokeDesc.text = result.desc
        }
    }

}
