#
# Be sure to run `pod lib lint ABC.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ABC'
  s.version          = '0.3.4'
  s.summary          = 'A short description of ABC.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/葛高召/ABC'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '葛高召' => 'gaozhao.ge@huolala.cn' }
  s.source           = { :git => 'git@github.com:GE-GAO-ZHAO/ComommentSpecBinarySDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  if s.version.to_s.include?'Binary' or ENV['IS_BINARY']
     puts '-------------------------------------------------------------------'
     puts 'Notice:ABC is binary now'
     puts '-------------------------------------------------------------------'
     s.prepare_command = '/bin/bash build_lib.sh'
     s.ios.vendored_frameworks= 'PodProducts/*.framework'
   else
     puts '-------------------------------------------------------------------'
     puts 'Notice:ABC is source code now'
     puts '-------------------------------------------------------------------'
     s.static_framework = false
     s.source_files = 'ABC/Classes/**/*'
   end

end
