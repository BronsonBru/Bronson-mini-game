import UIKit

class AboutUsViewController: UIViewController {
    @IBOutlet weak var aboutUsTextDescription: UILabel!
    override func viewDidLoad() {        super.viewDidLoad()
        aboutUsTextDescription.text = "Created by Bronson Van Den Broeck \n Intern Software Engineeer at Glucode \n \n This app idea came from wanting to recreate the tinder swipe animations and make a game of it. I watched a Youtube video on attatchment types. Thought it would be creative to create an app that can tell people what their attachment type is. Love is hard to find and all. It might help knowing your attachment type or that of your loved ones."
        view.backgroundColor = .white
        title = L10n.Tabs.Tab3.title
    }
}
