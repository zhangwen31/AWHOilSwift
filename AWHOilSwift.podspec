Pod::Spec.new do |s|
  # ―――  Spec Metadata 规范元数据 ――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "AWHOilSwift"
  s.version      = "1.0.2"
  s.summary      = "A short description of AWHOilSwift."
  s.description  = %{
  AWHOilSwift 是一个用于 [具体功能] 的 Swift 库，它提供了 [列举主要功能] 等功能，帮助开发者更高效地实现 [具体业务场景]。
  }
  s.homepage     = "https://github.com/zhangwen31/AWHOilSwift"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = { :type => "MIT", :file => "LICENSE" }

  # ――― Author Metadata  作者元数据―――――――――――――――――――――――――――――― #
  s.author             = { "王恒" => "1066026709@qq.com" }
  s.social_media_url   = "https://github.com/zhangwen31/AWHOilSwift.git"

  # ――― Platform sifics 平台sifics――――――――――――――――――――――――――――――――――――――――― #
  s.platform     = :ios, "13.0"
  s.ios.deployment_target = "13.0"

  # ――― Source Location 源位置――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/zhangwen31/AWHOilSwift.git", :tag => "#{s.version}" }

  # ――― Source Code 源代码――――――――――――――――――――――――――――――――― #
  s.vendored_frameworks = ['AWHOilSwift.framework']
  s.source_files = 'AWHOilSwift.framework/Headers/*h'

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'IPHONEOS_DEPLOYMENT_TARGET' => "13.0",
    'VALID_ARCHS' => 'x86_64 arm64'
  }

  # ――― Resources 资源――――――――――――――――――――――――――――――――――― #
  # 如果有资源文件，配置如下
  # s.resources = ['Resources/AWHOilSwiftLocalizable.bundle']

  # ――― Project Linking 项目链接―――――――――――――――――――――――――――――― #
  # 如果需要链接其他框架，可添加如下配置
  # s.framework  = "Foundation"

  # ――― Project Settings 项目设置―――――――――――――――――――――――――――― #
  s.requires_arc = true
  s.swift_version = '5.0'
  s.dependency 'DGCharts'
end
