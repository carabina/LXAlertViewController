Pod::Spec.new do |s|
s.name = 'LXAlertViewController'
s.version = '0.0.1'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.summary = '自已自作学习pod私有库,以alertview为例子'
s.homepage = 'https://github.com/gao520sun/LXAlertViewController'
s.authors = { '高中雷' => '406243283@qq.com' }
s.source = { :git => 'https://github.com/gao520sun/LXAlertViewController.git', :tag => s.version.to_s }
s.requires_arc = true
s.ios.deployment_target = '8.0'
s.source_files  = 'Classes/*.{h,m}'
end

