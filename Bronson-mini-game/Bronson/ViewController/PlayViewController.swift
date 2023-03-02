import UIKit

protocol PlayViewControllerDelegate {
    func updatePoints()
}

class PlayViewController: UIViewController, PlayViewControllerDelegate {
    var points  = 0
    func updatePoints() {
        points += 1
        navigationItem.rightBarButtonItem?.title = "\(points)/20"
    }

    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
        button.setTitle("Play", for: .normal)
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 25
        button.setTitleColor(.white, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(button)
        configureBarButtonItems()
        button.addTarget(self,
                         action: #selector(didTapButton),
                         for: .touchUpInside)
    }

    
    
    func configureBarButtonItems() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close , target: self, action: #selector(dismissSelf))

    }
    @objc private func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
    }

    @objc func didTapButton() {
        let tabBarVC = UITabBarController()
        tabBarVC.delegate = self
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let vc1 = UINavigationController(rootViewController: MainViewController())
        let vc2 = UINavigationController(rootViewController: SwipingController(collectionViewLayout: layout))
        let vc3 = UINavigationController(rootViewController: AboutUsViewController())


        vc1.title = "Play"
        vc2.title = "Help"
        vc3.title = "About"


        tabBarVC.setViewControllers([vc1, vc2, vc3], animated: false)
        
        guard let items = tabBarVC.tabBar.items else {
            return
        }

        let images = ["play.circle", "questionmark.circle", "person.circle"]

        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }

        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }
}

class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Help"
    }
}

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "About"
    }
}

extension PlayViewController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title ?? "No title for selected view controller")")
    }
}
