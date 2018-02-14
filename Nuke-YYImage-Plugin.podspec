#
# Be sure to run `pod lib lint Nuke-YYImage-Plugin.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Nuke-YYImage-Plugin'
  s.version          = '0.1.0'
  s.summary          = 'A Nuke YYImage Plugin.'
  s.swift_version       = "4.0"
  s.cocoapods_version   = ">= 1.3.1"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'A Nuke Plugin to use YYImage for decoding PNG, APNG, GIF and WEBP'

  s.homepage         = 'https://github.com/systembugtj/Nuke-YYImage-Plugin'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'systembugtj' => 'albert_lee@hotmail.com' }
  s.source           = { :git => 'https://github.com/systembugtj/Nuke-YYImage-Plugin.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/systembug'

  s.ios.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'

  s.source_files = 'Nuke-YYImage-Plugin/Classes/**/*'
  s.public_header_files = "Nuke-YYImage-Plugin/Classes/**/*.h"
  s.requires_arc = true
  s.module_name = 'NukeYYImagePlugin'
  # s.resource_bundles = {
  #   'Nuke-YYImage-Plugin' => ['Nuke-YYImage-Plugin/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'Nuke', '~> 6.0'
  s.dependency 'YYImage', '~> 1.0.4'
  s.dependency 'YYImage/WebP', '~> 1.0.4'
end
