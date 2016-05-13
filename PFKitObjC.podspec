Pod::Spec.new do |s|
    s.name                    = 'PFKitObjC'
    s.version                 = '0.0.4'
    s.summary                 = '简易的iOS组件包。A simple iOS components.'
    s.homepage                = 'https://github.com/PFei-He/PFKitObjC'
    s.license                 = { :type => 'MIT', :file => 'LICENSE' }
    s.author                  = { 'PFei-He' => '498130877@qq.com' }
    s.platform                = :ios, '7.0'
    s.ios.deployment_target   = '7.0'
    s.source                  = { :git => 'https://github.com/PFei-He/PFKitObjC.git', :tag => s.version }
s.source_files            = 'PFKit/{NSString,UIView}+PFKit.{h,m}', 'PFKit/PF{Debug,File,Model,QRCode,Scanner}.{h,m}', 'PFKit/PF{Configure,Kit}.h'
    s.public_header_files     = 'PFKit/{NSString,UIView}+PFKit.h', 'PFKit/PF{Configure,Debug,File,Kit,Model,QRCode,Scanner}.h'
    s.requires_arc            = true
end