#
# Be sure to run `pod lib lint AWHOilSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name         = "AWHOilSwift"          # SDK 名称（必须唯一）
  s.version      = "1.0.2"                # 版本号（遵循语义化版本）
  s.summary      = "石油行业数据可视化工具库"  # 简短描述（140字以内）
  s.description  = <<-DESC                # 详细描述
                   AWHOilSwift 是基于 DGCharts 扩展的石油行业数据可视化库，
                   提供图表交互、数据解析等功能，简化石油监测场景开发。
                   DESC
  s.homepage     = "https://github.com/zhangwen31/AWHOilSwift"  # 项目主页（GitHub 地址）
  s.license      = { :type => "MIT", :file => "LICENSE" }  # 许可证（确保根目录有 LICENSE 文件）
  s.author       = { "王恒" => "1066026709@qq.com" }  # 作者信息
  s.platform     = :ios, "13.0"           # 支持的平台及最低版本
  s.source       = { :git => "https://github.com/zhangwen31/AWHOilSwift.git", :tag => "#{s.version}" }  # 代码仓库地址

  # 源代码路径：匹配实际目录结构（关键修正）
  # 假设代码存放在 "Pod/Classes" 下（pod lib create 默认结构）
  s.source_files = "AWHOilSwift/Classes/**/*.{h,swift,m}"  # 修正路径为 pod lib create 默认的 "Pod/Classes"
  
  # 公开头文件路径：需与 source_files 对应（仅 Objective-C 头文件需要，Swift 可省略）
  # 若有公开的 .h 文件，路径需匹配实际位置（例如）：
#  s.public_header_files = "AWHOilSwift/Classes/**/*.h"  # 修正为与 source_files 一致的根路径
  
  # 资源文件（可选，若有 xib、图片等资源）
  # s.resources = "Pod/Assets/**/*.{png,xib,json}"  # 路径需匹配实际资源目录
  
  # 依赖配置（确保 DGCharts 5.1.0 支持你的最低 iOS 版本）
  s.dependency "DGCharts", "~> 5.1.0"
  
  # 其他配置
  s.swift_version = "5.0"                 # Swift 版本（需与项目实际使用版本一致）
  s.requires_arc = true                   # 启用 ARC（默认 true，可省略）
  s.frameworks = "UIKit", "Foundation", "CoreGraphics"  # 补充常用系统框架
  
  # 架构配置：解决模拟器/真机架构冲突（关键优化）
  s.pod_target_xcconfig = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64",  # 模拟器排除真机架构
    "EXCLUDED_ARCHS[sdk=iphoneos*]" => "x86_64"         # 真机排除模拟器架构
  }
end
