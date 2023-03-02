import UIKit

class PageCell: UICollectionViewCell {
    var page: Page? {
        didSet {
            guard let unwrappedPage = page else { return }
            introImageView.image = UIImage(named: unwrappedPage.imageName)

            let attributedText = NSAttributedString(string: unwrappedPage.headerStrings, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
            descriptionTextView.attributedText = attributedText
            descriptionTextView.textAlignment = .center

            let attributedSubText = NSAttributedString(string: unwrappedPage.captionStrings, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)])
            descriptionSecondaryTextView.attributedText = attributedSubText
            descriptionSecondaryTextView.textAlignment = .center
        }
    }

    let introImageView: UIImageView = {
        let imageView = UIImageView(image: Asset.Bronson.cuteGhosts.image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    let descriptionTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSAttributedString(string: "Can you spot the difference?", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()

    let descriptionSecondaryTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSAttributedString(string: "This is placeholder text, This is placeholder text, This is placeholder text, This is placeholder text, This is placeholder text", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)])
        textView.attributedText = attributedText
        textView.tintColor = .gray
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }

    private func setupLayout() {
        let topImageContainerView = UIView()
        addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false

        topImageContainerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true

        topImageContainerView.addSubview(introImageView)
        centerXAnchor.constraint(equalTo: introImageView.centerXAnchor).isActive = true
        introImageView.topAnchor.constraint(equalTo: topAnchor, constant: 100).isActive = true
        introImageView.widthAnchor.constraint(equalToConstant: 350).isActive = true
        introImageView.heightAnchor.constraint(equalToConstant: 350).isActive = true

        addSubview(descriptionTextView)
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor, constant: 30).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: leftAnchor, constant: 24).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: rightAnchor, constant: -24).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true

        addSubview(descriptionSecondaryTextView)
        descriptionSecondaryTextView.topAnchor.constraint(equalTo: descriptionTextView.topAnchor, constant: 50).isActive = true
        descriptionSecondaryTextView.leftAnchor.constraint(equalTo: leftAnchor, constant: 24).isActive = true
        descriptionSecondaryTextView.rightAnchor.constraint(equalTo: rightAnchor, constant: -24).isActive = true
        descriptionSecondaryTextView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
