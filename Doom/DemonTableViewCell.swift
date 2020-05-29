//
//  DemonTableViewCell.swift
//  Doom
//
//  Created by Nick Ivanov on 29.05.2020.
//  Copyright © 2020 Nick Ivanov. All rights reserved.
//

import UIKit

class DemonTableViewCell: UITableViewCell {
    
    var demon: DemonProperty? {
        didSet {
            guard let demonItem = demon else { return }
            if let name = demonItem.name {
                profileImageView.image = UIImage(named: name)
                nameLabel.text = name
            }
        }
    }
    
    let profileImageView: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerRadius = 10
        img.clipsToBounds = true
        return img
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .red
        label.font = UIFont(name: "Courier-Bold", size: 17)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(profileImageView)
        self.contentView.addSubview(nameLabel)
        
        profileImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        profileImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        nameLabel.leadingAnchor.constraint(equalTo: self.profileImageView.trailingAnchor, constant: 30).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -30).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
