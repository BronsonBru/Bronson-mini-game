import UIKit

class SwipingController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    let pages = [
        Page(imageName: "panda", headerStrings: "Do you want to find out what your attachment type is?", captionStrings: "\n Cindy Hazan and Philip Shaver, psycholigists of University of Denvor. Created a questionare in 1985 to identify attachment styles. This App is based of their findings. They say 40% of relationships are between anxious and advoidant attachment types. I recommend reserching into what attachment type you are, if you would like to know more about attachment types and the roles they play in a relationship."),
        Page(imageName: "bunny", headerStrings: "Answer the questions by swiping left or right!", captionStrings: "\n Swipe left if your answer is No. Swipe right if the answer is yes. Questions are based off surveys I found online that work out your attachment type. The three main attachment types are secure, anxious and avoidant. They stem from childhood and the parenting they recieved. No attachment type is better than the other, it's about understanding your own. Which can help you understand those around you."),
        Page(imageName: "cuteGhosts", headerStrings: "Have fun learning who you are and what you look for in a partner!", captionStrings: "\n There are 20 questions, answer every for a calculated return statement of your attachment type. Knowing your own attachment type can help you understand your needs and that of a present/future partner. Understanding their attachment type is just as important as knowing your own. No one can ever know you more than you, it's impossible! Self love and self fulfillment are vital to a healthy mind.")
    ]

    private lazy var pageControl: UIPageControl = {
        let paging = UIPageControl()
        paging.currentPage = 0
        paging.numberOfPages = pages.count
        paging.currentPageIndicatorTintColor = .systemBlue
        paging.pageIndicatorTintColor = .gray
        return paging
    }()

    private func setupBottomControls() {
        let bottomControlsStackView = UIStackView(arrangedSubviews: [pageControl])
        bottomControlsStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomControlsStackView.distribution = .fillEqually

        view.addSubview(bottomControlsStackView)

        NSLayoutConstraint.activate([
            bottomControlsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomControlsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomControlsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomControlsStackView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let x = targetContentOffset.pointee.x
        pageControl.currentPage = Int(x / view.frame.width)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupBottomControls()
        collectionView?.backgroundColor = .white
        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "cellId")
//        title = L10n.Tabs.Tab2.title
        collectionView?.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! PageCell

        let page = pages[indexPath.item]
        cell.page = page
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
}
