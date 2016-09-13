- 制作私有pods库

1/ 升级至最新版本
$sudo gem install cocoa pods
// 完成注册 邮箱和GitHub用户名字
pod trunk register “邮箱” “密码” --verbose // 之后点击邮箱链接进行验证

2 查看注册信息如图
pod trunk me

3.创建 .spec文件
pod spec create xxx //xxx库名字

5 编辑文件 .spec文件
Pod::Spec.new do |s|
s.name = 'xxx' //库名字
s.version = '0.0.1'
s.license = 'MIT'
s.summary = '介绍自已库一些内容'
s.homepage = '主页'
s.authors = { '你的名字' => '邮箱' } //作者
s.source = { :git => '项目地址', :tag => s.version.to_s }
s.requires_arc = true
s.ios.deployment_target = '7.0'
s.source_files = '文件路径/*.{h,m}' //规则匹配自已写 （重要）
end

6.验证一下本地文件编写是否正确
pod lib lint xxx.podspec

7.把编辑好的文件推送到GitHub (库文件 和 .spec文件)(使用GitHub Desktop就可以) 并且打上标记
git tag '1.0.1'
git push --tags

8.把编写的文件告诉Cocoapods
pod trunk push xxx.podspec

9.查找命令
pod search xxx

