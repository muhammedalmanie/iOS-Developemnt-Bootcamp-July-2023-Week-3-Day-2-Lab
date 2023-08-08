import Foundation
import UIKit
import SnapKit

class MostPopular: UIView {
    let categories: Array<String> = [
        "U.S. Politics",
        "Tech Companies",
        "TV & Movies",
        "Recipes",
        "Travel",
        "Celebs",
        "Restaurants"
    ]
    
    var collectionView: UICollectionView = .init(
        frame: .zero,
        collectionViewLayout: UICollectionViewLayout()
    )
    
    init (){
        super.init(frame: .zero)
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 100, height: 50)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 4
        collectionView = .init(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        self.addSubview(collectionView)
        collectionView.snp.makeConstraints{
            $0.leading.top.trailing.bottom.equalTo(0)
        }
    }
    
    override init (frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

extension MostPopular: UICollectionViewDelegate, UICollectionViewDataSource{

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categories.count
    }

    // Data Source
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath)
        let label = UILabel()
        label.text = categories[indexPath.item]
        label.textAlignment = .center
        cell.addSubview(label)
        label.snp.makeConstraints{
            $0.leading.top.trailing.bottom.equalTo(cell)
        }
        cell.backgroundColor = .gray.withAlphaComponent(0.2)
        cell.layer.cornerRadius = 15
        return cell
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}
