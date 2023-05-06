//
//  ChatListViewController.swift
//  ChatList
//
//  Created by YUJIN KWON on 2023/05/06.
//

import UIKit

class ChatListViewController: UIViewController {

    let chatList: [Chat] = Chat.list
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }

}

extension ChatListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return chatList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ChatListCell.identifier, for: indexPath) as? ChatListCell else { return UICollectionViewCell() }
        let chat = chatList[indexPath.item]
        cell.configure(chat)
        return cell
    }
    
}

extension ChatListViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 100.0)
    }
}
