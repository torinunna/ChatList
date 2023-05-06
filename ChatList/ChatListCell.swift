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
    
    func configure(_ chat: Chat) {
        profileImageView.image = UIImage(named: chat.name)
        nameLabel.text = chat.name
        chatLabel.text = chat.chat
        dateLabel.text = chat.date
    }
    
}
