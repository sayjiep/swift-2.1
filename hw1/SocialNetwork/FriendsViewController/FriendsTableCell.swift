//
//  FriendsTableCell.swift
//  SocialNetwork
//
//  Created by Алёночка on 12.12.2020.
//

import UIKit

class FriendsTableCell: UITableViewCell {

 
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    
    // первый вариант
//    extension UIView {
//
//        func addShadow(offset: CGSize, color: UIColor, radius: CGFloat, opacity: Float) {
//            layer.masksToBounds = false
//            layer.shadowOffset = offset
//            layer.shadowColor = color.cgColor
//            layer.shadowRadius = radius
//            layer.shadowOpacity = opacity
//
//            let backgroundCGColor = backgroundColor?.cgColor
//            backgroundColor = nil
//            layer.backgroundColor =  backgroundCGColor
//        }
//    }
//
    //второй вариант
    
//    @IBDesignable class ShadowView: UIView {
//        @IBInspectable var shadowColor: UIColor = .black {
//            didSet{
//                layer.shadowColor = shadowColor.cgColor
//            }
//        }
//        
//        @IBInspectable var shadowOpacity: Float = 0.5 {
//            didSet{
//                layer.shadowOpacity = shadowOpacity/10
//            }
//        }
//        @IBInspectable var shadowOffset: CGSize = .zero {
//            didSet{
//                layer.shadowOffset = shadowOffset
//            }
//        }
//
//        @IBInspectable var shadowRadius: CGFloat = 10 {
//            didSet{
//                layer.shadowRadius = shadowRadius
//            }
//        }
//    }
    
    
    func setData(name: String, city: String, image: UIImage) {
        nameLabel.text = name
        cityLabel.text = city
        imageLabel.image = image
    }
    
    
}
