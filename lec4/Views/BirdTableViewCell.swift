//
//  BirdTableViewCell.swift
//  lec4
//
//  Created by Vin Bui on 6/7/23.
//

import UIKit

class BirdTableViewCell: UITableViewCell {
    
    // MARK: - Properties (view)
    
    private let birdImage = UIImageView()
    private let birdNameLabel = UILabel()
    
    static let reuse = "BirdTableViewCellReuse"
    
    // MARK: - init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupBirdImage()
        setupNameLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - configure
    
    func configure(bird: Bird) {
        // Don't make private!
        birdImage.image = UIImage(named: bird.image)
        birdNameLabel.text = bird.name
    }
    
    // MARK: - Set Up Views
    
    private func setupBirdImage() {
        birdImage.contentMode = .scaleAspectFit
        
        // NOTE: we are using `contentView` here
        contentView.addSubview(birdImage)
        birdImage.translatesAutoresizingMaskIntoConstraints = false
                        
        // NOTE: we do not need to use `safeAreaLayoutGuide`
        NSLayoutConstraint.activate([
            birdImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            birdImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            birdImage.widthAnchor.constraint(equalToConstant: 64)
        ])
    }
    
    private func setupNameLabel() {
        birdNameLabel.textColor = .label
        birdNameLabel.font = .systemFont(ofSize: 20, weight: .medium)
        
        contentView.addSubview(birdNameLabel)
        birdNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            birdNameLabel.leadingAnchor.constraint(equalTo: birdImage.trailingAnchor, constant: 8),
            birdNameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            birdNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
    }
    
}
