# Em-Rate
If you want to put rating in your application and you bored from using stars, this repo will help you.
# Requirement
- Swift 4.2
- Xcode 10
# Introduction
We used to use stars in rating anythings ,so for break the chain i tried to make a simple reusable application.
# How to install Em-Rate ![link]("https://github.com/Abdulameer-Abbas-Albayaty/Em-Rate/tree/master/EmojiRating/EmojiRating")
- Go to link above and add the files to your project.
- Impelment RateDelegate protocol.
- Define valriable from EmojiRateView 
```swift
var emRate:EmojiRateView!
```
- In viewDidLoad() add this code : 
```swift
emRate = self.addRateView()
```
- For showing the EmojiRateView use:
```swift
emRate.showView()
```
- Finally you get the value of rating from impelmented function:
```swift
func Rate(value: Int) {
     // here write your code
     print(value)
}
```

<p align="center">
  <img src="https://github.com/Abdulameer-Abbas-Albayaty/Em-Rate/blob/master/Simulator%20Screen%20Shot%20-%20iPhone%208%20Plus%20-%202018-10-17%20at%2011.57.01.png" width="250" height="414">
</p>
