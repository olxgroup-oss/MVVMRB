#
# Be sure to run `pod lib lint MVVMRB.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MVVMRB'
  s.version          = '0.2.1'
  s.summary          = 'MVVM+RB - Adaption of the MVVM design pattern in a better way.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'MVVM+RB is a design pattern framework.'

  s.homepage         = 'https://www.olx.in/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Parmod Jakhar' => 'parmod.jhakar@olx.com' }
  s.source           = { :git => 'https://github.com/olxgroup-oss/MVVMRB.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MVVMRB/Classes/**/*'

  s.swift_version = '5.0'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
end
