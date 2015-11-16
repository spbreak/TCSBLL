Pod::Spec.new do |s|
  s.name             = "TCSBLL"
  s.version          = "0.4.0"
  s.summary          = "算姓大师业务层."
  s.description      = <<-DESC
                        0.2.0:接入TCSDAL
                        0.3.0:进行使用TCSDAL代码
                        0.4.0:添加天干地支
                       DESC
  s.homepage         = "https://github.com/spbreak/TCSBLL"
  s.license          = 'MIT'
  s.author           = { "spbreak" => "527108411@qq.com" }
  s.source           = { :git => "https://github.com/spbreak/TCSBLL.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'TCSBLL' => ['Pod/Assets/*']
  }
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
    s.dependency 'FMDB','~>2.5'
end
