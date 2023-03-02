import UIKit

class OnboardingViewController: UIViewController {
    let introImageView: UIImageView = {
        let imageView = UIImageView(image: Asset.Bronson.cuteGhosts.image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    let descriptionTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()

    let descriptionSecondaryTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)])
        textView.attributedText = attributedText
        textView.tintColor = .gray
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(descriptionTextView)
        view.addSubview(descriptionSecondaryTextView)
        setupLayout()
    }

    private func setupLayout() {
        let topImageContainerView = UIView()
        view.addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false

        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true

        topImageContainerView.addSubview(introImageView)
        view.centerXAnchor.constraint(equalTo: introImageView.centerXAnchor).isActive = true
        introImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        introImageView.widthAnchor.constraint(equalToConstant: 350).isActive = true
        introImageView.heightAnchor.constraint(equalToConstant: 350).isActive = true

        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor, constant: 30).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 200).isActive = true

        descriptionSecondaryTextView.topAnchor.constraint(equalTo: descriptionTextView.topAnchor, constant: 200).isActive = true
        descriptionSecondaryTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        descriptionSecondaryTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        descriptionSecondaryTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
}

