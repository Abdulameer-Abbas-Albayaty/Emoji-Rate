# Em-Rate
If you want to put rating in your application and you bored from using stars, this repo will help you.

# Introduction
We used to use stars in rating anythings ,so for break the chain i tried to make a simple reusable application.
![Pension]
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
- Finnaly you get the value of rating from impelmented function:
```swift
func Rate(value: Int) {
     // here write your code
     print(value)
}
```
