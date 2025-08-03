Pod::Spec.new do |s|
  s.name         = "AWHOilSwift"
  s.version      = "1.0.2"
  s.summary      = "石油行业数据可视化工具库"
  s.description  = "AWHOilSwift 是一个专注于石油行业数据可视化的 Swift 库，基于 DGCharts 扩展，提供图表交互、数据解析和自定义标记视图等功能，简化石油监测场景的开发流程。"
  s.homepage     = "https://github.com/zhangwen31/AWHOilSwift"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "王恒" => "1066026709@qq.com" }
  s.platform     = :ios, "13.0"
  s.ios.deployment_target = "13.0"
  s.source       = { :git => "https://github.com/zhangwen31/AWHOilSwift.git", :tag => "#{s.version}" }
  s.vendored_frameworks = ['AWHOilSwift.xcframework']
  s.source_files = 'AWHOilSwift.xcframework/Headers/*h'
  s.pod_target_xcconfig = {
    "ARCHS" => "$(ARCHS_STANDARD_64_BIT)",
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64"
  }
  s.frameworks = "UIKit", "Foundation", "CoreGraphics"
  s.requires_arc = true
  s.swift_version = "5.0"
  s.dependency "DGCharts", "~> 5.1.0"
end
