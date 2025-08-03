Pod::Spec.new do |s|
  # ―――  Spec Metadata 规范元数据 ――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "AWHOilSwift"
  s.version      = "1.0.2"
  s.summary      = "石油行业数据可视化工具库"
  s.description  = %{
    AWHOilSwift 是一个专注于石油行业数据可视化的 Swift 库，基于 DGCharts 扩展，提供图表交互、数据解析和自定义标记视图等功能，简化石油监测场景的开发流程。
  }
  s.homepage     = "https://github.com/zhangwen31/AWHOilSwift"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = { :type => "MIT", :file => "LICENSE" }

  # ――― Author Metadata  作者元数据―――――――――――――――――――――――――――――― #
  s.author             = { "王恒" => "1066026709@qq.com" }
  s.social_media_url   = "https://github.com/zhangwen31/AWHOilSwift"

  # ――― Platform sifics 平台配置――――――――――――――――――――――――――――――――――――――――― #
  s.platform     = :ios, "13.0"
  s.ios.deployment_target = "13.0"

  # ――― Source Location 源位置――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/zhangwen31/AWHOilSwift.git", :tag => "#{s.version}" }

  # ――― Source Code 源代码――――――――――――――――――――――――――――――――― #
  s.vendored_frameworks = "AWHOilSwift.framework"  # 确保框架包含 x86_64 和 arm64 架构

  # 关键配置：强制框架搜索路径和架构兼容
  # 在你的AWHOilSwift.podspec中添加
  s.pod_target_xcconfig = {
    'VALID_ARCHS' => 'arm64 arm64e x86_64',  # 明确支持的架构
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  s.user_target_xcconfig = {
    'VALID_ARCHS' => 'arm64 arm64e x86_64'
  }

  # ――― Project Linking 项目链接―――――――――――――――――――――――――――――― #
  s.frameworks = "UIKit", "Foundation", "CoreGraphics"

  # ――― Project Settings 项目设置―――――――――――――――――――――――――――― #
  s.requires_arc = true
  s.swift_version = "5.0"
  s.dependency "DGCharts", "5.1.0"  # 锁定具体版本，避免兼容问题
end
