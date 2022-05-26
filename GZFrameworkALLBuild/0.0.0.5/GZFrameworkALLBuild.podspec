#
# Be sure to run `pod lib lint map-sdk-ios.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GZFrameworkALLBuild'
  s.version          = '0.0.0.5'
  s.summary          = '个人工程架构练习'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    个人工程架构练习
                       DESC

  s.homepage         = 'https://gitlab.huolala.cn/group-map-mobile/mobile/map-sdk-ios.git'
  # s.screenshots    = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gegaozhao' => 'gegaozhao126@gmail.com' }
  s.source           = { :git => 'git@github.com:GE-GAO-ZHAO/GZFrameworkALLBuild.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = {
    'ENABLE_BITCODE' => 'NO',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.subspec 'GZFrameworkOne' do |ssp|
      ssp.vendored_frameworks = 'GZFrameworkALLBuild/Classes/GZFrameworkOne/*.framework'
      ssp.dependency 'GZFrameworkALLBuild/GZFrameworkTwo'
  end

  s.subspec 'GZFrameworkTwo' do |ssp|
      ssp.vendored_frameworks = 'GZFrameworkALLBuild/Classes/GZFrameworkTwo/*.framework'
  end

end

