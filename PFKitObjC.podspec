Pod::Spec.new do |s|
    s.name                    = 'PFKitObjC'
    s.version                 = '0.0.1'
    s.summary                 = '简易的iOS组件包。A simple iOS components.'
    s.homepage                = 'https://github.com/PFei-He/PFKitObjC'
    s.license                 = { :type => 'MIT', :file => 'LICENSE' }
    s.author                  = { 'PFei-He' => '498130877@qq.com' }
    s.platform                = :ios, '7.0'
    s.ios.deployment_target   = '7.0'
    s.source                  = { :git => 'https://github.com/PFei-He/PFKitObjC.git', :tag => s.version }
    s.source_files            = 'PFKit/{UIView}+PFKit.{h,m}', 'PFKit/PF{File,Model,QRCode}.{h,m}'
    s.public_header_files     = 'PFKit/{UIView}+PFObjC.h', 'PFKit/PF{File,Model,QRCode}.h', 'PFKit/PFKit.h'
    s.requires_arc            = true
end