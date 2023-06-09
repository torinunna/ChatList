//
//  ChatListCell.swift
//  ChatList
//
//  Created by YUJIN KWON on 2023/05/06.
//

import UIKit

class ChatListCell: UICollectionViewCell {
    
    static let identifier = "ChatListCell"
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chatLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImageView.layer.cornerRadius = 10
    }
    
    func configure(_ chat: Chat) {
        profileImageView.image = UIImage(named: chat.name)
        nameLabel.text = chat.name
        chatLabel.text = chat.chat
        dateLabel.text = formattedDatestring(dateString: chat.date)
    }
    
    func formattedDatestring(dateString: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        if let date = dateFormatter.date(from: dateString) {
            dateFormatter.dateFormat = "M/d"
            return dateFormatter.string(from: date)
        } else {
            return ""
        }
    }
    
    
}
