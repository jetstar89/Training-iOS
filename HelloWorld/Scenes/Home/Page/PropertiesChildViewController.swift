import UIKit

class PropertiesChildViewController: UIViewController {
    
    @IBOutlet weak var propertiesTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        propertiesTableView.dataSource = self
        
        let nib = UINib(nibName: "PropertiesViewCell", bundle: nil)
        propertiesTableView.register(nib, forCellReuseIdentifier: "propertiesCell")
    }
}

extension PropertiesChildViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "propertiesCell") as! PropertiesViewCell
        return cell
    }
    
}
