# Ranger

[![CI Status](http://img.shields.io/travis/Hesham Salman/Ranger.svg?style=flat)](https://travis-ci.org/Hesham Salman/Ranger)
[![Version](https://img.shields.io/cocoapods/v/Ranger.svg?style=flat)](http://cocoapods.org/pods/Ranger)
[![License](https://img.shields.io/cocoapods/l/Ranger.svg?style=flat)](http://cocoapods.org/pods/Ranger)
[![Platform](https://img.shields.io/cocoapods/p/Ranger.svg?style=flat)](http://cocoapods.org/pods/Ranger)

## Usage

**Ranger** provides two new operators for reverse ranging:

1. `..>` which works as the inverse of `..<`; `max..>min` is equivalent to `min+1...max`
2. `>>>` which works the same as `...` but allows for the lhs to be smaller than rhs -- `max>>>min` is equivalent to `(min...max).reversed()`

So you may be asking, "Why would I want to use this instead of calling `reversed()`?"

Good question! Calling `reversed()` or `reverse()` is much slower than using a stride, as I'm doing in this framework. And the stride function is unusually long, especially for these commonplace operations. 

## Requirements
Swift 3

## Installation

Ranger is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Ranger"
```

## Author

Hesham Salman, hesham8@gmail.com

## License

Ranger is available under the MIT license. See the LICENSE file for more info.
