import UIKit

class HomeViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initViews()
    }
    
    func initViews(){
        let propertiesViewController = PropertiesViewController(nibName: "PropertiesViewController", bundle: nil)
        propertiesViewController.tabBarItem = UITabBarItem(title: "Properties", image: #imageLiteral(resourceName: "IcProperties"), selectedImage: #imageLiteral(resourceName: "IcPropertiesSeleted"))
        let propertyNav = UINavigationController(rootViewController: propertiesViewController)
        
        let clientViewController = ClientViewController(nibName: "ClientViewController", bundle: nil)
        clientViewController.tabBarItem = UITabBarItem(title: "Clients", image: #imageLiteral(resourceName: "IcClient"), selectedImage: #imageLiteral(resourceName: "IcClientSelected"))
        
        let profileViewController = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
        profileViewController.tabBarItem = UITabBarItem(title: "Properties", image: #imageLiteral(resourceName: "IcProfile"), selectedImage: #imageLiteral(resourceName: "IcProfileSelected"))
        
        let tabBarList = [propertyNav, clientViewController, profileViewController]
        
        self.viewControllers = tabBarList
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
