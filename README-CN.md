 [PFKit](https://github.com/PFei-He/PFKitObjC)
===

[![License MIT](https://img.shields.io/badge/license-MIT-green.svg)](https://raw.githubusercontent.com/PFei-He/PFKitObjC/master/LICENSE)
[![Support](https://img.shields.io/badge/support-iOS%207%2B%20-blue.svg?style=flat)](https://www.apple.com/nl/ios/)
[![Cocoapods Compatible](https://img.shields.io/cocoapods/v/PFKitObjC.svg)](https://img.shields.io/cocoapods/v/PFKitObjC.svg)

PFKit是一款简易的iOS组件包。

项目仍在开发中，欢迎一起完善这个项目。

版本
---
0.0.8

类库结构
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

使用CocoaPods
---
```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '7.0'

target 'YourTarget' do
    pod 'PFKitObjC', '~> 0.0.8'
end
```

范例
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
`PFKit`提供了`Swift`的版本以便使用。([PFKitSwift](https://github.com/PFei-He/PFKitSwift))

许可证 LICENSE
---
`PFKit`使用 MIT 许可证，详情见 [LICENSE](https://raw.githubusercontent.com/PFei-He/PFKitObjC/master/LICENSE) 文件。
