import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Pokedex"

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "PokemonTableViewCell", bundle : nil), forCellReuseIdentifier: "PokemonCell")
    }

}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell =  tableView.dequeueReusableCell(withIdentifier: "PokemonCell", for: indexPath) as? PokemonTableViewCell{
            
            let pokeDex = pokemons[indexPath.row]
            cell.pokemonName.text = pokeDex.name
            cell.pokemonDesc.text = pokeDex.desc
            cell.pokemonPhoto.image = pokeDex.photo
            
            cell.pokemonPhoto.layer.cornerRadius = cell.pokemonPhoto.frame.height/2
            cell.pokemonPhoto.clipsToBounds = true
            return cell
            
        }else{
            return UITableViewCell()
        }
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailPokemonViewController(nibName: "DetailPokemonViewController", bundle: nil)
               
        detail.pokemon = pokemons[indexPath.row]
        self.navigationController?.pushViewController(detail, animated: true)
    }
}

