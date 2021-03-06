//
//  RestaurantCallOutView.swift
//  AllTrailsLunchTime
//
//  Created by Mechelle Sieglitz on 12/8/21.
//

import UIKit

class RestaurantCallOutView: UIView {
    //MARK: Properties
    let restaurantImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .purple
        return imageView
    }()
    
    let restaurantName: UILabel = {
        let nameLabel = UILabel()
        nameLabel.font = UIFont.boldSystemFont(ofSize: 16)
        nameLabel.textColor = .darkGray
        return nameLabel
    }()
    
   let starImageView: UIImageView = {
        let imageView = UIImageView()
    imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let reviewNumberLabel: UILabel = {
        let label = UILabel()
        //TODO: Set up restaurant name
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        return label
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        return label
    }()
    
    //MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(restaurantImageView)
        restaurantImageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, paddingTop: 16, paddingLeft: 16, paddingBottom: 16, width: 68, height: 68)
    
        addSubview(restaurantName)
        restaurantName.anchor(top: restaurantImageView.topAnchor, left: restaurantImageView.rightAnchor, right: rightAnchor, paddingLeft: 12, paddingRight: 8, height: 20)
        
        let stack = UIStackView(arrangedSubviews: [priceLabel, subtitleLabel])
        addSubview(stack)
        stack.anchor(left: restaurantImageView.rightAnchor, bottom: restaurantImageView.bottomAnchor, paddingLeft: 12, height: 20)
        
        addSubview(starImageView)
        starImageView.anchor(top: restaurantName.bottomAnchor, left: restaurantImageView.rightAnchor, bottom: stack.topAnchor, paddingLeft: 8, width: 110, height: 40)
        
        addSubview(reviewNumberLabel)
        reviewNumberLabel.anchor(top: restaurantName.bottomAnchor, left: starImageView.rightAnchor, bottom: stack.topAnchor, paddingLeft: 8, height: 20)
        reviewNumberLabel.centerY(inView: starImageView)

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Actions
    func configure(restaurant: Restaurant) {
        restaurantName.text = restaurant.name
        
    }
}
