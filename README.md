[PFKit](https://github.com/PFei-He/PFKitObjC)
===

[![License MIT](https://img.shields.io/badge/license-MIT-green.svg)](https://raw.githubusercontent.com/PFei-He/PFKitObjC/master/LICENSE)
[![Support](https://img.shields.io/badge/support-iOS%207%2B%20-blue.svg?style=flat)](https://www.apple.com/nl/ios/)
[![Cocoapods Compatible](https://img.shields.io/cocoapods/v/PFKitObjC.svg)](https://img.shields.io/cocoapods/v/PFKitObjC.svg)
 
[中文介绍](https://github.com/PFei-He/PFKitObjC/blob/master/README-CN.md)

PFKit is a simple iOS components.

PFKit is still in development, welcome to improve the project together.

Version
---
0.0.8

Architecture
---
#### Catagory
* `NSString+PFKit`
* `UIView+PFKit`

#### Debug
* `PFDebug`

#### Framework
* `PFFile`
* `PFModel`
 
#### Tool
* `PFQRCode`
* `PFScanner`
 
#### Other
* `PFKit`

Installation with CocoaPods
---
```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '7.0'
 
target 'YourTarget' do
    pod 'PFKitObjC', '~> 0.0.8'
end
```

Example
---
#### PFQRCode
```objective-c
UIImage *image = [PFQRCode createWithString:@"1234567" codeSide:50];
```
 
#### PFModel
```objective-c
//JSON
{
 "name":"张三",
 "age":18,
 "sex":"男",
 "phone":13322332233,
 "address":[
 "广州",
 "江门"
 ],
 "height":175,
 "weight":70 
}
```
```objective-c
//Model
@interface Person : PFModel
 
@property (copy, nonatomic)     NSString        *name;
@property (strong, nonatomic)   NSNumber        *age;
@property (copy, nonatomic)     NSString        *sex;
@property (strong, nonatomic)   NSNumber        *phone;
@property (strong, nonatomic)   NSArray         *address;
@property (strong, nonatomic)   NSNumber        *height;
@property (strong, nonatomic)   NSNumber        *weight;
 
@end
```
```objective-c
//View Controller
Person *person = [Person modelWithJSON:JSONData];
NSLog(@"%@", person.name);
```
 
Swift
---
`PFKit`also provides`Swift`version. ([PFKitSwift](https://github.com/PFei-He/PFKitSwift))
 
LICENSE
---
`PFKit` is released under the MIT license, see [LICENSE](https://raw.githubusercontent.com/PFei-He/PFKitObjC/master/LICENSE) for details.
