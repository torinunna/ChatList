# ChatList

Fastcampus 왕초보를 위한 한 번에 끝내는 iOS 앱 개발 바이블 초격차 패키지 Online. 

## Part3-3. 채팅리스트


✅ UI: Storyboard

✅ CollectionView

✅ ChatListCell의 날짜 표시 -> dateFormatter 적용

```
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

// 2022-03-12 -> 3/12
```
✅ ChatList의 날짜별 내림차순 정렬 -> sorted

```
chatList = chatList.sorted(by: { chat1, chat2 in
  return chat1.date > chat2.date
})

// 3/13 -> 3/11 -> 3/2
 
```

## Preview

<img width="395" alt="Screenshot 2023-05-11 at 6 40 28 PM" src="https://github.com/torinunna/ChatList/assets/86116904/989f9fd5-25a7-4a89-84b7-7d44012c2c4f">
