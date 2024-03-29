//
//  FooterCollectionReusableView.swift
//  Applifashion
//
//  Created by Dmitry Vinnik on 8/2/22.
//

import UIKit


class FooterCollectionReusableView: UICollectionReusableView {
    static let identifier = "FooterCollectionReusableView"
    


  
    // First column

    
    static let quickLinks: UILabel = {
        let quickLinks = createPlainLabel(text: "Quick Links", id: "quickLinksHeadingFooter", alignment: .left)
        quickLinks.font = UIFont.boldSystemFont(ofSize: 20.0)
        return quickLinks
    }()
    
    static let aboutUs: UILabel = {
        return createPlainLabel(text: "About Us", id: "aboutUsFooter", alignment: .left)
    }()
    
    static let faq: UILabel = {
        return createPlainLabel(text: "FAQ", id: "faqFooter", alignment: .left)
    }()
    
    static let help: UILabel = {
        return createPlainLabel(text: "Help", id: "helpFooter", alignment: .left)
    }()
    
    static let myAccount: UILabel = {
        return createPlainLabel(text: "My Account", id: "myAccountFooter", alignment: .left)
    }()
    
    static let blog: UILabel = {
        return createPlainLabel(text: "Blog", id: "blogFooter", alignment: .left)
    }()
    
    static let contacts: UILabel = {
        return createPlainLabel(text: "Contacts", id: "contactsFooter", alignment: .left)
    }()
    
    
    // Second column
    static let contactsHeading: UILabel = {
        let quickLinks = createPlainLabel(text: "Contacts", id: "contactsHeadingFooter", alignment: .right)
        quickLinks.font = UIFont.boldSystemFont(ofSize: 20.0)
        return quickLinks
    }()
    
    static let address: UILabel = {
        
        let label = UILabel()
        
        label.numberOfLines = 0;
        label.text = "155 Bovet Rd #600\nSan Mateo, CA 94402"
        label.lineBreakMode = NSLineBreakMode.byWordWrapping;
        label.textColor = .white
        
        return label

    }()
    
    static let addressFull: UIStackView = {
    
        
        let configuration = UIImage.SymbolConfiguration(pointSize: 35)
        let image = UIImage(systemName: "house", withConfiguration: configuration)?.withTintColor(.white, renderingMode: .alwaysOriginal)
        
        let imageView = UIImageView(image: image!)
        
        

        let stackview = UIStackView()
              stackview.axis = .horizontal
              stackview.spacing = 10
              stackview.translatesAutoresizingMaskIntoConstraints = false
              stackview.addArrangedSubview(imageView)
        stackview.addArrangedSubview(address)
        return stackview
        
        
    }()
    
    static let email: UILabel = {
        return createPlainLabel(text: "srd@applitools.com", id: "emailFooter", alignment: .right)

    }()
    
    static let emailFull: UIStackView = {
    
        
        let configuration = UIImage.SymbolConfiguration(pointSize: 40)
        let image = UIImage(systemName: "envelope", withConfiguration: configuration)?.withTintColor(.white, renderingMode: .alwaysOriginal)
        
        let imageView = UIImageView(image: image!)

        let stackview = UIStackView()
              stackview.axis = .horizontal
              stackview.spacing = 10
              stackview.translatesAutoresizingMaskIntoConstraints = false
              stackview.addArrangedSubview(imageView)
        stackview.addArrangedSubview(email)
        return stackview
        
        
    }()
    
    let leftColumn: UIStackView = {
        let stackview = UIStackView()
              stackview.axis = .vertical
              stackview.spacing = 10
              stackview.translatesAutoresizingMaskIntoConstraints = false
              stackview.addArrangedSubview(quickLinks)
        stackview.addArrangedSubview(aboutUs)
        stackview.addArrangedSubview(faq)
        stackview.addArrangedSubview(help)
        stackview.addArrangedSubview(myAccount)
        stackview.addArrangedSubview(blog)
        stackview.addArrangedSubview(contacts)

        return stackview
    }()
    
    let rightColumn: UIStackView = {
        
        let stackview = UIStackView()
        stackview.axis = .vertical
        
        stackview.spacing = UIStackView.spacingUseSystem
        stackview.isLayoutMarginsRelativeArrangement = true
        stackview.layoutMargins = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)

        stackview.addArrangedSubview(contactsHeading)
        stackview.addArrangedSubview(addressFull)
        stackview.addArrangedSubview(emailFull)
        stackview.addArrangedSubview(UIView())
        stackview.addArrangedSubview(UIView())
        stackview.addArrangedSubview(UIView())
        stackview.addArrangedSubview(UIView())
        stackview.addArrangedSubview(UIView())


        return stackview
    }()

    public func configure() {
        backgroundColor = UIColor(red: 25/255.0, green: 33/255.0, blue: 51/255.0, alpha: 1)
        let stackview = UIStackView()
        stackview.axis = .horizontal
        
        stackview.spacing = UIStackView.spacingUseSystem
        stackview.isLayoutMarginsRelativeArrangement = true
        stackview.layoutMargins = UIEdgeInsets(top: 10, left: 20, bottom: 20, right: 20)

        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.addArrangedSubview(leftColumn)
        stackview.addArrangedSubview(rightColumn)
        addSubview(stackview)
    }

    static func createPlainLabel(text: String, id: String, alignment: NSTextAlignment) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = .white
        label.accessibilityIdentifier = id
        return label
    }
}
